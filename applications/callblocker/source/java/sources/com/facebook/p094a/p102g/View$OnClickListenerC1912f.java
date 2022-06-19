package com.facebook.p094a.p102g;

import android.os.Bundle;
import android.view.View;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.internal.C2079x;
import com.facebook.p094a.C1927m;
import com.facebook.p094a.p096b.p097a.C1829f;
import com.facebook.p094a.p100e.C1891b;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.g.f */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g/f.class */
public final class View$OnClickListenerC1912f implements View.OnClickListener {

    /* renamed from: a */
    private static final String f5773a = View$OnClickListenerC1912f.class.getCanonicalName();

    /* renamed from: c */
    private static final Set<Integer> f5774c = new HashSet();

    /* renamed from: b */
    private View.OnClickListener f5775b;

    /* renamed from: d */
    private WeakReference<View> f5776d;

    /* renamed from: e */
    private WeakReference<View> f5777e;

    /* renamed from: f */
    private String f5778f;

    private View$OnClickListenerC1912f(View view, View view2, String str) {
        this.f5775b = C1829f.m16168g(view);
        this.f5777e = new WeakReference<>(view);
        this.f5776d = new WeakReference<>(view2);
        this.f5778f = str.toLowerCase().replace("activity", "");
    }

    /* renamed from: a */
    private void m15892a() {
        View view = this.f5776d.get();
        View view2 = this.f5777e.get();
        if (view == null || view2 == null) {
            return;
        }
        try {
            String m15911a = C1907b.m15911a(view2);
            if (m15911a == null) {
                return;
            }
            String m16170e = C1829f.m16170e(view2);
            if (m15889a(m15911a, m16170e)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("view", C1908c.m15907a(view, view2));
            jSONObject.put("screenname", this.f5778f);
            m15888a(m15911a, m16170e, jSONObject);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m15891a(View view, View view2, String str) {
        int hashCode = view.hashCode();
        if (!f5774c.contains(Integer.valueOf(hashCode))) {
            C1829f.m16177a(view, new View$OnClickListenerC1912f(view, view2, str));
            f5774c.add(Integer.valueOf(hashCode));
        }
    }

    /* renamed from: a */
    private void m15888a(final String str, final String str2, final JSONObject jSONObject) {
        C2079x.m15473a(new Runnable() { // from class: com.facebook.a.g.f.2
            @Override // java.lang.Runnable
            public void run() {
                String m15974a;
                try {
                    String lowerCase = C2079x.m15429g(C2095j.m15360h()).toLowerCase();
                    float[] m15920a = C1906a.m15920a(jSONObject, lowerCase);
                    String m15923a = C1906a.m15923a(str2, View$OnClickListenerC1912f.this.f5778f, lowerCase);
                    if (m15920a == null || (m15974a = C1891b.m15974a("SUGGEST_EVENT", m15920a, m15923a)) == null) {
                        return;
                    }
                    C1907b.m15909a(str, m15974a);
                    if (m15974a.equals("other")) {
                        return;
                    }
                    View$OnClickListenerC1912f.m15886b(m15974a, str2, m15920a);
                } catch (Exception e) {
                }
            }
        });
    }

    /* renamed from: a */
    private static boolean m15889a(String str, final String str2) {
        boolean z;
        final String m15910a = C1907b.m15910a(str);
        if (m15910a == null) {
            z = false;
        } else {
            if (!m15910a.equals("other")) {
                C2079x.m15473a(new Runnable() { // from class: com.facebook.a.g.f.1
                    @Override // java.lang.Runnable
                    public void run() {
                        View$OnClickListenerC1912f.m15886b(m15910a, str2, new float[0]);
                    }
                });
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static void m15886b(String str, String str2, float[] fArr) {
        if (C1909d.m15903a(str)) {
            new C1927m(C2095j.m15360h()).m15856a(str, str2);
        } else if (!C1909d.m15901b(str)) {
        } else {
            m15885c(str, str2, fArr);
        }
    }

    /* renamed from: c */
    private static void m15885c(String str, String str2, float[] fArr) {
        Bundle bundle = new Bundle();
        try {
            bundle.putString("event_name", str);
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb = new StringBuilder();
            for (float f : fArr) {
                sb.append(f).append(",");
            }
            jSONObject.put("dense", sb.toString());
            jSONObject.put("button_text", str2);
            bundle.putString("metadata", jSONObject.toString());
            C2102k m15337a = C2102k.m15337a((C1803a) null, String.format(Locale.US, "%s/suggested_events", C2095j.m15356l()), (JSONObject) null, (C2102k.AbstractC2108b) null);
            m15337a.m15341a(bundle);
            m15337a.m15293i();
        } catch (JSONException e) {
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f5775b != null) {
            this.f5775b.onClick(view);
        }
        m15892a();
    }
}
