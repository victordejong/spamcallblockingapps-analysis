package com.google.android.gms.internal.measurement;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmx.class */
public enum zzmx {
    DOUBLE(zzmy.DOUBLE, 1),
    FLOAT(zzmy.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzmy.BOOLEAN, 0),
    STRING(zzmy.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(zzmy.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(zzmy.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzmy zzs;

    static {
        zzmy zzmyVar = zzmy.LONG;
        zzmy zzmyVar2 = zzmy.INT;
        zzmy zzmyVar3 = zzmy.MESSAGE;
    }

    zzmx(zzmy zzmyVar, int i) {
        this.zzs = zzmyVar;
    }

    public final zzmy zza() {
        return this.zzs;
    }
}
