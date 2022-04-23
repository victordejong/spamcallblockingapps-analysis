package com.mixpanel.android.viewcrawler;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.viewcrawler.ViewVisitor;
import com.privacystar.core.data.model.BlockHistoryFields;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/DynamicEventTracker.class */
public class DynamicEventTracker implements ViewVisitor.OnEventListener {
    private static final int DEBOUNCE_TIME_MILLIS = 1000;
    private static String LOGTAG = "MixpanelAPI.DynamicEventTracker";
    private static final int MAX_PROPERTY_LENGTH = 128;
    private final Handler mHandler;
    private final MixpanelAPI mMixpanel;
    private final Map<Signature, UnsentEvent> mDebouncedEvents = new HashMap();
    private final Runnable mTask = new SendDebouncedTask();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/DynamicEventTracker$SendDebouncedTask.class */
    private final class SendDebouncedTask implements Runnable {
        private SendDebouncedTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            synchronized (DynamicEventTracker.this.mDebouncedEvents) {
                Iterator it = DynamicEventTracker.this.mDebouncedEvents.entrySet().iterator();
                while (it.hasNext()) {
                    UnsentEvent unsentEvent = (UnsentEvent) ((Map.Entry) it.next()).getValue();
                    if (currentTimeMillis - unsentEvent.timeSentMillis > 1000) {
                        DynamicEventTracker.this.mMixpanel.track(unsentEvent.eventName, unsentEvent.properties);
                        it.remove();
                    }
                }
                if (!DynamicEventTracker.this.mDebouncedEvents.isEmpty()) {
                    DynamicEventTracker.this.mHandler.postDelayed(this, 500L);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/DynamicEventTracker$Signature.class */
    private static class Signature {
        private final int mHashCode;

        public Signature(View view, String str) {
            this.mHashCode = view.hashCode() ^ str.hashCode();
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof Signature)) {
                return false;
            }
            if (this.mHashCode == obj.hashCode()) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return this.mHashCode;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/DynamicEventTracker$UnsentEvent.class */
    private static class UnsentEvent {
        public final String eventName;
        public final JSONObject properties;
        public final long timeSentMillis;

        public UnsentEvent(String str, JSONObject jSONObject, long j) {
            this.eventName = str;
            this.properties = jSONObject;
            this.timeSentMillis = j;
        }
    }

    public DynamicEventTracker(MixpanelAPI mixpanelAPI, Handler handler) {
        this.mMixpanel = mixpanelAPI;
        this.mHandler = handler;
    }

    private static String textPropertyFromView(View view) {
        String str;
        if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            str = null;
            if (text != null) {
                str = text.toString();
            }
        } else {
            str = null;
            if (view instanceof ViewGroup) {
                StringBuilder sb = new StringBuilder();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                boolean z = false;
                for (int i = 0; i < childCount && sb.length() < 128; i++) {
                    String textPropertyFromView = textPropertyFromView(viewGroup.getChildAt(i));
                    z = z;
                    if (textPropertyFromView != null) {
                        z = z;
                        if (textPropertyFromView.length() > 0) {
                            if (z) {
                                sb.append(", ");
                            }
                            sb.append(textPropertyFromView);
                            z = true;
                        }
                    }
                }
                if (sb.length() > 128) {
                    str = sb.substring(0, 128);
                } else {
                    str = null;
                    if (z) {
                        str = sb.toString();
                    }
                }
            }
        }
        return str;
    }

    @Override // com.mixpanel.android.viewcrawler.ViewVisitor.OnEventListener
    public void OnEvent(View view, String str, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$text", textPropertyFromView(view));
            jSONObject.put("$from_binding", true);
            jSONObject.put(BlockHistoryFields.TIME, currentTimeMillis);
        } catch (JSONException e) {
            MPLog.m310e(LOGTAG, "Can't format properties from view due to JSON issue", e);
        }
        if (z) {
            Signature signature = new Signature(view, str);
            UnsentEvent unsentEvent = new UnsentEvent(str, jSONObject, currentTimeMillis);
            synchronized (this.mDebouncedEvents) {
                boolean isEmpty = this.mDebouncedEvents.isEmpty();
                this.mDebouncedEvents.put(signature, unsentEvent);
                if (isEmpty) {
                    this.mHandler.postDelayed(this.mTask, 1000L);
                }
            }
            return;
        }
        this.mMixpanel.track(str, jSONObject);
    }
}
