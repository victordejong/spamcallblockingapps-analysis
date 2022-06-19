package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/BaseNativeAd.class */
public abstract class BaseNativeAd {

    /* renamed from: c */
    public NativeEventListener f5097c;

    /* renamed from: a */
    public final Set<String> f5095a = new HashSet();

    /* renamed from: b */
    public final Set<String> f5096b = new HashSet();

    /* renamed from: d */
    public boolean f5098d = false;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/BaseNativeAd$NativeEventListener.class */
    public interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    /* renamed from: a */
    public final void m3380a(Object obj) {
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    addClickTracker(jSONArray.getString(i));
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to parse click trackers.");
                }
            }
            return;
        }
        throw new ClassCastException("Expected click trackers of type JSONArray.");
    }

    public final void addClickTracker(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "clickTracker url is not allowed to be null")) {
            return;
        }
        this.f5096b.add(str);
    }

    public final void addImpressionTracker(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "impressionTracker url is not allowed to be null")) {
            return;
        }
        this.f5095a.add(str);
    }

    /* renamed from: b */
    public final void m3379b(Object obj) {
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    addImpressionTracker(jSONArray.getString(i));
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to parse impression trackers.");
                }
            }
            return;
        }
        throw new ClassCastException("Expected impression trackers of type JSONArray.");
    }

    /* renamed from: c */
    public Set<String> m3378c() {
        return new HashSet(this.f5096b);
    }

    public abstract void clear(View view);

    /* renamed from: d */
    public Set<String> m3377d() {
        return new HashSet(this.f5095a);
    }

    public abstract void destroy();

    /* renamed from: e */
    public final void m3376e() {
        NativeEventListener nativeEventListener = this.f5097c;
        if (nativeEventListener != null) {
            nativeEventListener.onAdClicked();
        }
    }

    /* renamed from: f */
    public final void m3375f() {
        NativeEventListener nativeEventListener = this.f5097c;
        if (nativeEventListener != null) {
            nativeEventListener.onAdImpressed();
        }
    }

    public void invalidate() {
        this.f5098d = true;
    }

    public boolean isInvalidated() {
        return this.f5098d;
    }

    public abstract void prepare(View view);

    public void setNativeEventListener(NativeEventListener nativeEventListener) {
        this.f5097c = nativeEventListener;
    }
}
