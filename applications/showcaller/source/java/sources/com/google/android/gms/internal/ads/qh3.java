package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qh3.class */
public final class qh3 extends ie3<qh3, nh3> implements nf3 {
    private static final qh3 zzk;
    private int zzb;
    private ph3 zze;
    private zzgex zzg;
    private zzgex zzh;
    private int zzi;
    private byte zzj = (byte) 2;
    private re3<mh3> zzf = ie3.m14425o();

    static {
        qh3 qh3Var = new qh3();
        zzk = qh3Var;
        ie3.m14414z(qh3.class, qh3Var);
    }

    private qh3() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zzg = zzgexVar;
        this.zzh = zzgexVar;
    }

    /* renamed from: C */
    public static nh3 m11887C() {
        return zzk.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m11885E(qh3 qh3Var, mh3 mh3Var) {
        mh3Var.getClass();
        re3<mh3> re3Var = qh3Var.zzf;
        if (!re3Var.zza()) {
            qh3Var.zzf = ie3.m14424p(re3Var);
        }
        qh3Var.zzf.add(mh3Var);
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return ie3.m14431A(zzk, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzb", "zze", "zzf", mh3.class, "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new qh3();
            }
            if (i2 == 4) {
                return new nh3(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzj = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzj);
    }
}
