package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bh.class */
public final class C13387bh extends AbstractC13526gl<C13387bh, C13386bg> implements AbstractC13557hp {
    private static final C13387bh zzi;
    int zza;
    String zze = "";
    boolean zzf;
    boolean zzg;
    int zzh;

    static {
        C13387bh c13387bh = new C13387bh();
        zzi = c13387bh;
        AbstractC13526gl.m12763a(C13387bh.class, c13387bh);
    }

    private C13387bh() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m13217a(C13387bh c13387bh, String str) {
        str.getClass();
        c13387bh.zza |= 1;
        c13387bh.zze = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new C13387bh();
            }
            if (i2 == 4) {
                return new C13386bg(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
