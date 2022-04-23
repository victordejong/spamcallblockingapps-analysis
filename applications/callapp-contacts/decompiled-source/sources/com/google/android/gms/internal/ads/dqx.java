package com.google.android.gms.internal.ads;
/* JADX WARN: Init of enum zzizn can be incorrect */
/* JADX WARN: Init of enum zzizo can be incorrect */
/* JADX WARN: Init of enum zzizp can be incorrect */
/* JADX WARN: Init of enum zzizq can be incorrect */
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
    STRING(r4, 2) { // from class: com.google.android.gms.internal.ads.dqw
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.ads.dqz
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.ads.dqy
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.ads.drb
    },
    UINT32(dra.INT, 0),
    ENUM(dra.ENUM, 0),
    SFIXED32(dra.INT, 5),
    SFIXED64(dra.LONG, 1),
    SINT32(dra.INT, 0),
    SINT64(dra.LONG, 0);
    
    private final dra zzizx;
    private final int zzizy;

    static {
        final dra draVar = dra.STRING;
        final dra draVar2 = dra.MESSAGE;
        final dra draVar3 = dra.MESSAGE;
        final dra draVar4 = dra.BYTE_STRING;
    }

    dqx(dra draVar, int i) {
        this.zzizx = draVar;
        this.zzizy = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
