package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mh3.class */
public final class mh3 extends ie3<mh3, lh3> implements nf3 {
    private static final mh3 zzh;
    private int zzb;
    private zzgex zze;
    private zzgex zzf;
    private byte zzg = (byte) 2;

    static {
        mh3 mh3Var = new mh3();
        zzh = mh3Var;
        ie3.m14414z(mh3.class, mh3Var);
    }

    private mh3() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zze = zzgexVar;
        this.zzf = zzgexVar;
    }

    /* renamed from: C */
    public static lh3 m13196C() {
        return zzh.m14418v();
    }

    /* renamed from: D */
    public static /* synthetic */ mh3 m13195D() {
        return zzh;
    }

    /* renamed from: E */
    public static /* synthetic */ void m13194E(mh3 mh3Var, zzgex zzgexVar) {
        mh3Var.zzb |= 1;
        mh3Var.zze = zzgexVar;
    }

    /* renamed from: F */
    public static /* synthetic */ void m13193F(mh3 mh3Var, zzgex zzgexVar) {
        mh3Var.zzb |= 2;
        mh3Var.zzf = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new mh3();
            }
            if (i2 == 4) {
                return new lh3(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzg = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzg);
    }
}
