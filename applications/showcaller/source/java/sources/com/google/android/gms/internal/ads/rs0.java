package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5744w;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rs0.class */
public final class rs0 extends AbstractBinderC6676kt {

    /* renamed from: d */
    private final Context f29207d;

    /* renamed from: e */
    private final zzcgz f29208e;

    /* renamed from: f */
    private final ol1 f29209f;

    /* renamed from: g */
    private final sw1<ok2, ny1> f29210g;

    /* renamed from: h */
    private final v22 f29211h;

    /* renamed from: i */
    private final vp1 f29212i;

    /* renamed from: j */
    private final lg0 f29213j;

    /* renamed from: k */
    private final tl1 f29214k;

    /* renamed from: l */
    private final lq1 f29215l;

    /* renamed from: m */
    private boolean f29216m = false;

    public rs0(Context context, zzcgz zzcgzVar, ol1 ol1Var, sw1<ok2, ny1> sw1Var, v22 v22Var, vp1 vp1Var, lg0 lg0Var, tl1 tl1Var, lq1 lq1Var) {
        this.f29207d = context;
        this.f29208e = zzcgzVar;
        this.f29209f = ol1Var;
        this.f29210g = sw1Var;
        this.f29211h = v22Var;
        this.f29212i = vp1Var;
        this.f29213j = lg0Var;
        this.f29214k = tl1Var;
        this.f29215l = lq1Var;
    }

    /* renamed from: E6 */
    public final void m11318E6(Runnable runnable) {
        C6155o.m17023e("Adapters must be initialized on the main thread.");
        Map<String, n70> m14121f = C5667s.m18156h().m12230p().mo17954m().m14121f();
        if (m14121f.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                ei0.m15463g("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (!this.f29209f.m12595d()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (n70 n70Var : m14121f.values()) {
            for (m70 m70Var : n70Var.f27005a) {
                String str = m70Var.f26468k;
                for (String str2 : m70Var.f26460c) {
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
                tw1<ok2, ny1> mo10443a = this.f29210g.mo10443a(str3, jSONObject);
                if (mo10443a != null) {
                    ok2 ok2Var = mo10443a.f30386b;
                    if (!ok2Var.m12617q() && ok2Var.m12614t()) {
                        ok2Var.m12613u(this.f29207d, mo10443a.f30387c, (List) entry.getValue());
                        String valueOf = String.valueOf(str3);
                        ei0.m15469a(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                    }
                }
            } catch (zzfaw e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                sb.append("Failed to initialize rewarded video mediation adapter \"");
                sb.append(str3);
                sb.append("\"");
                ei0.m15463g(sb.toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: O */
    public final void mo11317O(String str) {
        synchronized (this) {
            C6679kw.m13770a(this.f29207d);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25801t2)).booleanValue()) {
                    C5667s.m18152l().m18219a(this.f29207d, this.f29208e, str, null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: O1 */
    public final void mo11316O1(AbstractC6253a abstractC6253a, String str) {
        if (abstractC6253a == null) {
            ei0.m15467c("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        if (context == null) {
            ei0.m15467c("Context is null. Failed to open debug menu.");
            return;
        }
        C5744w c5744w = new C5744w(context);
        c5744w.m17943c(str);
        c5744w.m17942d(this.f29208e.f33854d);
        c5744w.m17944b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: Q0 */
    public final void mo11315Q0(d40 d40Var) {
        this.f29212i.m9908h(d40Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: U1 */
    public final void mo11314U1(float f) {
        synchronized (this) {
            C5667s.m18155i().m18032a(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: X1 */
    public final void mo11313X1(String str, AbstractC6253a abstractC6253a) {
        String str2;
        Runnable runnable;
        C6679kw.m13770a(this.f29207d);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25825w2)).booleanValue()) {
            C5667s.m18160d();
            str2 = C5679c2.m18076c0(this.f29207d);
        } else {
            str2 = "";
        }
        boolean z = true;
        if (true != TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25801t2)).booleanValue();
        AbstractC6381cw<Boolean> abstractC6381cw = C6679kw.f25444B0;
        boolean booleanValue2 = ((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue();
        if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
            runnable = new Runnable(this, (Runnable) BinderC6255b.m16745J0(abstractC6253a)) { // from class: com.google.android.gms.internal.ads.ps0

                /* renamed from: d */
                private final rs0 f28114d;

                /* renamed from: e */
                private final Runnable f28115e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28114d = this;
                    this.f28115e = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final rs0 rs0Var = this.f28114d;
                    final Runnable runnable3 = this.f28115e;
                    qi0.f28499e.execute(new Runnable(rs0Var, runnable3) { // from class: com.google.android.gms.internal.ads.qs0

                        /* renamed from: d */
                        private final rs0 f28621d;

                        /* renamed from: e */
                        private final Runnable f28622e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28621d = rs0Var;
                            this.f28622e = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f28621d.m11318E6(this.f28622e);
                        }
                    });
                }
            };
        } else {
            z = booleanValue | booleanValue2;
            runnable = null;
        }
        if (!z) {
            return;
        }
        C5667s.m18152l().m18219a(this.f29207d, this.f29208e, str, runnable);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: a */
    public final void mo11312a() {
        synchronized (this) {
            if (this.f29216m) {
                ei0.m15464f("Mobile ads is initialized already.");
                return;
            }
            C6679kw.m13770a(this.f29207d);
            C5667s.m18156h().m12237i(this.f29207d, this.f29208e);
            C5667s.m18154j().m8787d(this.f29207d);
            this.f29216m = true;
            this.f29212i.m9907i();
            this.f29211h.m10101a();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25809u2)).booleanValue()) {
                this.f29214k.m10637a();
            }
            this.f29215l.m13455a();
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25474E6)).booleanValue()) {
                return;
            }
            qi0.f28495a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.os0

                /* renamed from: d */
                private final rs0 f27703d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f27703d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f27703d.m11311b();
                }
            });
        }
    }

    /* renamed from: b */
    public final void m11311b() {
        if (C5667s.m18156h().m12230p().mo17972P()) {
            if (C5667s.m18150n().m18132e(this.f29207d, C5667s.m18156h().m12230p().mo17965W(), this.f29208e.f33854d)) {
                return;
            }
            C5667s.m18156h().m12230p().mo17981I0(false);
            C5667s.m18156h().m12230p().mo17974N0("");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: h */
    public final float mo11310h() {
        float m18031b;
        synchronized (this) {
            m18031b = C5667s.m18155i().m18031b();
        }
        return m18031b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: i */
    public final boolean mo11309i() {
        boolean m18029d;
        synchronized (this) {
            m18029d = C5667s.m18155i().m18029d();
        }
        return m18029d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: j */
    public final String mo11308j() {
        return this.f29208e.f33854d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: k */
    public final List<zzbrl> mo11307k() {
        return this.f29212i.m9906j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: k1 */
    public final void mo11306k1(s70 s70Var) {
        this.f29209f.m12598a(s70Var);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: o */
    public final void mo11305o() {
        this.f29212i.m9909g();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: p2 */
    public final void mo11304p2(zzbim zzbimVar) {
        this.f29213j.m13545h(this.f29207d, zzbimVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: t0 */
    public final void mo11303t0(String str) {
        this.f29211h.m10098d(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: u5 */
    public final void mo11302u5(AbstractC7120wt abstractC7120wt) {
        this.f29215l.m13445k(abstractC7120wt, zzdyb.API);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: y0 */
    public final void mo11301y0(boolean z) {
        synchronized (this) {
            C5667s.m18155i().m18030c(z);
        }
    }
}
