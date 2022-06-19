package com.google.android.gms.internal.mlkit_language_id;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzhv.class */
public enum zzhv {
    DOUBLE(zzhy.DOUBLE, 1),
    FLOAT(zzhy.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzhy.BOOLEAN, 0),
    STRING(zzhy.STRING, 2) { // from class: com.google.android.gms.internal.mlkit_language_id.zzhu
    },
    GROUP(r0, 3) { // from class: com.google.android.gms.internal.mlkit_language_id.zzhx
    },
    MESSAGE(r0, 2) { // from class: com.google.android.gms.internal.mlkit_language_id.zzhw
    },
    BYTES(zzhy.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.mlkit_language_id.zzhz
    },
    UINT32(r0, 0),
    ENUM(zzhy.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzhy zzs;
    private final int zzt;

    static {
        zzhy zzhyVar = zzhy.LONG;
        zzhy zzhyVar2 = zzhy.INT;
        zzhy zzhyVar3 = zzhy.MESSAGE;
    }

    zzhv(zzhy zzhyVar, int i) {
        this.zzs = zzhyVar;
        this.zzt = i;
    }

    /* synthetic */ zzhv(zzhy zzhyVar, int i, zzhs zzhsVar) {
        this(zzhyVar, i);
    }

    public final zzhy zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
