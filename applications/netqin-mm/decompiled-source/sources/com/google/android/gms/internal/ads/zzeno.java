package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.ia0;
/* JADX WARN: Init of enum zzipe can be incorrect */
/* JADX WARN: Init of enum zzipf can be incorrect */
/* JADX WARN: Init of enum zzipg can be incorrect */
/* JADX WARN: Init of enum zziph can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeno.class */
public enum zzeno {
    DOUBLE(zzenr.DOUBLE, 1),
    FLOAT(zzenr.FLOAT, 5),
    INT64(zzenr.LONG, 0),
    UINT64(zzenr.LONG, 0),
    INT32(zzenr.INT, 0),
    FIXED64(zzenr.LONG, 1),
    FIXED32(zzenr.INT, 5),
    BOOL(zzenr.BOOLEAN, 0),
    STRING(r4, 2) { // from class: com.google.android.gms.internal.ads.zzenn
    },
    GROUP(r4, 3) { // from class: com.google.android.gms.internal.ads.zzenq
    },
    MESSAGE(r4, 2) { // from class: com.google.android.gms.internal.ads.zzenp
    },
    BYTES(r4, 2) { // from class: com.google.android.gms.internal.ads.zzens
    },
    UINT32(zzenr.INT, 0),
    ENUM(zzenr.ENUM, 0),
    SFIXED32(zzenr.INT, 5),
    SFIXED64(zzenr.LONG, 1),
    SINT32(zzenr.INT, 0),
    SINT64(zzenr.LONG, 0);
    
    public final zzenr zzipo;
    public final int zzipp;

    static {
        final zzenr zzenrVar = zzenr.STRING;
        final zzenr zzenrVar2 = zzenr.MESSAGE;
        final zzenr zzenrVar3 = zzenr.MESSAGE;
        final zzenr zzenrVar4 = zzenr.BYTE_STRING;
    }

    zzeno(zzenr zzenrVar, int i) {
        this.zzipo = zzenrVar;
        this.zzipp = i;
    }

    /* synthetic */ zzeno(zzenr zzenrVar, int i, ia0 ia0Var) {
        this(zzenrVar, i);
    }

    public final zzenr zzbje() {
        return this.zzipo;
    }

    public final int zzbjf() {
        return this.zzipp;
    }
}
