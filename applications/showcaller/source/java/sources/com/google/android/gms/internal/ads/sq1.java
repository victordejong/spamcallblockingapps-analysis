package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C5651m;
import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sq1.class */
public final class sq1 implements AbstractC5653o, hp0 {

    /* renamed from: d */
    private final Context f29607d;

    /* renamed from: e */
    private final zzcgz f29608e;

    /* renamed from: f */
    private lq1 f29609f;

    /* renamed from: g */
    private wn0 f29610g;

    /* renamed from: h */
    private boolean f29611h;

    /* renamed from: i */
    private boolean f29612i;

    /* renamed from: j */
    private long f29613j;

    /* renamed from: k */
    private AbstractC7120wt f29614k;

    /* renamed from: l */
    private boolean f29615l;

    public sq1(Context context, zzcgz zzcgzVar) {
        this.f29607d = context;
        this.f29608e = zzcgzVar;
    }

    /* renamed from: g */
    private final boolean m10931g(AbstractC7120wt abstractC7120wt) {
        synchronized (this) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25773p6)).booleanValue()) {
                ei0.m15464f("Ad inspector had an internal error.");
                try {
                    abstractC7120wt.mo9463h0(sk2.m10997d(16, null, null));
                } catch (RemoteException e) {
                }
                return false;
            } else if (this.f29609f == null) {
                ei0.m15464f("Ad inspector had an internal error.");
                try {
                    abstractC7120wt.mo9463h0(sk2.m10997d(16, null, null));
                } catch (RemoteException e2) {
                }
                return false;
            } else {
                if (!this.f29611h && !this.f29612i) {
                    if (C5667s.m18153k().mo16807a() >= this.f29613j + ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25797s6)).intValue()) {
                        return true;
                    }
                }
                ei0.m15464f("Ad inspector cannot be opened because it is already open.");
                try {
                    abstractC7120wt.mo9463h0(sk2.m10997d(19, null, null));
                } catch (RemoteException e3) {
                }
                return false;
            }
        }
    }

    /* renamed from: h */
    private final void m10930h() {
        synchronized (this) {
            if (this.f29611h && this.f29612i) {
                qi0.f28499e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.rq1

                    /* renamed from: d */
                    private final sq1 f29088d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f29088d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f29088d.m10932f();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        synchronized (this) {
            this.f29610g.destroy();
            if (!this.f29615l) {
                C5722o1.m17990k("Inspector closed.");
                AbstractC7120wt abstractC7120wt = this.f29614k;
                if (abstractC7120wt != null) {
                    try {
                        abstractC7120wt.mo9463h0(null);
                    } catch (RemoteException e) {
                    }
                }
            }
            this.f29612i = false;
            this.f29611h = false;
            this.f29613j = 0L;
            this.f29615l = false;
            this.f29614k = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.hp0
    /* renamed from: b */
    public final void mo8634b(boolean z) {
        synchronized (this) {
            if (z) {
                C5722o1.m17990k("Ad inspector loaded.");
                this.f29611h = true;
                m10930h();
                return;
            }
            ei0.m15464f("Ad inspector failed to load.");
            try {
                AbstractC7120wt abstractC7120wt = this.f29614k;
                if (abstractC7120wt != null) {
                    abstractC7120wt.mo9463h0(sk2.m10997d(17, null, null));
                }
            } catch (RemoteException e) {
            }
            this.f29615l = true;
            this.f29610g.destroy();
        }
    }

    /* renamed from: c */
    public final void m10934c(lq1 lq1Var) {
        this.f29609f = lq1Var;
    }

    /* renamed from: d */
    public final void m10933d(AbstractC7120wt abstractC7120wt, o20 o20Var) {
        synchronized (this) {
            if (!m10931g(abstractC7120wt)) {
                return;
            }
            try {
                C5667s.m18159e();
                wn0 m14581a = ho0.m14581a(this.f29607d, mp0.m13133b(), "", false, false, null, null, this.f29608e, null, null, null, C6854pm.m12219a(), null, null);
                this.f29610g = m14581a;
                jp0 mo7914c0 = m14581a.mo7914c0();
                if (mo7914c0 == null) {
                    ei0.m15464f("Failed to obtain a web view for the ad inspector");
                    try {
                        abstractC7120wt.mo9463h0(sk2.m10997d(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e) {
                        return;
                    }
                }
                this.f29614k = abstractC7120wt;
                mo7914c0.mo14079q0(null, null, null, null, null, false, null, null, null, null, null, null, null, null, o20Var, null);
                mo7914c0.mo14085f0(this);
                this.f29610g.loadUrl((String) C7192yr.m8714c().m14263c(C6679kw.f25781q6));
                C5667s.m18161c();
                C5651m.m18186a(this.f29607d, new AdOverlayInfoParcel(this, this.f29610g, 1, this.f29608e), true);
                this.f29613j = C5667s.m18153k().mo16807a();
            } catch (zzcmw e2) {
                ei0.m15463g("Failed to obtain a web view for the ad inspector", e2);
                try {
                    abstractC7120wt.mo9463h0(sk2.m10997d(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e3) {
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
    }

    /* renamed from: f */
    public final /* synthetic */ void m10932f() {
        this.f29610g.mo7890r("window.inspectorInfo", this.f29609f.m13443m().toString());
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        synchronized (this) {
            this.f29612i = true;
            m10930h();
        }
    }
}
