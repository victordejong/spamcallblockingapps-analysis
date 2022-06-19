package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzim.class */
public enum zzim {
    DOUBLE(zzip.DOUBLE, 1),
    FLOAT(zzip.FLOAT, 5),
    INT64(zzip.LONG, 0),
    UINT64(zzip.LONG, 0),
    INT32(zzip.INT, 0),
    FIXED64(zzip.LONG, 1),
    FIXED32(zzip.INT, 5),
    BOOL(zzip.BOOLEAN, 0),
    STRING(zzip.STRING, 2) { // from class: com.google.android.gms.internal.measurement.zzil
    },
    GROUP(zzip.MESSAGE, 3) { // from class: com.google.android.gms.internal.measurement.zzio
    },
    MESSAGE(zzip.MESSAGE, 2) { // from class: com.google.android.gms.internal.measurement.zzin
    },
    BYTES(zzip.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.measurement.zziq
    },
    UINT32(zzip.INT, 0),
    ENUM(zzip.ENUM, 0),
    SFIXED32(zzip.INT, 5),
    SFIXED64(zzip.LONG, 1),
    SINT32(zzip.INT, 0),
    SINT64(zzip.LONG, 0);
    
    private final zzip zzs;
    private final int zzt;

    zzim(zzip zzipVar, int i) {
        this.zzs = zzipVar;
        this.zzt = i;
    }

    /* synthetic */ zzim(zzip zzipVar, int i, zzij zzijVar) {
        this(zzipVar, i);
    }

    public final zzip zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
