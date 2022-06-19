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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgje.class */
public enum zzgje {
    DOUBLE(zzgjf.DOUBLE, 1),
    FLOAT(zzgjf.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzgjf.BOOLEAN, 0),
    STRING(zzgjf.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(zzgjf.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(zzgjf.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzgjf zzs;

    static {
        zzgjf zzgjfVar = zzgjf.LONG;
        zzgjf zzgjfVar2 = zzgjf.INT;
        zzgjf zzgjfVar3 = zzgjf.MESSAGE;
    }

    zzgje(zzgjf zzgjfVar, int i) {
        this.zzs = zzgjfVar;
    }

    public final zzgjf zza() {
        return this.zzs;
    }
}
