package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.AbstractC12102f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apf.class */
public final class apf implements aro, ash, atb, auf, eir {

    /* renamed from: a */
    final C13063yc f42567a;

    /* renamed from: b */
    private final AbstractC12102f f42568b;

    public apf(AbstractC12102f abstractC12102f, C13063yc c13063yc) {
        this.f42568b = abstractC12102f;
        this.f42567a = c13063yc;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        C13063yc c13063yc = this.f42567a;
        synchronized (c13063yc.f50033d) {
            if (c13063yc.f50039j != -1) {
                c13063yc.f50036g = c13063yc.f50030a.mo19038b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
        C13063yc c13063yc = this.f42567a;
        long mo19038b = this.f42568b.mo19038b();
        synchronized (c13063yc.f50033d) {
            c13063yc.f50039j = mo19038b;
            if (c13063yc.f50039j != -1) {
                c13063yc.f50031b.m13954a(c13063yc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
    }

    /* renamed from: a */
    public final void m18494a(zzvq zzvqVar) {
        C13063yc c13063yc = this.f42567a;
        synchronized (c13063yc.f50033d) {
            c13063yc.f50038i = c13063yc.f50030a.mo19038b();
            C13075yo c13075yo = c13063yc.f50031b;
            long j = c13063yc.f50038i;
            synchronized (c13075yo.f50087a) {
                C13071yk c13071yk = c13075yo.f50089c;
                synchronized (c13071yk.f50078f) {
                    long zzzh = c13071yk.f50079g.zzzh();
                    long mo19039a = zzr.zzlc().mo19039a();
                    if (c13071yk.f50074b == -1) {
                        if (mo19039a - zzzh > ((Long) ekb.m14831e().m18571a(C12187aq.f42640aC)).longValue()) {
                            c13071yk.f50076d = -1;
                        } else {
                            c13071yk.f50076d = c13071yk.f50079g.zzzi();
                        }
                        c13071yk.f50074b = j;
                        c13071yk.f50073a = c13071yk.f50074b;
                    } else {
                        c13071yk.f50073a = j;
                    }
                    if (zzvqVar == null || zzvqVar.extras == null || zzvqVar.extras.getInt("gw", 2) != 1) {
                        c13071yk.f50075c++;
                        c13071yk.f50076d++;
                        if (c13071yk.f50076d == 0) {
                            c13071yk.f50077e = 0L;
                            c13071yk.f50079g.zzfb(mo19039a);
                        } else {
                            c13071yk.f50077e = mo19039a - c13071yk.f50079g.zzzj();
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        C13063yc c13063yc = this.f42567a;
        synchronized (c13063yc.f50033d) {
            if (c13063yc.f50039j != -1 && c13063yc.f50035f == -1) {
                c13063yc.f50035f = c13063yc.f50030a.mo19038b();
                c13063yc.f50031b.m13954a(c13063yc);
            }
            C13075yo c13075yo = c13063yc.f50031b;
            synchronized (c13075yo.f50087a) {
                C13071yk c13071yk = c13075yo.f50089c;
                synchronized (c13071yk.f50078f) {
                    c13071yk.f50081i++;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
        C13063yc c13063yc = this.f42567a;
        synchronized (c13063yc.f50033d) {
            if (c13063yc.f50039j != -1 && !c13063yc.f50032c.isEmpty()) {
                C13062yb last = c13063yc.f50032c.getLast();
                if (last.f50028b == -1) {
                    last.f50028b = last.f50029c.f50030a.mo19038b();
                    c13063yc.f50031b.m13954a(c13063yc);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        C13063yc c13063yc = this.f42567a;
        synchronized (c13063yc.f50033d) {
            if (c13063yc.f50039j != -1) {
                C13062yb c13062yb = new C13062yb(c13063yc);
                c13062yb.f50027a = c13062yb.f50029c.f50030a.mo19038b();
                c13063yc.f50032c.add(c13062yb);
                c13063yc.f50037h++;
                C13075yo c13075yo = c13063yc.f50031b;
                synchronized (c13075yo.f50087a) {
                    C13071yk c13071yk = c13075yo.f50089c;
                    synchronized (c13071yk.f50078f) {
                        c13071yk.f50080h++;
                    }
                }
                c13063yc.f50031b.m13954a(c13063yc);
            }
        }
    }
}
