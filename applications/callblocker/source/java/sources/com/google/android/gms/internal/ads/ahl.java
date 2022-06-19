package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahl.class */
public final class ahl extends ead {

    /* renamed from: a */
    private final Context f9693a;

    /* renamed from: b */
    private final C3647yd f9694b;

    /* renamed from: c */
    private final bfg f9695c;

    /* renamed from: d */
    private final bmw<chs, boe> f9696d;

    /* renamed from: e */
    private final bsn f9697e;

    /* renamed from: f */
    private final bij f9698f;

    /* renamed from: g */
    private final C3509ta f9699g;

    /* renamed from: h */
    private final bfj f9700h;
    @GuardedBy("this")

    /* renamed from: i */
    private boolean f9701i = false;

    public ahl(Context context, C3647yd c3647yd, bfg bfgVar, bmw<chs, boe> bmwVar, bsn bsnVar, bij bijVar, C3509ta c3509ta, bfj bfjVar) {
        this.f9693a = context;
        this.f9694b = c3647yd;
        this.f9695c = bfgVar;
        this.f9696d = bmwVar;
        this.f9697e = bsnVar;
        this.f9698f = bijVar;
        this.f9699g = c3509ta;
        this.f9700h = bfjVar;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7928a() {
        synchronized (this) {
            if (this.f9701i) {
                C3556uu.m6745e("Mobile ads is initialized already.");
            } else {
                edi.m7866a(this.f9693a);
                C2341q.m14740g().m7098a(this.f9693a, this.f9694b);
                C2341q.m14738i().m8502a(this.f9693a);
                this.f9701i = true;
                this.f9698f.m11887a();
                if (((Boolean) dyx.m8158e().m7876a(edi.f16351aJ)).booleanValue()) {
                    this.f9697e.m11673a();
                }
                if (((Boolean) dyx.m8158e().m7876a(edi.f16400bF)).booleanValue()) {
                    this.f9700h.m12003a();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7927a(float f) {
        synchronized (this) {
            C2341q.m14739h().m6903a(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7926a(AbstractC2731a abstractC2731a, String str) {
        if (abstractC2731a == null) {
            C3556uu.m6749c("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        if (context == null) {
            C3556uu.m6749c("Context is null. Failed to open debug menu.");
            return;
        }
        C3584vv c3584vv = new C3584vv(context);
        c3584vv.m6913a(str);
        c3584vv.m6909b(this.f9694b.f17636a);
        c3584vv.m6917a();
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7925a(ech echVar) {
        this.f9699g.m7164a(this.f9693a, echVar);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7924a(AbstractC3166gi abstractC3166gi) {
        this.f9698f.m11881a(abstractC3166gi);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7923a(AbstractC3280ko abstractC3280ko) {
        this.f9695c.m12008a(abstractC3280ko);
    }

    /* renamed from: a */
    public final /* synthetic */ void m13108a(Runnable runnable) {
        C2662s.m13974b("Adapters must be initialized on the main thread.");
        Map<String, C3275kj> m7075e = C2341q.m14740g().m7084h().mo7019h().m7075e();
        if (m7075e == null || m7075e.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                C3556uu.m6746d("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (!this.f9695c.m12009a()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (C3275kj c3275kj : m7075e.values()) {
            for (C3276kk c3276kk : c3275kj.f16853a) {
                String str = c3276kk.f16875b;
                for (String str2 : c3276kk.f16874a) {
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, new ArrayList());
                    }
                    if (str != null) {
                        ((Collection) hashMap.get(str2)).add(str);
                    }
                }
            }
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            String str3 = (String) entry.getKey();
            try {
                bmx<chs, boe> mo11704a = this.f9696d.mo11704a(str3, jSONObject);
                if (mo11704a != null) {
                    chs chsVar = mo11704a.f11571b;
                    if (!chsVar.m11273g() && chsVar.m11270j()) {
                        chsVar.m11284a(this.f9693a, mo11704a.f11572c, (List) entry.getValue());
                        String valueOf = String.valueOf(str3);
                        C3556uu.m6751b(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                    }
                }
            } catch (zzdhk e) {
                C3556uu.m6746d(new StringBuilder(String.valueOf(str3).length() + 56).append("Failed to initialize rewarded video mediation adapter \"").append(str3).append("\"").toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7922a(String str) {
        synchronized (this) {
            edi.m7866a(this.f9693a);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16399bE)).booleanValue()) {
                    C2341q.m14736k().m14797a(this.f9693a, this.f9694b, str, (Runnable) null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7921a(String str, AbstractC2731a abstractC2731a) {
        String str2;
        Runnable runnable;
        edi.m7866a(this.f9693a);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16401bG)).booleanValue()) {
            C2341q.m14744c();
            str2 = C3567ve.m6945n(this.f9693a);
        } else {
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) dyx.m8158e().m7876a(edi.f16399bE)).booleanValue() | ((Boolean) dyx.m8158e().m7876a(edi.f16379al)).booleanValue();
        if (((Boolean) dyx.m8158e().m7876a(edi.f16379al)).booleanValue()) {
            booleanValue = true;
            runnable = new Runnable(this, (Runnable) BinderC2734b.m13795a(abstractC2731a)) { // from class: com.google.android.gms.internal.ads.aho

                /* renamed from: a */
                private final ahl f9705a;

                /* renamed from: b */
                private final Runnable f9706b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9705a = this;
                    this.f9706b = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3650yg.f17646e.execute(new Runnable(this.f9705a, this.f9706b) { // from class: com.google.android.gms.internal.ads.ahn

                        /* renamed from: a */
                        private final ahl f9703a;

                        /* renamed from: b */
                        private final Runnable f9704b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f9703a = r4;
                            this.f9704b = r5;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f9703a.m13108a(this.f9704b);
                        }
                    });
                }
            };
        } else {
            runnable = null;
        }
        if (!booleanValue) {
            return;
        }
        C2341q.m14736k().m14797a(this.f9693a, this.f9694b, str, runnable);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7920a(boolean z) {
        synchronized (this) {
            C2341q.m14739h().m6901a(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: b */
    public final float mo7919b() {
        float m6904a;
        synchronized (this) {
            m6904a = C2341q.m14739h().m6904a();
        }
        return m6904a;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: b */
    public final void mo7918b(String str) {
        this.f9697e.m11672a(str);
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: c */
    public final boolean mo7917c() {
        boolean m6900b;
        synchronized (this) {
            m6900b = C2341q.m14739h().m6900b();
        }
        return m6900b;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: d */
    public final String mo7916d() {
        return this.f9694b.f17636a;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: e */
    public final List<C3159gb> mo7915e() {
        return this.f9698f.m11876b();
    }
}
