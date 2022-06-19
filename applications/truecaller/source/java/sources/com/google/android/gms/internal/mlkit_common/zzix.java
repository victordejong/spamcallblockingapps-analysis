package com.google.android.gms.internal.mlkit_common;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzix.class */
public enum zzix {
    DOUBLE(zzja.DOUBLE, 1),
    FLOAT(zzja.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzja.BOOLEAN, 0),
    STRING(zzja.STRING, 2) { // from class: com.google.android.gms.internal.mlkit_common.zziw
    },
    GROUP(r0, 3) { // from class: com.google.android.gms.internal.mlkit_common.zziz
    },
    MESSAGE(r0, 2) { // from class: com.google.android.gms.internal.mlkit_common.zziy
    },
    BYTES(zzja.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.mlkit_common.zzjb
    },
    UINT32(r0, 0),
    ENUM(zzja.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzja zzs;
    private final int zzt;

    static {
        zzja zzjaVar = zzja.LONG;
        zzja zzjaVar2 = zzja.INT;
        zzja zzjaVar3 = zzja.MESSAGE;
    }

    zzix(zzja zzjaVar, int i) {
        this.zzs = zzjaVar;
        this.zzt = i;
    }

    /* synthetic */ zzix(zzja zzjaVar, int i, zziu zziuVar) {
        this(zzjaVar, i);
    }

    public final zzja zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
