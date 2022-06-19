package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hl.class */
public enum EnumC3999hl {
    DOUBLE(EnumC4002ho.DOUBLE, 1),
    FLOAT(EnumC4002ho.FLOAT, 5),
    INT64(EnumC4002ho.LONG, 0),
    UINT64(EnumC4002ho.LONG, 0),
    INT32(EnumC4002ho.INT, 0),
    FIXED64(EnumC4002ho.LONG, 1),
    FIXED32(EnumC4002ho.INT, 5),
    BOOL(EnumC4002ho.BOOLEAN, 0),
    STRING(EnumC4002ho.STRING, 2) { // from class: com.google.android.gms.internal.measurement.hk
    },
    GROUP(EnumC4002ho.MESSAGE, 3) { // from class: com.google.android.gms.internal.measurement.hn
    },
    MESSAGE(EnumC4002ho.MESSAGE, 2) { // from class: com.google.android.gms.internal.measurement.hm
    },
    BYTES(EnumC4002ho.BYTE_STRING, 2) { // from class: com.google.android.gms.internal.measurement.hp
    },
    UINT32(EnumC4002ho.INT, 0),
    ENUM(EnumC4002ho.ENUM, 0),
    SFIXED32(EnumC4002ho.INT, 5),
    SFIXED64(EnumC4002ho.LONG, 1),
    SINT32(EnumC4002ho.INT, 0),
    SINT64(EnumC4002ho.LONG, 0);
    

    /* renamed from: s */
    private final EnumC4002ho f18291s;

    /* renamed from: t */
    private final int f18292t;

    EnumC3999hl(EnumC4002ho enumC4002ho, int i) {
        this.f18291s = enumC4002ho;
        this.f18292t = i;
    }

    /* synthetic */ EnumC3999hl(EnumC4002ho enumC4002ho, int i, C3996hi c3996hi) {
        this(enumC4002ho, i);
    }

    /* renamed from: a */
    public final EnumC4002ho m5213a() {
        return this.f18291s;
    }

    /* renamed from: b */
    public final int m5212b() {
        return this.f18292t;
    }
}
