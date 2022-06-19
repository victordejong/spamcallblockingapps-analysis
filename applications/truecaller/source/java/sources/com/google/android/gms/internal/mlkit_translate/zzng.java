package com.google.android.gms.internal.mlkit_translate;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzng.class */
public enum zzng {
    DOUBLE(zznn.DOUBLE, 1),
    FLOAT(zznn.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zznn.BOOLEAN, 0),
    STRING(zznn.STRING, 2) { // from class: com.google.android.gms.internal.mlkit_translate.zznj
    },
    GROUP(r0, 3) { // from class: com.google.android.gms.internal.mlkit_translate.zzni
    },
    MESSAGE(r0, 2) { // from class: com.google.android.gms.internal.mlkit_translate.zznl
    },
    BYTES(zznn.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.mlkit_translate.zznk
    },
    UINT32(r0, 0),
    ENUM(zznn.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zznn zzs;
    private final int zzt;

    static {
        zznn zznnVar = zznn.LONG;
        zznn zznnVar2 = zznn.INT;
        zznn zznnVar3 = zznn.MESSAGE;
    }

    zzng(zznn zznnVar, int i) {
        this.zzs = zznnVar;
        this.zzt = i;
    }

    /* synthetic */ zzng(zznn zznnVar, int i, zznh zznhVar) {
        this(zznnVar, i);
    }

    public final zznn zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
