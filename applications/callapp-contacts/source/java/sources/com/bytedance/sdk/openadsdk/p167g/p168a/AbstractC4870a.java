package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4879g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/a.class */
public abstract class AbstractC4870a {

    /* renamed from: a */
    protected Context f17810a;

    /* renamed from: b */
    protected AbstractC4891m f17811b;

    /* renamed from: c */
    protected C4883h f17812c;

    /* renamed from: e */
    protected String f17814e;

    /* renamed from: g */
    C4879g f17816g;

    /* renamed from: d */
    protected Handler f17813d = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    protected volatile boolean f17815f = false;

    /* renamed from: h */
    private final Map<String, C4879g> f17817h = new HashMap();

    /* renamed from: a */
    public C4894p m33689a(JSONObject jSONObject) {
        if (this.f17815f) {
            return null;
        }
        String optString = jSONObject.optString("__callback_id");
        String optString2 = jSONObject.optString("func");
        String mo33587a = mo33587a();
        if (mo33587a == null) {
            AbstractC4891m abstractC4891m = this.f17811b;
            if (abstractC4891m == null) {
                return null;
            }
            abstractC4891m.m33635a(null, null, 3);
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            String string2 = jSONObject.getString("params");
            String string3 = jSONObject.getString("JSSDK");
            String optString3 = jSONObject.optString("namespace");
            return C4894p.m33633a().m33628a(string3).m33626b(string).m33624c(optString2).m33622d(string2).m33620e(optString).m33618f(optString3).m33616g(jSONObject.optString("__iframe_url")).m33630a();
        } catch (JSONException e) {
            C4884i.m33653b("Failed to create call.", e);
            AbstractC4891m abstractC4891m2 = this.f17811b;
            if (abstractC4891m2 != null) {
                abstractC4891m2.m33635a(mo33587a, optString2, 1);
            }
            return C4894p.m33631a(optString, -1);
        }
    }

    /* renamed from: b */
    private C4879g m33688b(String str) {
        return (TextUtils.equals(str, this.f17814e) || TextUtils.isEmpty(str)) ? this.f17816g : this.f17817h.get(str);
    }

    /* renamed from: a */
    protected abstract Context mo33586a(C4885j c4885j);

    /* renamed from: a */
    protected abstract String mo33587a();

    /* renamed from: a */
    public final void m33691a(C4885j c4885j, C4902u c4902u) {
        this.f17810a = mo33586a(c4885j);
        this.f17812c = c4885j.f17851d;
        this.f17811b = c4885j.f17856i;
        this.f17816g = new C4879g(c4885j, this, c4902u);
        this.f17814e = c4885j.f17858k;
        mo33581b(c4885j);
    }

    /* renamed from: a */
    protected final void m33690a(C4894p c4894p) {
        String mo33587a;
        if (!this.f17815f && (mo33587a = mo33587a()) != null) {
            C4879g m33688b = m33688b(c4894p.f17870g);
            if (m33688b == null) {
                C4884i.m33654b("Received call with unknown namespace, ".concat(String.valueOf(c4894p)));
                AbstractC4891m abstractC4891m = this.f17811b;
                if (abstractC4891m != null) {
                    abstractC4891m.m33635a(mo33587a(), c4894p.f17867d, 2);
                }
                m33687b(C4910x.m33589a(new C4898r(-4, "Namespace " + c4894p.f17870g + " unknown.")), c4894p);
                return;
            }
            C4878f c4878f = new C4878f();
            c4878f.f17826b = mo33587a;
            c4878f.f17825a = this.f17810a;
            c4878f.f17827c = m33688b;
            try {
                C4879g.C4882a m33672a = m33688b.m33672a(c4894p, c4878f);
                if (m33672a != null) {
                    if (m33672a.f17844a) {
                        m33687b(m33672a.f17845b, c4894p);
                    }
                    AbstractC4891m abstractC4891m2 = this.f17811b;
                    if (abstractC4891m2 == null) {
                        return;
                    }
                    abstractC4891m2.m33636a(mo33587a(), c4894p.f17867d);
                    return;
                }
                C4884i.m33654b("Received call but not registered, ".concat(String.valueOf(c4894p)));
                AbstractC4891m abstractC4891m3 = this.f17811b;
                if (abstractC4891m3 != null) {
                    abstractC4891m3.m33635a(mo33587a(), c4894p.f17867d, 2);
                }
                m33687b(C4910x.m33589a(new C4898r(-2, "Function " + c4894p.f17867d + " is not registered.")), c4894p);
            } catch (Exception e) {
                C4884i.m33656a("call finished with error, ".concat(String.valueOf(c4894p)), e);
                m33687b(C4910x.m33589a(e), c4894p);
            }
        }
    }

    /* renamed from: a */
    protected abstract void mo33584a(String str);

    /* renamed from: a */
    public void mo33583a(String str, C4894p c4894p) {
        mo33584a(str);
    }

    /* renamed from: b */
    protected abstract void mo33581b(C4885j c4885j);

    /* renamed from: b */
    public final void m33687b(String str, C4894p c4894p) {
        if (this.f17815f) {
            return;
        }
        if (TextUtils.isEmpty(c4894p.f17869f)) {
            C4884i.m33657a("By passing js callback due to empty callback: ".concat(String.valueOf(str)));
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            C4884i.m33658a(new IllegalArgumentException("Illegal callback data: ".concat(String.valueOf(str))));
        }
        C4884i.m33657a("Invoking js callback: " + c4894p.f17869f);
        mo33583a("{\"__msg_type\":\"callback\",\"__callback_id\":\"" + c4894p.f17869f + "\",\"__params\":" + str + "}", c4894p);
    }

    public void invokeMethod(final String str) {
        if (this.f17815f) {
            return;
        }
        C4884i.m33657a("Received call: ".concat(String.valueOf(str)));
        this.f17813d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.g.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (AbstractC4870a.this.f17815f) {
                    return;
                }
                C4894p c4894p = null;
                try {
                    c4894p = AbstractC4870a.this.m33689a(new JSONObject(str));
                } catch (JSONException e) {
                    C4884i.m33653b("Exception thrown while parsing function.", e);
                }
                if (!C4894p.m33632a(c4894p)) {
                    AbstractC4870a.this.m33690a(c4894p);
                    return;
                }
                C4884i.m33657a("By pass invalid call: ".concat(String.valueOf(c4894p)));
                if (c4894p == null) {
                    return;
                }
                AbstractC4870a.this.m33687b(C4910x.m33589a(new C4898r(c4894p.f17864a, "Failed to parse invocation.")), c4894p);
            }
        });
    }
}
