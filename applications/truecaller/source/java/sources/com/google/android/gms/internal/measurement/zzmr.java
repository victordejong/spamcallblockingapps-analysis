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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmr.class */
public enum zzmr {
    DOUBLE(zzms.DOUBLE, 1),
    FLOAT(zzms.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzms.BOOLEAN, 0),
    STRING(zzms.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(zzms.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(zzms.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzms zzt;

    static {
        zzms zzmsVar = zzms.LONG;
        zzms zzmsVar2 = zzms.INT;
        zzms zzmsVar3 = zzms.MESSAGE;
    }

    zzmr(zzms zzmsVar, int i) {
        this.zzt = zzmsVar;
    }

    public final zzms zza() {
        return this.zzt;
    }
}
