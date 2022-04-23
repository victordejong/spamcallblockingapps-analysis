package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhw.class */
final class zzhw implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ boolean f9459f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9460g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhw(zzgy zzgyVar, boolean z) {
        this.f9460g = zzgyVar;
        this.f9459f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean p = this.f9460g.f9354a.m11357p();
        boolean T = this.f9460g.f9354a.m11368T();
        this.f9460g.f9354a.m11358o(this.f9459f);
        if (T == this.f9459f) {
            this.f9460g.f9354a.mo11081c().m11552L().m11539b("Default data collection state already set to", Boolean.valueOf(this.f9459f));
        }
        if (this.f9460g.f9354a.m11357p() == p || this.f9460g.f9354a.m11357p() != this.f9460g.f9354a.m11368T()) {
            this.f9460g.f9354a.mo11081c().m11555I().m11538c("Default data collection is different than actual status", Boolean.valueOf(this.f9459f), Boolean.valueOf(p));
        }
        this.f9460g.m11255p0();
    }
}
