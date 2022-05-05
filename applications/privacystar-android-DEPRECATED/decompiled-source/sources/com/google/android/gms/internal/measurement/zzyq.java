package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum zzcdy can be incorrect */
/* JADX WARN: Init of enum zzcdz can be incorrect */
/* JADX WARN: Init of enum zzcea can be incorrect */
/* JADX WARN: Init of enum zzceb can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyq.class */
public enum zzyq {
    DOUBLE(zzyv.DOUBLE, 1),
    FLOAT(zzyv.FLOAT, 5),
    INT64(zzyv.LONG, 0),
    UINT64(zzyv.LONG, 0),
    INT32(zzyv.INT, 0),
    FIXED64(zzyv.LONG, 1),
    FIXED32(zzyv.INT, 5),
    BOOL(zzyv.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzyr
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.measurement.zzys
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzyt
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.measurement.zzyu
    },
    UINT32(zzyv.INT, 0),
    ENUM(zzyv.ENUM, 0),
    SFIXED32(zzyv.INT, 5),
    SFIXED64(zzyv.LONG, 1),
    SINT32(zzyv.INT, 0),
    SINT64(zzyv.LONG, 0);
    
    private final zzyv zzcei;
    private final int zzcej;

    static {
        final zzyv zzyvVar = zzyv.STRING;
        final zzyv zzyvVar2 = zzyv.MESSAGE;
        final zzyv zzyvVar3 = zzyv.MESSAGE;
        final zzyv zzyvVar4 = zzyv.BYTE_STRING;
    }

    zzyq(zzyv zzyvVar, int i) {
        this.zzcei = zzyvVar;
        this.zzcej = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzyq(zzyv zzyvVar, int i, zzyp zzypVar) {
        this(zzyvVar, i);
    }

    public final zzyv zzyp() {
        return this.zzcei;
    }

    public final int zzyq() {
        return this.zzcej;
    }
}
