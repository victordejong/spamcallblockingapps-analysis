package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bh.class */
public final class bh extends gl<bh, bg> implements hp {
    private static final bh zzi;
    int zza;
    String zze = "";
    boolean zzf;
    boolean zzg;
    int zzh;

    static {
        bh bhVar = new bh();
        zzi = bhVar;
        gl.a(bh.class, bhVar);
    }

    private bh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bh bhVar, String str) {
        str.getClass();
        bhVar.zza |= 1;
        bhVar.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new bh();
        }
        if (i2 == 4) {
            return new bg(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }
}
