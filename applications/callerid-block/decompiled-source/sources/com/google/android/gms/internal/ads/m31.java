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
            zp1 a = zp1.m4559a("adapter_status");
            a.m4552h(dl1Var);
            a.m4551i(al1Var);
            a.m4557c("adapter_l", String.valueOf(j));
            a.m4557c("sc", Integer.toString(i));
            if (zzcwaVar != null) {
                a.m4557c("arec", Integer.toString(zzcwaVar.zzb().b));
                String a2 = this.f7552a.m7608a(zzcwaVar.getMessage());
                if (a2 != null) {
                    a.m4557c("areec", a2);
                }
            }
            bp0 d = this.f7553b.m7787d(al1Var.f6032s);
            if (d != null) {
                a.m4557c("ancn", d.f6195a);
                zzasv zzasvVar = d.f6196b;
                if (zzasvVar != null) {
                    a.m4557c("adapter_v", zzasvVar.toString());
                }
                zzasv zzasvVar2 = d.f6197c;
                if (zzasvVar2 != null) {
                    a.m4557c("adapter_sv", zzasvVar2.toString());
                }
            }
            this.f7555d.m8101b(a);
            return;
        }
        ir0 a3 = this.f7554c.m6930a();
        a3.m7106a(dl1Var);
        a3.m7105b(al1Var);
        a3.m7104c("action", "adapter_status");
        a3.m7104c("adapter_l", String.valueOf(j));
        a3.m7104c("sc", Integer.toString(i));
        if (zzcwaVar != null) {
            a3.m7104c("arec", Integer.toString(zzcwaVar.zzb().b));
            String a4 = this.f7552a.m7608a(zzcwaVar.getMessage());
            if (a4 != null) {
                a3.m7104c("areec", a4);
            }
        }
        bp0 d2 = this.f7553b.m7787d(al1Var.f6032s);
        if (d2 != null) {
            a3.m7104c("ancn", d2.f6195a);
            zzasv zzasvVar3 = d2.f6196b;
            if (zzasvVar3 != null) {
                a3.m7104c("adapter_v", zzasvVar3.toString());
            }
            zzasv zzasvVar4 = d2.f6197c;
            if (zzasvVar4 != null) {
                a3.m7104c("adapter_sv", zzasvVar4.toString());
            }
        }
        a3.m7103d();
    }
}
