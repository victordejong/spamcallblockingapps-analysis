package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f02.class */
public final class f02 {

    /* renamed from: a */
    private final kk2 f22695a;

    /* renamed from: b */
    private final ll1 f22696b;

    /* renamed from: c */
    private final rn1 f22697c;

    /* renamed from: d */
    private final jo2 f22698d;

    public f02(kk2 kk2Var, ll1 ll1Var, rn1 rn1Var, jo2 jo2Var) {
        this.f22695a = kk2Var;
        this.f22696b = ll1Var;
        this.f22697c = rn1Var;
        this.f22698d = jo2Var;
    }

    /* renamed from: a */
    public final void m15328a(jj2 jj2Var, ej2 ej2Var, int i, zzeeg zzeegVar, long j) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
            io2 m14338a = io2.m14338a("adapter_status");
            m14338a.m14331h(jj2Var);
            m14338a.m14330i(ej2Var);
            m14338a.m14336c("adapter_l", String.valueOf(j));
            m14338a.m14336c("sc", Integer.toString(i));
            if (zzeegVar != null) {
                m14338a.m14336c("arec", Integer.toString(zzeegVar.zzb().f33653d));
                String m13870a = this.f22695a.m13870a(zzeegVar.getMessage());
                if (m13870a != null) {
                    m14338a.m14336c("areec", m13870a);
                }
            }
            kl1 m13484d = this.f22696b.m13484d(ej2Var.f22248t);
            if (m13484d != null) {
                m14338a.m14336c("ancn", m13484d.f25244a);
                zzbya zzbyaVar = m13484d.f25245b;
                if (zzbyaVar != null) {
                    m14338a.m14336c("adapter_v", zzbyaVar.toString());
                }
                zzbya zzbyaVar2 = m13484d.f25246c;
                if (zzbyaVar2 != null) {
                    m14338a.m14336c("adapter_sv", zzbyaVar2.toString());
                }
            }
            this.f22698d.mo9502b(m14338a);
            return;
        }
        qn1 m11371d = this.f22697c.m11371d();
        m11371d.m11847b(jj2Var);
        m11371d.m11846c(ej2Var);
        m11371d.m11845d("action", "adapter_status");
        m11371d.m11845d("adapter_l", String.valueOf(j));
        m11371d.m11845d("sc", Integer.toString(i));
        if (zzeegVar != null) {
            m11371d.m11845d("arec", Integer.toString(zzeegVar.zzb().f33653d));
            String m13870a2 = this.f22695a.m13870a(zzeegVar.getMessage());
            if (m13870a2 != null) {
                m11371d.m11845d("areec", m13870a2);
            }
        }
        kl1 m13484d2 = this.f22696b.m13484d(ej2Var.f22248t);
        if (m13484d2 != null) {
            m11371d.m11845d("ancn", m13484d2.f25244a);
            zzbya zzbyaVar3 = m13484d2.f25245b;
            if (zzbyaVar3 != null) {
                m11371d.m11845d("adapter_v", zzbyaVar3.toString());
            }
            zzbya zzbyaVar4 = m13484d2.f25246c;
            if (zzbyaVar4 != null) {
                m11371d.m11845d("adapter_sv", zzbyaVar4.toString());
            }
        }
        m11371d.m11844e();
    }
}
