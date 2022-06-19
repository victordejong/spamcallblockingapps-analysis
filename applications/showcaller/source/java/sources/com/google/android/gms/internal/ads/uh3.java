package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uh3.class */
public final class uh3 extends ie3<uh3, rh3> implements nf3 {
    private static final uh3 zzl;
    private int zzb;
    private th3 zze;
    private zzgex zzg;
    private zzgex zzh;
    private int zzi;
    private zzgex zzj;
    private byte zzk = (byte) 2;
    private re3<mh3> zzf = ie3.m14425o();

    static {
        uh3 uh3Var = new uh3();
        zzl = uh3Var;
        ie3.m14414z(uh3.class, uh3Var);
    }

    private uh3() {
        zzgex zzgexVar = zzgex.f34110d;
        this.zzg = zzgexVar;
        this.zzh = zzgexVar;
        this.zzj = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return ie3.m14431A(zzl, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzb", "zze", "zzf", mh3.class, "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new uh3();
            }
            if (i2 == 4) {
                return new rh3(null);
            }
            if (i2 == 5) {
                return zzl;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzk = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzk);
    }
}
