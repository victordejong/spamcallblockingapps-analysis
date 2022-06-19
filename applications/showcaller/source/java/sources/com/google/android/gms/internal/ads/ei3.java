package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ei3.class */
public final class ei3 extends ie3<ei3, di3> implements nf3 {
    private static final ei3 zzo;
    private int zzb;
    private int zze;
    private qh3 zzg;
    private uh3 zzh;
    private int zzi;
    private int zzl;
    private byte zzn = (byte) 2;
    private String zzf = "";
    private ne3 zzj = ie3.m14428l();
    private String zzk = "";
    private re3<String> zzm = ie3.m14425o();

    static {
        ei3 ei3Var = new ei3();
        zzo = ei3Var;
        ie3.m14414z(ei3.class, ei3Var);
    }

    private ei3() {
    }

    /* renamed from: E */
    public static di3 m15457E() {
        return zzo.m14418v();
    }

    /* renamed from: G */
    public static /* synthetic */ void m15455G(ei3 ei3Var, int i) {
        ei3Var.zzb |= 1;
        ei3Var.zze = i;
    }

    /* renamed from: H */
    public static /* synthetic */ void m15454H(ei3 ei3Var, String str) {
        str.getClass();
        ei3Var.zzb |= 2;
        ei3Var.zzf = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m15453I(ei3 ei3Var, qh3 qh3Var) {
        qh3Var.getClass();
        ei3Var.zzg = qh3Var;
        ei3Var.zzb |= 4;
    }

    /* renamed from: J */
    public static /* synthetic */ void m15452J(ei3 ei3Var, String str) {
        str.getClass();
        re3<String> re3Var = ei3Var.zzm;
        if (!re3Var.zza()) {
            ei3Var.zzm = ie3.m14424p(re3Var);
        }
        ei3Var.zzm.add(str);
    }

    /* renamed from: L */
    public static /* synthetic */ void m15451L(ei3 ei3Var, int i) {
        ei3Var.zzl = i - 1;
        ei3Var.zzb |= 64;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return ie3.m14431A(zzo, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001ᔄ��\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", bi3.f20472a, "zzm"});
            } else if (i2 == 3) {
                return new ei3();
            } else {
                if (i2 == 4) {
                    return new di3(null);
                }
                if (i2 == 5) {
                    return zzo;
                }
                if (obj == null) {
                    i3 = 0;
                }
                this.zzn = (byte) i3;
                return null;
            }
        }
        return Byte.valueOf(this.zzn);
    }

    /* renamed from: C */
    public final String m15459C() {
        return this.zzf;
    }

    /* renamed from: D */
    public final int m15458D() {
        return this.zzm.size();
    }
}
