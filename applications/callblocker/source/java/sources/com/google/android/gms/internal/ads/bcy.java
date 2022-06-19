package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2301c;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcy.class */
public final class bcy {

    /* renamed from: b */
    private final C2299a f10981b;

    /* renamed from: c */
    private final adb f10982c;

    /* renamed from: d */
    private final Context f10983d;

    /* renamed from: e */
    private final Executor f10984e;

    /* renamed from: f */
    private final ctl f10985f;

    /* renamed from: g */
    private final C3647yd f10986g;

    /* renamed from: i */
    private crt<act> f10988i;

    /* renamed from: a */
    private final bdd f10980a = new bdd(null);

    /* renamed from: h */
    private final C3137fg f10987h = new C3137fg();

    public bcy(bdj bdjVar) {
        Context context;
        Executor executor;
        ctl ctlVar;
        C3647yd c3647yd;
        C2299a c2299a;
        adb adbVar;
        context = bdjVar.f11016c;
        this.f10983d = context;
        executor = bdjVar.f11017d;
        this.f10984e = executor;
        ctlVar = bdjVar.f11018e;
        this.f10985f = ctlVar;
        c3647yd = bdjVar.f11019f;
        this.f10986g = c3647yd;
        c2299a = bdjVar.f11014a;
        this.f10981b = c2299a;
        adbVar = bdjVar.f11015b;
        this.f10982c = adbVar;
    }

    /* renamed from: a */
    public final /* synthetic */ act m12090a(act actVar) {
        actVar.mo13462a("/result", this.f10987h);
        actVar.mo13426v().mo13525a(null, this.f10980a, this.f10980a, this.f10980a, this.f10980a, false, null, new C2301c(this.f10983d, null, null), null, null);
        return actVar;
    }

    /* renamed from: a */
    public final crt<JSONObject> m12086a(String str, JSONObject jSONObject) {
        crt<JSONObject> m10778a;
        synchronized (this) {
            m10778a = this.f10988i == null ? crg.m10778a((Object) null) : crg.m10782a(this.f10988i, new cqt(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.bda

                /* renamed from: a */
                private final bcy f10989a;

                /* renamed from: b */
                private final String f10990b;

                /* renamed from: c */
                private final JSONObject f10991c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10989a = this;
                    this.f10990b = str;
                    this.f10991c = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.cqt
                /* renamed from: a */
                public final crt mo7012a(Object obj) {
                    return this.f10989a.m12085a(this.f10990b, this.f10991c, (act) obj);
                }
            }, this.f10984e);
        }
        return m10778a;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12085a(String str, JSONObject jSONObject, act actVar) {
        return this.f10987h.m7837a(actVar, str, jSONObject);
    }

    /* renamed from: a */
    public final void m12091a() {
        synchronized (this) {
            this.f10988i = crg.m10783a(adb.m13596a(this.f10983d, this.f10986g, (String) dyx.m8158e().m7876a(edi.f16440bt), this.f10985f, this.f10981b), new coe(this) { // from class: com.google.android.gms.internal.ads.bcx

                /* renamed from: a */
                private final bcy f10979a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10979a = this;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    return this.f10979a.m12090a((act) obj);
                }
            }, this.f10984e);
            C3654yk.m6736a(this.f10988i, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    /* renamed from: a */
    public final void m12088a(String str, AbstractC3131fa<Object> abstractC3131fa) {
        synchronized (this) {
            if (this.f10988i != null) {
                crg.m10781a(this.f10988i, new bdc(this, str, abstractC3131fa), this.f10984e);
            }
        }
    }

    /* renamed from: a */
    public final void m12087a(String str, Map<String, ?> map) {
        synchronized (this) {
            if (this.f10988i != null) {
                crg.m10781a(this.f10988i, new bde(this, str, map), this.f10984e);
            }
        }
    }

    /* renamed from: a */
    public final <T> void m12084a(WeakReference<T> weakReference, String str, AbstractC3131fa<T> abstractC3131fa) {
        m12088a(str, new bdi(this, weakReference, str, abstractC3131fa, null));
    }

    /* renamed from: b */
    public final void m12083b() {
        synchronized (this) {
            if (this.f10988i != null) {
                crg.m10781a(this.f10988i, new bcz(this), this.f10984e);
                this.f10988i = null;
            }
        }
    }

    /* renamed from: b */
    public final void m12082b(String str, AbstractC3131fa<Object> abstractC3131fa) {
        synchronized (this) {
            if (this.f10988i != null) {
                crg.m10781a(this.f10988i, new bdb(this, str, abstractC3131fa), this.f10984e);
            }
        }
    }
}
