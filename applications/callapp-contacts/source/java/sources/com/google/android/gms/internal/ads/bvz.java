package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvz.class */
public final class bvz {

    /* renamed from: a */
    private final cpz f44905a;

    /* renamed from: b */
    private final bja f44906b;

    /* renamed from: c */
    private final bli f44907c;

    /* renamed from: d */
    private final cty f44908d;

    public bvz(cpz cpzVar, bja bjaVar, bli bliVar, cty ctyVar) {
        this.f44905a = cpzVar;
        this.f44906b = bjaVar;
        this.f44907c = bliVar;
        this.f44908d = ctyVar;
    }

    /* renamed from: a */
    public final void m17597a(coz cozVar, cov covVar, int i, zzctd zzctdVar, long j) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
            ctz m17225a = ctz.m17226a("adapter_status").m17228a(cozVar).m17229a(covVar).m17225a("adapter_l", String.valueOf(j)).m17225a("sc", Integer.toString(i));
            if (zzctdVar != null) {
                m17225a.m17225a("arec", Integer.toString(zzctdVar.f50215b.errorCode));
                String m17344a = this.f44905a.m17344a(zzctdVar.getMessage());
                if (m17344a != null) {
                    m17225a.m17225a("areec", m17344a);
                }
            }
            bjb m17814a = this.f44906b.m17814a(covVar.f46272s);
            if (m17814a != null) {
                m17225a.m17225a("ancn", m17814a.f44086a);
                if (m17814a.f44087b != null) {
                    m17225a.m17225a("adapter_v", m17814a.f44087b.toString());
                }
                if (m17814a.f44088c != null) {
                    m17225a.m17225a("adapter_sv", m17814a.f44088c.toString());
                }
            }
            this.f44908d.mo17215a(m17225a);
            return;
        }
        blh m17767a = this.f44907c.m17765a().m17768a(cozVar).m17769a(covVar).m17767a("action", "adapter_status").m17767a("adapter_l", String.valueOf(j));
        m17767a.m17767a("sc", Integer.toString(i));
        if (zzctdVar != null) {
            m17767a.m17767a("arec", Integer.toString(zzctdVar.f50215b.errorCode));
            String m17344a2 = this.f44905a.m17344a(zzctdVar.getMessage());
            if (m17344a2 != null) {
                m17767a.m17767a("areec", m17344a2);
            }
        }
        bjb m17814a2 = this.f44906b.m17814a(covVar.f46272s);
        if (m17814a2 != null) {
            m17767a.m17767a("ancn", m17814a2.f44086a);
            if (m17814a2.f44087b != null) {
                m17767a.m17767a("adapter_v", m17814a2.f44087b.toString());
            }
            if (m17814a2.f44088c != null) {
                m17767a.m17767a("adapter_sv", m17814a2.f44088c.toString());
            }
        }
        m17767a.m17771a();
    }
}
