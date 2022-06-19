package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum f can be incorrect */
/* JADX WARN: Init of enum g can be incorrect */
/* JADX WARN: Init of enum h can be incorrect */
/* JADX WARN: Init of enum i can be incorrect */
/* JADX WARN: Init of enum j can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* JADX WARN: Init of enum p can be incorrect */
/* JADX WARN: Init of enum r can be incorrect */
/* JADX WARN: Init of enum s can be incorrect */
/* JADX WARN: Init of enum t can be incorrect */
/* JADX WARN: Init of enum u can be incorrect */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkl.class */
public enum zzkl {
    DOUBLE(zzkm.DOUBLE, 1),
    FLOAT(zzkm.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzkm.BOOLEAN, 0),
    STRING(zzkm.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(zzkm.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(zzkm.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzkm zzs;

    static {
        zzkm zzkmVar = zzkm.LONG;
        zzkm zzkmVar2 = zzkm.INT;
        zzkm zzkmVar3 = zzkm.MESSAGE;
    }

    zzkl(zzkm zzkmVar, int i) {
        this.zzs = zzkmVar;
    }

    public final zzkm zza() {
        return this.zzs;
    }
}
