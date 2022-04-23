package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvz.class */
public final class bvz {

    /* renamed from: a  reason: collision with root package name */
    private final cpz f25242a;

    /* renamed from: b  reason: collision with root package name */
    private final bja f25243b;

    /* renamed from: c  reason: collision with root package name */
    private final bli f25244c;

    /* renamed from: d  reason: collision with root package name */
    private final cty f25245d;

    public bvz(cpz cpzVar, bja bjaVar, bli bliVar, cty ctyVar) {
        this.f25242a = cpzVar;
        this.f25243b = bjaVar;
        this.f25244c = bliVar;
        this.f25245d = ctyVar;
    }

    public final void a(coz cozVar, cov covVar, int i, zzctd zzctdVar, long j) {
        if (((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
            ctz a2 = ctz.a("adapter_status").a(cozVar).a(covVar).a("adapter_l", String.valueOf(j)).a("sc", Integer.toString(i));
            if (zzctdVar != null) {
                a2.a("arec", Integer.toString(zzctdVar.f28620b.errorCode));
                String a3 = this.f25242a.a(zzctdVar.getMessage());
                if (a3 != null) {
                    a2.a("areec", a3);
                }
            }
            bjb a4 = this.f25243b.a(covVar.s);
            if (a4 != null) {
                a2.a("ancn", a4.f24536a);
                if (a4.f24537b != null) {
                    a2.a("adapter_v", a4.f24537b.toString());
                }
                if (a4.f24538c != null) {
                    a2.a("adapter_sv", a4.f24538c.toString());
                }
            }
            this.f25245d.a(a2);
            return;
        }
        blh a5 = this.f25244c.a().a(cozVar).a(covVar).a("action", "adapter_status").a("adapter_l", String.valueOf(j));
        a5.a("sc", Integer.toString(i));
        if (zzctdVar != null) {
            a5.a("arec", Integer.toString(zzctdVar.f28620b.errorCode));
            String a6 = this.f25242a.a(zzctdVar.getMessage());
            if (a6 != null) {
                a5.a("areec", a6);
            }
        }
        bjb a7 = this.f25243b.a(covVar.s);
        if (a7 != null) {
            a5.a("ancn", a7.f24536a);
            if (a7.f24537b != null) {
                a5.a("adapter_v", a7.f24537b.toString());
            }
            if (a7.f24538c != null) {
                a5.a("adapter_sv", a7.f24538c.toString());
            }
        }
        a5.a();
    }
}
