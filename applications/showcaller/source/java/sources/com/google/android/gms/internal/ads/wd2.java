package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5663y;
import com.google.android.gms.ads.internal.overlay.C5654p;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wd2.class */
public final class wd2 extends AbstractBinderC6971ss implements AbstractC5663y, AbstractC6445el, y41 {

    /* renamed from: d */
    private final sp0 f31517d;

    /* renamed from: e */
    private final Context f31518e;

    /* renamed from: f */
    private final ViewGroup f31519f;

    /* renamed from: h */
    private final String f31521h;

    /* renamed from: i */
    private final qd2 f31522i;

    /* renamed from: j */
    private final xe2 f31523j;

    /* renamed from: k */
    private final zzcgz f31524k;

    /* renamed from: m */
    private rv0 f31526m;

    /* renamed from: n */
    protected fw0 f31527n;

    /* renamed from: g */
    private AtomicBoolean f31520g = new AtomicBoolean();

    /* renamed from: l */
    private long f31525l = -1;

    public wd2(sp0 sp0Var, Context context, String str, qd2 qd2Var, xe2 xe2Var, zzcgz zzcgzVar) {
        this.f31519f = new FrameLayout(context);
        this.f31517d = sp0Var;
        this.f31518e = context;
        this.f31521h = str;
        this.f31522i = qd2Var;
        this.f31523j = xe2Var;
        xe2Var.m9233r(this);
        this.f31524k = zzcgzVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: F6 */
    private final void m9659F6(int i) {
        synchronized (this) {
            if (this.f31520g.compareAndSet(false, true)) {
                fw0 fw0Var = this.f31527n;
                if (fw0Var != null && fw0Var.m15031q() != null) {
                    this.f31523j.m9245I(this.f31527n.m15031q());
                }
                this.f31523j.m9246H();
                this.f31519f.removeAllViews();
                rv0 rv0Var = this.f31526m;
                if (rv0Var != null) {
                    C5667s.m18157g().m13875c(rv0Var);
                }
                if (this.f31527n != null) {
                    ?? r10 = true;
                    if (this.f31525l != -1) {
                        r10 = C5667s.m18153k().mo16806b() - this.f31525l;
                    }
                    this.f31527n.m15033o(r10 == true ? 1L : 0L, i);
                }
                mo9638g();
            }
        }
    }

    /* renamed from: J6 */
    public static /* synthetic */ zzq m9654J6(wd2 wd2Var, fw0 fw0Var) {
        boolean m15036l = fw0Var.m15036l();
        int intValue = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25754n3)).intValue();
        C5654p c5654p = new C5654p();
        c5654p.f18373d = 50;
        c5654p.f18370a = true != m15036l ? 0 : intValue;
        int i = 0;
        if (true != m15036l) {
            i = intValue;
        }
        c5654p.f18371b = i;
        c5654p.f18372c = intValue;
        return new zzq(wd2Var.f31518e, c5654p, wd2Var);
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
            mo8957b = this.f31522i.mo8957b();
        }
        return mo8957b;
    }

    /* renamed from: E6 */
    public final /* synthetic */ void m9661E6() {
        m9659F6(5);
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
            str = this.f31521h;
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
        this.f31522i.m14690i(zzbdrVar);
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

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: b6 */
    public final void mo9642b6(ud0 ud0Var) {
    }

    @Override // com.google.android.gms.internal.ads.y41
    /* renamed from: c0 */
    public final void mo8959c0() {
        if (this.f31527n == null) {
            return;
        }
        this.f31525l = C5667s.m18153k().mo16806b();
        int m15039i = this.f31527n.m15039i();
        if (m15039i <= 0) {
            return;
        }
        rv0 rv0Var = new rv0(this.f31517d.mo10957i(), C5667s.m18153k());
        this.f31526m = rv0Var;
        rv0Var.m11267a(m15039i, new Runnable(this) { // from class: com.google.android.gms.internal.ads.td2

            /* renamed from: d */
            private final wd2 f29945d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29945d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29945d.zzg();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5663y
    /* renamed from: e */
    public final void mo9641e() {
        m9659F6(4);
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

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: g */
    public final void mo9638g() {
        synchronized (this) {
            C6155o.m17023e("destroy must be called on the main UI thread.");
            fw0 fw0Var = this.f31527n;
            if (fw0Var != null) {
                fw0Var.mo9020b();
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
            if (C5679c2.m18064k(this.f31518e) && zzbdgVar.f33677v == null) {
                ei0.m15467c("Failed to load the ad because app ID is missing.");
                this.f31523j.mo9146O(sk2.m10997d(4, null, null));
                return false;
            }
            if (mo9662D()) {
                return false;
            }
            this.f31520g = new AtomicBoolean();
            return this.f31522i.mo8958a(zzbdgVar, this.f31521h, new ud2(this), new vd2(this));
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

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: m6 */
    public final void mo9629m6(AbstractC6779nl abstractC6779nl) {
        this.f31523j.m9238m(abstractC6779nl);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    /* renamed from: o */
    public final void mo9628o() {
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

    @Override // com.google.android.gms.internal.ads.AbstractC6445el
    public final void zza() {
        m9659F6(3);
    }

    public final void zzg() {
        C7118wr.m9485a();
        if (xh0.m9164n()) {
            m9659F6(5);
        } else {
            this.f31517d.mo10958h().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.sd2

                /* renamed from: d */
                private final wd2 f29453d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f29453d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29453d.m9661E6();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final AbstractC6253a zzi() {
        C6155o.m17023e("getAdFrame must be called on the main UI thread.");
        return BinderC6255b.m16744m2(this.f31519f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final void zzt() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7008ts
    public final zzbdl zzu() {
        synchronized (this) {
            C6155o.m17023e("getAdSize must be called on the main UI thread.");
            fw0 fw0Var = this.f31527n;
            if (fw0Var != null) {
                return bk2.m16326b(this.f31518e, Collections.singletonList(fw0Var.m15041g()));
            }
            return null;
        }
    }
}
