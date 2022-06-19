package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeos.class */
public enum zzeos {
    DOUBLE(zzeov.DOUBLE, 1),
    FLOAT(zzeov.FLOAT, 5),
    INT64(zzeov.LONG, 0),
    UINT64(zzeov.LONG, 0),
    INT32(zzeov.INT, 0),
    FIXED64(zzeov.LONG, 1),
    FIXED32(zzeov.INT, 5),
    BOOL(zzeov.BOOLEAN, 0),
    STRING(zzeov.STRING, 2) { // from class: com.google.android.gms.internal.ads.zzeor
    },
    GROUP(zzeov.MESSAGE, 3) { // from class: com.google.android.gms.internal.ads.zzeou
    },
    MESSAGE(zzeov.MESSAGE, 2) { // from class: com.google.android.gms.internal.ads.zzeot
    },
    BYTES(zzeov.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.ads.zzeow
    },
    UINT32(zzeov.INT, 0),
    ENUM(zzeov.ENUM, 0),
    SFIXED32(zzeov.INT, 5),
    SFIXED64(zzeov.LONG, 1),
    SINT32(zzeov.INT, 0),
    SINT64(zzeov.LONG, 0);
    
    private final zzeov zziwu;
    private final int zziwv;

    zzeos(zzeov zzeovVar, int i) {
        this.zziwu = zzeovVar;
        this.zziwv = i;
    }

    /* synthetic */ zzeos(zzeov zzeovVar, int i, zzeop zzeopVar) {
        this(zzeovVar, i);
    }

    public final zzeov zzbli() {
        return this.zziwu;
    }

    public final int zzblj() {
        return this.zziwv;
    }
}
