package com.facebook.appevents.p289j;

import android.os.Bundle;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10063h;
import com.facebook.appevents.C10097m;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.appevents.p286g.C10052c;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.j.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/f.class */
public final class View$OnClickListenerC10092f implements View.OnClickListener {

    /* renamed from: a */
    private static final String f33431a = "com.facebook.appevents.j.f";

    /* renamed from: c */
    private static final Set<Integer> f33432c = new HashSet();

    /* renamed from: b */
    private View.OnClickListener f33433b;

    /* renamed from: d */
    private WeakReference<View> f33434d;

    /* renamed from: e */
    private WeakReference<View> f33435e;

    /* renamed from: f */
    private String f33436f;

    private View$OnClickListenerC10092f(View view, View view2, String str) {
        this.f33433b = C9981f.m23695g(view);
        this.f33435e = new WeakReference<>(view);
        this.f33434d = new WeakReference<>(view2);
        this.f33436f = str.toLowerCase().replace("activity", "");
    }

    /* renamed from: a */
    static /* synthetic */ String m23421a(View$OnClickListenerC10092f view$OnClickListenerC10092f) {
        if (C10249a.m23108a(View$OnClickListenerC10092f.class)) {
            return null;
        }
        try {
            return view$OnClickListenerC10092f.f33436f;
        } catch (Throwable th) {
            C10249a.m23106a(th, View$OnClickListenerC10092f.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23422a(View view, View view2, String str) {
        if (C10249a.m23108a(View$OnClickListenerC10092f.class)) {
            return;
        }
        try {
            int hashCode = view.hashCode();
            Set<Integer> set = f33432c;
            if (set.contains(Integer.valueOf(hashCode))) {
                return;
            }
            C9981f.m23704a(view, new View$OnClickListenerC10092f(view, view2, str));
            set.add(Integer.valueOf(hashCode));
        } catch (Throwable th) {
            C10249a.m23106a(th, View$OnClickListenerC10092f.class);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23419a(String str, String str2, float[] fArr) {
        if (C10249a.m23108a(View$OnClickListenerC10092f.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(View$OnClickListenerC10092f.class)) {
                return;
            }
            if (!C10088d.m23430a(str)) {
                if (!C10088d.m23428b(str)) {
                    return;
                }
                m23418b(str, str2, fArr);
                return;
            }
            C10063h c10063h = new C10097m(C10181g.m23290i()).f33445a;
            if (C10249a.m23108a(c10063h)) {
                return;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putString("_is_suggested_event", "1");
                bundle.putString("_button_text", str2);
                c10063h.m23483a(str, bundle);
            } catch (Throwable th) {
                C10249a.m23106a(th, c10063h);
            }
        } catch (Throwable th2) {
            C10249a.m23106a(th2, View$OnClickListenerC10092f.class);
        }
    }

    /* renamed from: a */
    private static boolean m23420a(String str, final String str2) {
        if (C10249a.m23108a(View$OnClickListenerC10092f.class)) {
            return false;
        }
        try {
            final String m23438a = C10086b.m23438a(str);
            if (m23438a == null) {
                return false;
            }
            if (m23438a.equals("other")) {
                return true;
            }
            C10213ae.m23231a(new Runnable() { // from class: com.facebook.appevents.j.f.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        View$OnClickListenerC10092f.m23419a(m23438a, str2, new float[0]);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            C10249a.m23106a(th, View$OnClickListenerC10092f.class);
            return false;
        }
    }

    /* renamed from: b */
    private static void m23418b(String str, String str2, float[] fArr) {
        if (C10249a.m23108a(View$OnClickListenerC10092f.class)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            try {
                bundle.putString("event_name", str);
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb = new StringBuilder();
                for (float f : fArr) {
                    sb.append(f);
                    sb.append(",");
                }
                jSONObject.put("dense", sb.toString());
                jSONObject.put("button_text", str2);
                bundle.putString("metadata", jSONObject.toString());
                GraphRequest m23799a = GraphRequest.m23799a((AccessToken) null, String.format(Locale.US, "%s/suggested_events", C10181g.m23286m()), (JSONObject) null, (GraphRequest.AbstractC9933b) null);
                m23799a.f33078d = bundle;
                GraphRequest.m23796a(m23799a);
            } catch (JSONException e) {
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, View$OnClickListenerC10092f.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            View.OnClickListener onClickListener = this.f33433b;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            if (C10249a.m23108a(this)) {
                return;
            }
            View view2 = this.f33434d.get();
            View view3 = this.f33435e.get();
            if (view2 == null || view3 == null) {
                return;
            }
            try {
                final String m23434b = C10087c.m23434b(view3);
                final String m23439a = C10086b.m23439a(view3, m23434b);
                if (m23439a == null || m23420a(m23439a, m23434b)) {
                    return;
                }
                final JSONObject jSONObject = new JSONObject();
                jSONObject.put("view", C10087c.m23435a(view2, view3));
                jSONObject.put("screenname", this.f33436f);
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    C10213ae.m23231a(new Runnable() { // from class: com.facebook.appevents.j.f.2
                        /* JADX WARN: Type inference failed for: r1v6, types: [float[], float[][]] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            String[] m23520a;
                            if (C10249a.m23108a(this)) {
                                return;
                            }
                            try {
                                String lowerCase = C10213ae.m23190f(C10181g.m23290i()).toLowerCase();
                                float[] m23447a = C10085a.m23447a(jSONObject, lowerCase);
                                String m23450a = C10085a.m23450a(m23434b, View$OnClickListenerC10092f.m23421a(View$OnClickListenerC10092f.this), lowerCase);
                                if (m23447a == null || (m23520a = C10052c.m23520a(C10052c.EnumC10057a.MTML_APP_EVENT_PREDICTION, new float[]{m23447a}, new String[]{m23450a})) == null) {
                                    return;
                                }
                                String str = m23520a[0];
                                C10086b.m23437a(m23439a, str);
                                if (str.equals("other")) {
                                    return;
                                }
                                View$OnClickListenerC10092f.m23419a(str, m23434b, m23447a);
                            } catch (Exception e) {
                            } catch (Throwable th) {
                                C10249a.m23106a(th, this);
                            }
                        }
                    });
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            } catch (Exception e) {
            }
        } catch (Throwable th2) {
            C10249a.m23106a(th2, this);
        }
    }
}
