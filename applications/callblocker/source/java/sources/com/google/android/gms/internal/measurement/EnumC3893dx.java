package com.google.android.gms.internal.measurement;

import java.lang.reflect.Type;
/* renamed from: com.google.android.gms.internal.measurement.dx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dx.class */
public enum EnumC3893dx {
    DOUBLE(0, EnumC3895dz.SCALAR, EnumC3917eo.DOUBLE),
    FLOAT(1, EnumC3895dz.SCALAR, EnumC3917eo.FLOAT),
    INT64(2, EnumC3895dz.SCALAR, EnumC3917eo.LONG),
    UINT64(3, EnumC3895dz.SCALAR, EnumC3917eo.LONG),
    INT32(4, EnumC3895dz.SCALAR, EnumC3917eo.INT),
    FIXED64(5, EnumC3895dz.SCALAR, EnumC3917eo.LONG),
    FIXED32(6, EnumC3895dz.SCALAR, EnumC3917eo.INT),
    BOOL(7, EnumC3895dz.SCALAR, EnumC3917eo.BOOLEAN),
    STRING(8, EnumC3895dz.SCALAR, EnumC3917eo.STRING),
    MESSAGE(9, EnumC3895dz.SCALAR, EnumC3917eo.MESSAGE),
    BYTES(10, EnumC3895dz.SCALAR, EnumC3917eo.BYTE_STRING),
    UINT32(11, EnumC3895dz.SCALAR, EnumC3917eo.INT),
    ENUM(12, EnumC3895dz.SCALAR, EnumC3917eo.ENUM),
    SFIXED32(13, EnumC3895dz.SCALAR, EnumC3917eo.INT),
    SFIXED64(14, EnumC3895dz.SCALAR, EnumC3917eo.LONG),
    SINT32(15, EnumC3895dz.SCALAR, EnumC3917eo.INT),
    SINT64(16, EnumC3895dz.SCALAR, EnumC3917eo.LONG),
    GROUP(17, EnumC3895dz.SCALAR, EnumC3917eo.MESSAGE),
    DOUBLE_LIST(18, EnumC3895dz.VECTOR, EnumC3917eo.DOUBLE),
    FLOAT_LIST(19, EnumC3895dz.VECTOR, EnumC3917eo.FLOAT),
    INT64_LIST(20, EnumC3895dz.VECTOR, EnumC3917eo.LONG),
    UINT64_LIST(21, EnumC3895dz.VECTOR, EnumC3917eo.LONG),
    INT32_LIST(22, EnumC3895dz.VECTOR, EnumC3917eo.INT),
    FIXED64_LIST(23, EnumC3895dz.VECTOR, EnumC3917eo.LONG),
    FIXED32_LIST(24, EnumC3895dz.VECTOR, EnumC3917eo.INT),
    BOOL_LIST(25, EnumC3895dz.VECTOR, EnumC3917eo.BOOLEAN),
    STRING_LIST(26, EnumC3895dz.VECTOR, EnumC3917eo.STRING),
    MESSAGE_LIST(27, EnumC3895dz.VECTOR, EnumC3917eo.MESSAGE),
    BYTES_LIST(28, EnumC3895dz.VECTOR, EnumC3917eo.BYTE_STRING),
    UINT32_LIST(29, EnumC3895dz.VECTOR, EnumC3917eo.INT),
    ENUM_LIST(30, EnumC3895dz.VECTOR, EnumC3917eo.ENUM),
    SFIXED32_LIST(31, EnumC3895dz.VECTOR, EnumC3917eo.INT),
    SFIXED64_LIST(32, EnumC3895dz.VECTOR, EnumC3917eo.LONG),
    SINT32_LIST(33, EnumC3895dz.VECTOR, EnumC3917eo.INT),
    SINT64_LIST(34, EnumC3895dz.VECTOR, EnumC3917eo.LONG),
    DOUBLE_LIST_PACKED(35, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.DOUBLE),
    FLOAT_LIST_PACKED(36, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.FLOAT),
    INT64_LIST_PACKED(37, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.LONG),
    UINT64_LIST_PACKED(38, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.LONG),
    INT32_LIST_PACKED(39, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.INT),
    FIXED64_LIST_PACKED(40, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.LONG),
    FIXED32_LIST_PACKED(41, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.INT),
    BOOL_LIST_PACKED(42, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.BOOLEAN),
    UINT32_LIST_PACKED(43, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.INT),
    ENUM_LIST_PACKED(44, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.ENUM),
    SFIXED32_LIST_PACKED(45, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.INT),
    SFIXED64_LIST_PACKED(46, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.LONG),
    SINT32_LIST_PACKED(47, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.INT),
    SINT64_LIST_PACKED(48, EnumC3895dz.PACKED_VECTOR, EnumC3917eo.LONG),
    GROUP_LIST(49, EnumC3895dz.VECTOR, EnumC3917eo.MESSAGE),
    MAP(50, EnumC3895dz.MAP, EnumC3917eo.VOID);
    

    /* renamed from: ae */
    private static final EnumC3893dx[] f18042ae;

    /* renamed from: af */
    private static final Type[] f18043af = new Type[0];

    /* renamed from: Z */
    private final EnumC3917eo f18070Z;

    /* renamed from: aa */
    private final int f18071aa;

    /* renamed from: ab */
    private final EnumC3895dz f18072ab;

    /* renamed from: ac */
    private final Class<?> f18073ac;

    /* renamed from: ad */
    private final boolean f18074ad;

    static {
        EnumC3893dx[] values = values();
        f18042ae = new EnumC3893dx[values.length];
        for (EnumC3893dx enumC3893dx : values) {
            f18042ae[enumC3893dx.f18071aa] = enumC3893dx;
        }
    }

    EnumC3893dx(int i, EnumC3895dz enumC3895dz, EnumC3917eo enumC3917eo) {
        this.f18071aa = i;
        this.f18072ab = enumC3895dz;
        this.f18070Z = enumC3917eo;
        switch (C3897ea.f18081a[enumC3895dz.ordinal()]) {
            case 1:
                this.f18073ac = enumC3917eo.m5595a();
                break;
            case 2:
                this.f18073ac = enumC3917eo.m5595a();
                break;
            default:
                this.f18073ac = null;
                break;
        }
        boolean z = false;
        if (enumC3895dz == EnumC3895dz.SCALAR) {
            z = false;
            switch (C3897ea.f18082b[enumC3917eo.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    break;
                default:
                    z = true;
                    break;
            }
        }
        this.f18074ad = z;
    }

    /* renamed from: a */
    public final int m5658a() {
        return this.f18071aa;
    }
}
