package com.google.android.gms.internal.ads;
/* JADX WARN: Init of enum zzc can be incorrect */
/* JADX WARN: Init of enum zzd can be incorrect */
/* JADX WARN: Init of enum zze can be incorrect */
/* JADX WARN: Init of enum zzf can be incorrect */
/* JADX WARN: Init of enum zzg can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzm can be incorrect */
/* JADX WARN: Init of enum zzo can be incorrect */
/* JADX WARN: Init of enum zzp can be incorrect */
/* JADX WARN: Init of enum zzq can be incorrect */
/* JADX WARN: Init of enum zzr can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnv.class */
public enum zzgnv {
    DOUBLE(zzgnw.DOUBLE, 1),
    FLOAT(zzgnw.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzgnw.BOOLEAN, 0),
    STRING(zzgnw.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(zzgnw.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(zzgnw.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzgnw zzt;

    static {
        zzgnw zzgnwVar = zzgnw.LONG;
        zzgnw zzgnwVar2 = zzgnw.INT;
        zzgnw zzgnwVar3 = zzgnw.MESSAGE;
    }

    zzgnv(zzgnw zzgnwVar, int i) {
        this.zzt = zzgnwVar;
    }

    public final zzgnw zza() {
        return this.zzt;
    }
}
