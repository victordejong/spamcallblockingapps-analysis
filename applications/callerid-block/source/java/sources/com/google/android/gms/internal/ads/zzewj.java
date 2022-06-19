package com.google.android.gms.internal.ads;
/* JADX WARN: Init of enum d can be incorrect */
/* JADX WARN: Init of enum e can be incorrect */
/* JADX WARN: Init of enum f can be incorrect */
/* JADX WARN: Init of enum g can be incorrect */
/* JADX WARN: Init of enum h can be incorrect */
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* JADX WARN: Init of enum p can be incorrect */
/* JADX WARN: Init of enum q can be incorrect */
/* JADX WARN: Init of enum r can be incorrect */
/* JADX WARN: Init of enum s can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewj.class */
public enum zzewj {
    DOUBLE(zzewk.DOUBLE, 1),
    FLOAT(zzewk.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(zzewk.BOOLEAN, 0),
    STRING(zzewk.STRING, 2),
    GROUP(r0, 3),
    MESSAGE(r0, 2),
    BYTES(zzewk.BYTE_STRING, 2),
    UINT32(r0, 0),
    ENUM(zzewk.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    
    private final zzewk zzs;

    static {
        zzewk zzewkVar = zzewk.LONG;
        zzewk zzewkVar2 = zzewk.INT;
        zzewk zzewkVar3 = zzewk.MESSAGE;
    }

    zzewj(zzewk zzewkVar, int i) {
        this.zzs = zzewkVar;
    }

    public final zzewk zza() {
        return this.zzs;
    }
}
