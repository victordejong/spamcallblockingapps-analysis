package com.bytedance.sdk.openadsdk.g.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.g.a.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected Context f9505a;

    /* renamed from: b  reason: collision with root package name */
    protected m f9506b;

    /* renamed from: c  reason: collision with root package name */
    protected h f9507c;
    protected String e;
    g g;

    /* renamed from: d  reason: collision with root package name */
    protected Handler f9508d = new Handler(Looper.getMainLooper());
    protected volatile boolean f = false;
    private final Map<String, g> h = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public p a(JSONObject jSONObject) {
        if (this.f) {
            return null;
        }
        String optString = jSONObject.optString("__callback_id");
        String optString2 = jSONObject.optString("func");
        String a2 = a();
        if (a2 == null) {
            m mVar = this.f9506b;
            if (mVar == null) {
                return null;
            }
            mVar.a(null, null, 3);
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            String string2 = jSONObject.getString("params");
            String string3 = jSONObject.getString("JSSDK");
            String optString3 = jSONObject.optString("namespace");
            return p.a().a(string3).b(string).c(optString2).d(string2).e(optString).f(optString3).g(jSONObject.optString("__iframe_url")).a();
        } catch (JSONException e) {
            i.b("Failed to create call.", e);
            m mVar2 = this.f9506b;
            if (mVar2 != null) {
                mVar2.a(a2, optString2, 1);
            }
            return p.a(optString, -1);
        }
    }

    private g b(String str) {
        return (TextUtils.equals(str, this.e) || TextUtils.isEmpty(str)) ? this.g : this.h.get(str);
    }

    protected abstract Context a(j jVar);

    protected abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(j jVar, u uVar) {
        this.f9505a = a(jVar);
        this.f9507c = jVar.f9536d;
        this.f9506b = jVar.i;
        this.g = new g(jVar, this, uVar);
        this.e = jVar.k;
        b(jVar);
    }

    protected final void a(p pVar) {
        String a2;
        if (!this.f && (a2 = a()) != null) {
            g b2 = b(pVar.g);
            if (b2 == null) {
                i.b("Received call with unknown namespace, ".concat(String.valueOf(pVar)));
                m mVar = this.f9506b;
                if (mVar != null) {
                    mVar.a(a(), pVar.f9540d, 2);
                }
                b(x.a(new r(-4, "Namespace " + pVar.g + " unknown.")), pVar);
                return;
            }
            f fVar = new f();
            fVar.f9517b = a2;
            fVar.f9516a = this.f9505a;
            fVar.f9518c = b2;
            try {
                g.a a3 = b2.a(pVar, fVar);
                if (a3 == null) {
                    i.b("Received call but not registered, ".concat(String.valueOf(pVar)));
                    m mVar2 = this.f9506b;
                    if (mVar2 != null) {
                        mVar2.a(a(), pVar.f9540d, 2);
                    }
                    b(x.a(new r(-2, "Function " + pVar.f9540d + " is not registered.")), pVar);
                    return;
                }
                if (a3.f9529a) {
                    b(a3.f9530b, pVar);
                }
                m mVar3 = this.f9506b;
                if (mVar3 != null) {
                    mVar3.a(a(), pVar.f9540d);
                }
            } catch (Exception e) {
                i.a("call finished with error, ".concat(String.valueOf(pVar)), e);
                b(x.a(e), pVar);
            }
        }
    }

    protected abstract void a(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, p pVar) {
        a(str);
    }

    protected abstract void b(j jVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, p pVar) {
        if (!this.f) {
            if (TextUtils.isEmpty(pVar.f)) {
                i.a("By passing js callback due to empty callback: ".concat(String.valueOf(str)));
                return;
            }
            if (!str.startsWith("{") || !str.endsWith("}")) {
                i.a(new IllegalArgumentException("Illegal callback data: ".concat(String.valueOf(str))));
            }
            i.a("Invoking js callback: " + pVar.f);
            a("{\"__msg_type\":\"callback\",\"__callback_id\":\"" + pVar.f + "\",\"__params\":" + str + "}", pVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeMethod(final String str) {
        if (!this.f) {
            i.a("Received call: ".concat(String.valueOf(str)));
            this.f9508d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.g.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!a.this.f) {
                        p pVar = null;
                        try {
                            pVar = a.this.a(new JSONObject(str));
                        } catch (JSONException e) {
                            i.b("Exception thrown while parsing function.", e);
                        }
                        if (p.a(pVar)) {
                            i.a("By pass invalid call: ".concat(String.valueOf(pVar)));
                            if (pVar != null) {
                                a.this.b(x.a(new r(pVar.f9537a, "Failed to parse invocation.")), pVar);
                                return;
                            }
                            return;
                        }
                        a.this.a(pVar);
                    }
                }
            });
        }
    }
}
