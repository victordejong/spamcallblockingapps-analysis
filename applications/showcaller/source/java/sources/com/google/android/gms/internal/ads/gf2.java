package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gf2.class */
public final class gf2 extends AbstractBinderC6971ss implements AbstractC5653o, AbstractC6445el {

    /* renamed from: d */
    private final sp0 f23322d;

    /* renamed from: e */
    private final Context f23323e;

    /* renamed from: g */
    private final String f23325g;

    /* renamed from: h */
    private final ze2 f23326h;

    /* renamed from: i */
    private final xe2 f23327i;

    /* renamed from: k */
    private rv0 f23329k;

    /* renamed from: l */
    protected qw0 f23330l;

    /* renamed from: f */
    private AtomicBoolean f23324f = new AtomicBoolean();

    /* renamed from: j */
    private long f23328j = -1;

    public gf2(sp0 sp0Var, Context context, String str, ze2 ze2Var, xe2 xe2Var) {
        this.f23322d = sp0Var;
        this.f23323e = context;
        this.f23325g = str;
        this.f23326h = ze2Var;
        this.f23327i = xe2Var;
        xe2Var.m9232u(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: E6 */
    private final void m14952E6(int i) {
        synchronized (this) {
            if (this.f23324f.compareAndSet(false, true)) {
                this.f23327i.m9246H();
                rv0 rv0Var = this.f23329k;
                if (rv0Var != null) {
                    C5667s.m18157g().m13875c(rv0Var);
                }
                if (this.f23330l != null) {
                    ?? r10 = true;
                    if (this.f23328j != -1) {
                        r10 = C5667s.m18153k().mo16806b() - this.f23328j;
                    }
                    this.f23330l.m11780j(r10 == true ? 1L : 0L, i);
                }
                mo9638g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: C4 */
    public final void mo9663C4(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: D */
    public final boolean mo9662D() {
        boolean mo8957b;
        synchronized (this) {
            mo8957b = this.f23326h.mo8957b();
        }
        return mo8957b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: F4 */
    public final void mo9660F4(AbstractC7156xs abstractC7156xs) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: H */
    public final AbstractC6526gs mo9657H() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K */
    public final String mo9653K() {
        String str;
        synchronized (this) {
            str = this.f23325g;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: K2 */
    public final void mo9652K2(AbstractC6304at abstractC6304at) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: L0 */
    public final void mo9650L0(zzbdl zzbdlVar) {
        synchronized (this) {
            C6155o.m17023e("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: N5 */
    public final void mo9649N5(zzbdr zzbdrVar) {
        this.f23326h.m14690i(zzbdrVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: O5 */
    public final void mo9648O5(zzbdg zzbdgVar, AbstractC6638js abstractC6638js) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: S1 */
    public final void mo9647S1(AbstractC6602it abstractC6602it) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: U2 */
    public final void mo9646U2(C6453et c6453et) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: W3 */
    public final void mo9645W3(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: X5 */
    public final void mo9644X5(AbstractC6526gs abstractC6526gs) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: Y1 */
    public final void mo9643Y1(tb0 tb0Var) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
        synchronized (this) {
            qw0 qw0Var = this.f23330l;
            if (qw0Var != null) {
                qw0Var.m11780j(C5667s.m18153k().mo16806b() - this.f23328j, 1);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        int i2 = i - 1;
        if (i != 0) {
            if (i2 == 0) {
                m14952E6(2);
                return;
            } else if (i2 == 1) {
                m14952E6(4);
                return;
            } else if (i2 == 2) {
                m14952E6(3);
                return;
            } else if (i2 != 3) {
                return;
            } else {
                m14952E6(6);
                return;
            }
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: b6 */
    public final void mo9642b6(ud0 ud0Var) {
    }

    /* renamed from: c0 */
    public final /* synthetic */ void m14950c0() {
        m14952E6(5);
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e3 */
    public final void mo9640e3(AbstractC6379cu abstractC6379cu) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: e6 */
    public final void mo9639e6(AbstractC6531gx abstractC6531gx) {
        synchronized (this) {
        }
    }

    /* renamed from: f */
    public final void m14949f() {
        this.f23322d.mo10958h().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bf2

            /* renamed from: d */
            private final gf2 f20427d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20427d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f20427d.m14950c0();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: g */
    public final void mo9638g() {
        synchronized (this) {
            C6155o.m17023e("destroy must be called on the main UI thread.");
            qw0 qw0Var = this.f23330l;
            if (qw0Var != null) {
                qw0Var.mo9020b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: h */
    public final boolean mo9637h() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: i4 */
    public final void mo9636i4(yb0 yb0Var, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: j */
    public final void mo9635j() {
        synchronized (this) {
            C6155o.m17023e("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: k5 */
    public final boolean mo9634k5(zzbdg zzbdgVar) {
        synchronized (this) {
            C6155o.m17023e("loadAd must be called on the main UI thread.");
            C5667s.m18160d();
            if (C5679c2.m18064k(this.f23323e) && zzbdgVar.f33677v == null) {
                ei0.m15467c("Failed to load the ad because app ID is missing.");
                this.f23327i.mo9146O(sk2.m10997d(4, null, null));
                return false;
            }
            if (mo9662D()) {
                return false;
            }
            this.f23324f = new AtomicBoolean();
            return this.f23326h.mo8958a(zzbdgVar, this.f23325g, new ef2(this), new ff2(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l1 */
    public final void mo9633l1(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l3 */
    public final void mo9632l3(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: l6 */
    public final void mo9631l6(zzbis zzbisVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m */
    public final void mo9630m() {
        synchronized (this) {
            C6155o.m17023e("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m6 */
    public final void mo9629m6(AbstractC6779nl abstractC6779nl) {
        this.f23327i.m9238m(abstractC6779nl);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: o */
    public final void mo9628o() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: p0 */
    public final AbstractC6640ju mo9627p0() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: q */
    public final String mo9626q() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s */
    public final Bundle mo9625s() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s0 */
    public final void mo9624s0(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: s5 */
    public final void mo9623s5(zzbhg zzbhgVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: t */
    public final AbstractC6304at mo9622t() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: u */
    public final AbstractC6491fu mo9621u() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v */
    public final String mo9620v() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: v4 */
    public final void mo9619v4(AbstractC6377cs abstractC6377cs) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        synchronized (this) {
            if (this.f23330l == null) {
                return;
            }
            this.f23328j = C5667s.m18153k().mo16806b();
            int m11781i = this.f23330l.m11781i();
            if (m11781i <= 0) {
                return;
            }
            rv0 rv0Var = new rv0(this.f23322d.mo10957i(), C5667s.m18153k());
            this.f23329k = rv0Var;
            rv0Var.m11267a(m11781i, new Runnable(this) { // from class: com.google.android.gms.internal.ads.df2

                /* renamed from: d */
                private final gf2 f21610d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21610d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f21610d.m14949f();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6445el
    public final void zza() {
        m14952E6(3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final AbstractC6253a zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final void zzt() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final zzbdl zzu() {
        synchronized (this) {
        }
        return null;
    }
}
