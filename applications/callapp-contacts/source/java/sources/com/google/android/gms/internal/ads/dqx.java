package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqx.class */
public enum dqx {
    DOUBLE(dra.DOUBLE, 1),
    FLOAT(dra.FLOAT, 5),
    INT64(dra.LONG, 0),
    UINT64(dra.LONG, 0),
    INT32(dra.INT, 0),
    FIXED64(dra.LONG, 1),
    FIXED32(dra.INT, 5),
    BOOL(dra.BOOLEAN, 0),
    STRING(dra.STRING, 2) { // from class: com.google.android.gms.internal.ads.dqw
    },
    GROUP(dra.MESSAGE, 3) { // from class: com.google.android.gms.internal.ads.dqz
    },
    MESSAGE(dra.MESSAGE, 2) { // from class: com.google.android.gms.internal.ads.dqy
    },
    BYTES(dra.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.ads.drb
    },
    UINT32(dra.INT, 0),
    ENUM(dra.ENUM, 0),
    SFIXED32(dra.INT, 5),
    SFIXED64(dra.LONG, 1),
    SINT32(dra.INT, 0),
    SINT64(dra.LONG, 0);
    
    private final dra zzizx;
    private final int zzizy;

    dqx(dra draVar, int i) {
        this.zzizx = draVar;
        this.zzizy = i;
    }

    /* synthetic */ dqx(dra draVar, int i, dqu dquVar) {
        this(draVar, i);
    }

    public final dra zzbmh() {
        return this.zzizx;
    }

    public final int zzbmi() {
        return this.zzizy;
    }
}
