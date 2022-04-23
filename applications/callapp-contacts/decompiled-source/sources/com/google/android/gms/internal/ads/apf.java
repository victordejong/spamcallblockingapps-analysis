package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apf.class */
public final class apf implements aro, ash, atb, auf, eir {

    /* renamed from: a  reason: collision with root package name */
    final yc f23699a;

    /* renamed from: b  reason: collision with root package name */
    private final f f23700b;

    public apf(f fVar, yc ycVar) {
        this.f23700b = fVar;
        this.f23699a = ycVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        yc ycVar = this.f23699a;
        synchronized (ycVar.f28525d) {
            if (ycVar.j != -1) {
                ycVar.g = ycVar.f28522a.b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
        yc ycVar = this.f23699a;
        long b2 = this.f23700b.b();
        synchronized (ycVar.f28525d) {
            ycVar.j = b2;
            if (ycVar.j != -1) {
                ycVar.f28523b.a(ycVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(tp tpVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
    }

    public final void a(zzvq zzvqVar) {
        yc ycVar = this.f23699a;
        synchronized (ycVar.f28525d) {
            ycVar.i = ycVar.f28522a.b();
            yo yoVar = ycVar.f28523b;
            long j = ycVar.i;
            synchronized (yoVar.f28551a) {
                yk ykVar = yoVar.f28553c;
                synchronized (ykVar.f) {
                    long zzzh = ykVar.g.zzzh();
                    long a2 = zzr.zzlc().a();
                    if (ykVar.f28544b == -1) {
                        if (a2 - zzzh > ((Long) ekb.e().a(aq.aC)).longValue()) {
                            ykVar.f28546d = -1;
                        } else {
                            ykVar.f28546d = ykVar.g.zzzi();
                        }
                        ykVar.f28544b = j;
                        ykVar.f28543a = ykVar.f28544b;
                    } else {
                        ykVar.f28543a = j;
                    }
                    if (zzvqVar == null || zzvqVar.extras == null || zzvqVar.extras.getInt("gw", 2) != 1) {
                        ykVar.f28545c++;
                        ykVar.f28546d++;
                        if (ykVar.f28546d == 0) {
                            ykVar.e = 0L;
                            ykVar.g.zzfb(a2);
                        } else {
                            ykVar.e = a2 - ykVar.g.zzzj();
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        yc ycVar = this.f23699a;
        synchronized (ycVar.f28525d) {
            if (ycVar.j != -1 && ycVar.f == -1) {
                ycVar.f = ycVar.f28522a.b();
                ycVar.f28523b.a(ycVar);
            }
            yo yoVar = ycVar.f28523b;
            synchronized (yoVar.f28551a) {
                yk ykVar = yoVar.f28553c;
                synchronized (ykVar.f) {
                    ykVar.i++;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
        yc ycVar = this.f23699a;
        synchronized (ycVar.f28525d) {
            if (ycVar.j != -1 && !ycVar.f28524c.isEmpty()) {
                yb last = ycVar.f28524c.getLast();
                if (last.f28520b == -1) {
                    last.f28520b = last.f28521c.f28522a.b();
                    ycVar.f28523b.a(ycVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        yc ycVar = this.f23699a;
        synchronized (ycVar.f28525d) {
            if (ycVar.j != -1) {
                yb ybVar = new yb(ycVar);
                ybVar.f28519a = ybVar.f28521c.f28522a.b();
                ycVar.f28524c.add(ybVar);
                ycVar.h++;
                yo yoVar = ycVar.f28523b;
                synchronized (yoVar.f28551a) {
                    yk ykVar = yoVar.f28553c;
                    synchronized (ykVar.f) {
                        ykVar.h++;
                    }
                }
                ycVar.f28523b.a(ycVar);
            }
        }
    }
}
