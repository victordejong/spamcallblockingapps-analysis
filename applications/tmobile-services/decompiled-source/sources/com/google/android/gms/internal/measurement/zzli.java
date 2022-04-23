package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum zzi can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzl can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzli.class */
public enum zzli {
    DOUBLE(zzll.DOUBLE, 1),
    FLOAT(zzll.FLOAT, 5),
    INT64(zzll.LONG, 0),
    UINT64(zzll.LONG, 0),
    INT32(zzll.INT, 0),
    FIXED64(zzll.LONG, 1),
    FIXED32(zzll.INT, 5),
    BOOL(zzll.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzlh
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.measurement.zzlk
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzlj
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzlm
    },
    UINT32(zzll.INT, 0),
    ENUM(zzll.ENUM, 0),
    SFIXED32(zzll.INT, 5),
    SFIXED64(zzll.LONG, 1),
    SINT32(zzll.INT, 0),
    SINT64(zzll.LONG, 0);
    
    private final zzll zzs;
    private final int zzt;

    static {
        final zzll zzllVar = zzll.STRING;
        final zzll zzllVar2 = zzll.MESSAGE;
        final zzll zzllVar3 = zzll.MESSAGE;
        final zzll zzllVar4 = zzll.BYTE_STRING;
    }

    zzli(zzll zzllVar, int i) {
        this.zzs = zzllVar;
        this.zzt = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzli(zzll zzllVar, int i, zzlf zzlfVar) {
        this(zzllVar, i);
    }

    public final zzll zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
