package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgi.class */
public enum dgi {
    DOUBLE(dgp.DOUBLE, 1),
    FLOAT(dgp.FLOAT, 5),
    INT64(dgp.LONG, 0),
    UINT64(dgp.LONG, 0),
    INT32(dgp.INT, 0),
    FIXED64(dgp.LONG, 1),
    FIXED32(dgp.INT, 5),
    BOOL(dgp.BOOLEAN, 0),
    STRING(dgp.STRING, 2) { // from class: com.google.android.gms.internal.ads.dgl
    },
    GROUP(dgp.MESSAGE, 3) { // from class: com.google.android.gms.internal.ads.dgk
    },
    MESSAGE(dgp.MESSAGE, 2) { // from class: com.google.android.gms.internal.ads.dgn
    },
    BYTES(dgp.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.ads.dgm
    },
    UINT32(dgp.INT, 0),
    ENUM(dgp.ENUM, 0),
    SFIXED32(dgp.INT, 5),
    SFIXED64(dgp.LONG, 1),
    SINT32(dgp.INT, 0),
    SINT64(dgp.LONG, 0);
    

    /* renamed from: s */
    private final dgp f14279s;

    /* renamed from: t */
    private final int f14280t;

    dgi(dgp dgpVar, int i) {
        this.f14279s = dgpVar;
        this.f14280t = i;
    }

    /* synthetic */ dgi(dgp dgpVar, int i, dgj dgjVar) {
        this(dgpVar, i);
    }

    /* renamed from: a */
    public final dgp m9629a() {
        return this.f14279s;
    }

    /* renamed from: b */
    public final int m9628b() {
        return this.f14280t;
    }
}
