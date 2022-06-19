package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/m31.class */
public final class m31 {

    /* renamed from: a */
    private final em1 f7552a;

    /* renamed from: b */
    private final cp0 f7553b;

    /* renamed from: c */
    private final jr0 f7554c;

    /* renamed from: d */
    private final aq1 f7555d;

    public m31(em1 em1Var, cp0 cp0Var, jr0 jr0Var, aq1 aq1Var) {
        this.f7552a = em1Var;
        this.f7553b = cp0Var;
        this.f7554c = jr0Var;
        this.f7555d = aq1Var;
    }

    /* renamed from: a */
    public final void m6596a(dl1 dl1Var, al1 al1Var, int i, @Nullable zzcwa zzcwaVar, long j) {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7411f5)).booleanValue()) {
            zp1 m4559a = zp1.m4559a("adapter_status");
            m4559a.m4552h(dl1Var);
            m4559a.m4551i(al1Var);
            m4559a.m4557c("adapter_l", String.valueOf(j));
            m4559a.m4557c("sc", Integer.toString(i));
            if (zzcwaVar != null) {
                m4559a.m4557c("arec", Integer.toString(zzcwaVar.zzb().b));
                String m7608a = this.f7552a.m7608a(zzcwaVar.getMessage());
                if (m7608a != null) {
                    m4559a.m4557c("areec", m7608a);
                }
            }
            bp0 m7787d = this.f7553b.m7787d(al1Var.f6032s);
            if (m7787d != null) {
                m4559a.m4557c("ancn", m7787d.f6195a);
                zzasv zzasvVar = m7787d.f6196b;
                if (zzasvVar != null) {
                    m4559a.m4557c("adapter_v", zzasvVar.toString());
                }
                zzasv zzasvVar2 = m7787d.f6197c;
                if (zzasvVar2 != null) {
                    m4559a.m4557c("adapter_sv", zzasvVar2.toString());
                }
            }
            this.f7555d.m8101b(m4559a);
            return;
        }
        ir0 m6930a = this.f7554c.m6930a();
        m6930a.m7106a(dl1Var);
        m6930a.m7105b(al1Var);
        m6930a.m7104c("action", "adapter_status");
        m6930a.m7104c("adapter_l", String.valueOf(j));
        m6930a.m7104c("sc", Integer.toString(i));
        if (zzcwaVar != null) {
            m6930a.m7104c("arec", Integer.toString(zzcwaVar.zzb().b));
            String m7608a2 = this.f7552a.m7608a(zzcwaVar.getMessage());
            if (m7608a2 != null) {
                m6930a.m7104c("areec", m7608a2);
            }
        }
        bp0 m7787d2 = this.f7553b.m7787d(al1Var.f6032s);
        if (m7787d2 != null) {
            m6930a.m7104c("ancn", m7787d2.f6195a);
            zzasv zzasvVar3 = m7787d2.f6196b;
            if (zzasvVar3 != null) {
                m6930a.m7104c("adapter_v", zzasvVar3.toString());
            }
            zzasv zzasvVar4 = m7787d2.f6197c;
            if (zzasvVar4 != null) {
                m6930a.m7104c("adapter_sv", zzasvVar4.toString());
            }
        }
        m6930a.m7103d();
    }
}
