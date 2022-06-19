package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzio.class */
public enum zzio implements zzke {
    UNRECOGNIZED(0),
    CODE_128(1),
    CODE_39(2),
    CODE_93(3),
    CODABAR(4),
    DATA_MATRIX(5),
    EAN_13(6),
    EAN_8(7),
    ITF(8),
    QR_CODE(9),
    UPC_A(10),
    UPC_E(11),
    PDF417(12),
    AZTEC(13),
    DATABAR(14),
    TEZ_CODE(16);
    
    private static final zzkh<zzio> zzq = new zzkh<zzio>() { // from class: com.google.android.gms.internal.mlkit_translate.zzir
    };
    private final int zzr;

    zzio(int i) {
        this.zzr = i;
    }

    public static zzkg zzb() {
        return zziq.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzio.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzr + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzke
    public final int zza() {
        return this.zzr;
    }
}
