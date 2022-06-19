package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcq.class */
public enum dcq {
    DOUBLE(0, dct.SCALAR, ddh.DOUBLE),
    FLOAT(1, dct.SCALAR, ddh.FLOAT),
    INT64(2, dct.SCALAR, ddh.LONG),
    UINT64(3, dct.SCALAR, ddh.LONG),
    INT32(4, dct.SCALAR, ddh.INT),
    FIXED64(5, dct.SCALAR, ddh.LONG),
    FIXED32(6, dct.SCALAR, ddh.INT),
    BOOL(7, dct.SCALAR, ddh.BOOLEAN),
    STRING(8, dct.SCALAR, ddh.STRING),
    MESSAGE(9, dct.SCALAR, ddh.MESSAGE),
    BYTES(10, dct.SCALAR, ddh.BYTE_STRING),
    UINT32(11, dct.SCALAR, ddh.INT),
    ENUM(12, dct.SCALAR, ddh.ENUM),
    SFIXED32(13, dct.SCALAR, ddh.INT),
    SFIXED64(14, dct.SCALAR, ddh.LONG),
    SINT32(15, dct.SCALAR, ddh.INT),
    SINT64(16, dct.SCALAR, ddh.LONG),
    GROUP(17, dct.SCALAR, ddh.MESSAGE),
    DOUBLE_LIST(18, dct.VECTOR, ddh.DOUBLE),
    FLOAT_LIST(19, dct.VECTOR, ddh.FLOAT),
    INT64_LIST(20, dct.VECTOR, ddh.LONG),
    UINT64_LIST(21, dct.VECTOR, ddh.LONG),
    INT32_LIST(22, dct.VECTOR, ddh.INT),
    FIXED64_LIST(23, dct.VECTOR, ddh.LONG),
    FIXED32_LIST(24, dct.VECTOR, ddh.INT),
    BOOL_LIST(25, dct.VECTOR, ddh.BOOLEAN),
    STRING_LIST(26, dct.VECTOR, ddh.STRING),
    MESSAGE_LIST(27, dct.VECTOR, ddh.MESSAGE),
    BYTES_LIST(28, dct.VECTOR, ddh.BYTE_STRING),
    UINT32_LIST(29, dct.VECTOR, ddh.INT),
    ENUM_LIST(30, dct.VECTOR, ddh.ENUM),
    SFIXED32_LIST(31, dct.VECTOR, ddh.INT),
    SFIXED64_LIST(32, dct.VECTOR, ddh.LONG),
    SINT32_LIST(33, dct.VECTOR, ddh.INT),
    SINT64_LIST(34, dct.VECTOR, ddh.LONG),
    DOUBLE_LIST_PACKED(35, dct.PACKED_VECTOR, ddh.DOUBLE),
    FLOAT_LIST_PACKED(36, dct.PACKED_VECTOR, ddh.FLOAT),
    INT64_LIST_PACKED(37, dct.PACKED_VECTOR, ddh.LONG),
    UINT64_LIST_PACKED(38, dct.PACKED_VECTOR, ddh.LONG),
    INT32_LIST_PACKED(39, dct.PACKED_VECTOR, ddh.INT),
    FIXED64_LIST_PACKED(40, dct.PACKED_VECTOR, ddh.LONG),
    FIXED32_LIST_PACKED(41, dct.PACKED_VECTOR, ddh.INT),
    BOOL_LIST_PACKED(42, dct.PACKED_VECTOR, ddh.BOOLEAN),
    UINT32_LIST_PACKED(43, dct.PACKED_VECTOR, ddh.INT),
    ENUM_LIST_PACKED(44, dct.PACKED_VECTOR, ddh.ENUM),
    SFIXED32_LIST_PACKED(45, dct.PACKED_VECTOR, ddh.INT),
    SFIXED64_LIST_PACKED(46, dct.PACKED_VECTOR, ddh.LONG),
    SINT32_LIST_PACKED(47, dct.PACKED_VECTOR, ddh.INT),
    SINT64_LIST_PACKED(48, dct.PACKED_VECTOR, ddh.LONG),
    GROUP_LIST(49, dct.VECTOR, ddh.MESSAGE),
    MAP(50, dct.MAP, ddh.VOID);
    

    /* renamed from: ae */
    private static final dcq[] f14026ae;

    /* renamed from: af */
    private static final Type[] f14027af = new Type[0];

    /* renamed from: Z */
    private final ddh f14054Z;

    /* renamed from: aa */
    private final int f14055aa;

    /* renamed from: ab */
    private final dct f14056ab;

    /* renamed from: ac */
    private final Class<?> f14057ac;

    /* renamed from: ad */
    private final boolean f14058ad;

    static {
        dcq[] values = values();
        f14026ae = new dcq[values.length];
        for (dcq dcqVar : values) {
            f14026ae[dcqVar.f14055aa] = dcqVar;
        }
    }

    dcq(int i, dct dctVar, ddh ddhVar) {
        this.f14055aa = i;
        this.f14056ab = dctVar;
        this.f14054Z = ddhVar;
        switch (dcp.f13998a[dctVar.ordinal()]) {
            case 1:
                this.f14057ac = ddhVar.m10036a();
                break;
            case 2:
                this.f14057ac = ddhVar.m10036a();
                break;
            default:
                this.f14057ac = null;
                break;
        }
        boolean z = false;
        if (dctVar == dct.SCALAR) {
            z = false;
            switch (dcp.f13999b[ddhVar.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    break;
                default:
                    z = true;
                    break;
            }
        }
        this.f14058ad = z;
    }

    /* renamed from: a */
    public final int m10103a() {
        return this.f14055aa;
    }
}
