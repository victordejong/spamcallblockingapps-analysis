package com.google.android.gms.internal.icing;
/* JADX WARN: Init of enum zzpq can be incorrect */
/* JADX WARN: Init of enum zzpr can be incorrect */
/* JADX WARN: Init of enum zzps can be incorrect */
/* JADX WARN: Init of enum zzpt can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzha.class */
public enum zzha {
    DOUBLE(zzhh.DOUBLE, 1),
    FLOAT(zzhh.FLOAT, 5),
    INT64(zzhh.LONG, 0),
    UINT64(zzhh.LONG, 0),
    INT32(zzhh.INT, 0),
    FIXED64(zzhh.LONG, 1),
    FIXED32(zzhh.INT, 5),
    BOOL(zzhh.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.icing.zzhd
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.icing.zzhc
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.icing.zzhf
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.icing.zzhe
    },
    UINT32(zzhh.INT, 0),
    ENUM(zzhh.ENUM, 0),
    SFIXED32(zzhh.INT, 5),
    SFIXED64(zzhh.LONG, 1),
    SINT32(zzhh.INT, 0),
    SINT64(zzhh.LONG, 0);
    
    private final zzhh zzqa;
    private final int zzqb;

    static {
        final zzhh zzhhVar = zzhh.STRING;
        final zzhh zzhhVar2 = zzhh.MESSAGE;
        final zzhh zzhhVar3 = zzhh.MESSAGE;
        final zzhh zzhhVar4 = zzhh.BYTE_STRING;
    }

    zzha(zzhh zzhhVar, int i) {
        this.zzqa = zzhhVar;
        this.zzqb = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzha(zzhh zzhhVar, int i, zzhb zzhbVar) {
        this(zzhhVar, i);
    }

    public final zzhh zzdt() {
        return this.zzqa;
    }

    public final int zzdu() {
        return this.zzqb;
    }
}
