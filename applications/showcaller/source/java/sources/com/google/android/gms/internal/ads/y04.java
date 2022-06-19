package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y04.class */
public final class y04 extends ie3<y04, u04> implements nf3 {
    private static final y04 zzr;
    private int zzb;
    private long zzf;
    private long zzj;
    private long zzk;
    private long zzm;
    private int zzq;
    private String zze = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzl = "";
    private String zzn = "";
    private String zzo = "";
    private re3<w04> zzp = ie3.m14425o();

    static {
        y04 y04Var = new y04();
        zzr = y04Var;
        ie3.m14414z(y04.class, y04Var);
    }

    private y04() {
    }

    /* renamed from: C */
    public static u04 m9004C() {
        return zzr.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m9002E(y04 y04Var, String str) {
        str.getClass();
        y04Var.zzb |= 1;
        y04Var.zze = str;
    }

    /* renamed from: F */
    public static /* synthetic */ void m9001F(y04 y04Var, long j) {
        y04Var.zzb |= 2;
        y04Var.zzf = j;
    }

    /* renamed from: G */
    public static /* synthetic */ void m9000G(y04 y04Var, String str) {
        str.getClass();
        y04Var.zzb |= 4;
        y04Var.zzg = str;
    }

    /* renamed from: H */
    public static /* synthetic */ void m8999H(y04 y04Var, String str) {
        str.getClass();
        y04Var.zzb |= 8;
        y04Var.zzh = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8998I(y04 y04Var, String str) {
        y04Var.zzb |= 16;
        y04Var.zzi = str;
    }

    /* renamed from: J */
    public static /* synthetic */ void m8997J(y04 y04Var, String str) {
        y04Var.zzb |= 1024;
        y04Var.zzo = str;
    }

    /* renamed from: L */
    public static /* synthetic */ void m8996L(y04 y04Var, int i) {
        y04Var.zzq = i - 1;
        y04Var.zzb |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzr, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001ဈ��\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", w04.class, "zzq", x04.f31874a});
            } else if (i2 == 3) {
                return new y04();
            } else {
                if (i2 == 4) {
                    return new u04(null);
                }
                if (i2 == 5) {
                    return zzr;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
