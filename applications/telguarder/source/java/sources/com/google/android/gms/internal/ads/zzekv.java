package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekv.class */
public enum zzekv {
    DOUBLE(0, zzekx.SCALAR, zzelq.DOUBLE),
    FLOAT(1, zzekx.SCALAR, zzelq.FLOAT),
    INT64(2, zzekx.SCALAR, zzelq.LONG),
    UINT64(3, zzekx.SCALAR, zzelq.LONG),
    INT32(4, zzekx.SCALAR, zzelq.INT),
    FIXED64(5, zzekx.SCALAR, zzelq.LONG),
    FIXED32(6, zzekx.SCALAR, zzelq.INT),
    BOOL(7, zzekx.SCALAR, zzelq.BOOLEAN),
    STRING(8, zzekx.SCALAR, zzelq.STRING),
    MESSAGE(9, zzekx.SCALAR, zzelq.MESSAGE),
    BYTES(10, zzekx.SCALAR, zzelq.BYTE_STRING),
    UINT32(11, zzekx.SCALAR, zzelq.INT),
    ENUM(12, zzekx.SCALAR, zzelq.ENUM),
    SFIXED32(13, zzekx.SCALAR, zzelq.INT),
    SFIXED64(14, zzekx.SCALAR, zzelq.LONG),
    SINT32(15, zzekx.SCALAR, zzelq.INT),
    SINT64(16, zzekx.SCALAR, zzelq.LONG),
    GROUP(17, zzekx.SCALAR, zzelq.MESSAGE),
    DOUBLE_LIST(18, zzekx.VECTOR, zzelq.DOUBLE),
    FLOAT_LIST(19, zzekx.VECTOR, zzelq.FLOAT),
    INT64_LIST(20, zzekx.VECTOR, zzelq.LONG),
    UINT64_LIST(21, zzekx.VECTOR, zzelq.LONG),
    INT32_LIST(22, zzekx.VECTOR, zzelq.INT),
    FIXED64_LIST(23, zzekx.VECTOR, zzelq.LONG),
    FIXED32_LIST(24, zzekx.VECTOR, zzelq.INT),
    BOOL_LIST(25, zzekx.VECTOR, zzelq.BOOLEAN),
    STRING_LIST(26, zzekx.VECTOR, zzelq.STRING),
    MESSAGE_LIST(27, zzekx.VECTOR, zzelq.MESSAGE),
    BYTES_LIST(28, zzekx.VECTOR, zzelq.BYTE_STRING),
    UINT32_LIST(29, zzekx.VECTOR, zzelq.INT),
    ENUM_LIST(30, zzekx.VECTOR, zzelq.ENUM),
    SFIXED32_LIST(31, zzekx.VECTOR, zzelq.INT),
    SFIXED64_LIST(32, zzekx.VECTOR, zzelq.LONG),
    SINT32_LIST(33, zzekx.VECTOR, zzelq.INT),
    SINT64_LIST(34, zzekx.VECTOR, zzelq.LONG),
    DOUBLE_LIST_PACKED(35, zzekx.PACKED_VECTOR, zzelq.DOUBLE),
    FLOAT_LIST_PACKED(36, zzekx.PACKED_VECTOR, zzelq.FLOAT),
    INT64_LIST_PACKED(37, zzekx.PACKED_VECTOR, zzelq.LONG),
    UINT64_LIST_PACKED(38, zzekx.PACKED_VECTOR, zzelq.LONG),
    INT32_LIST_PACKED(39, zzekx.PACKED_VECTOR, zzelq.INT),
    FIXED64_LIST_PACKED(40, zzekx.PACKED_VECTOR, zzelq.LONG),
    FIXED32_LIST_PACKED(41, zzekx.PACKED_VECTOR, zzelq.INT),
    BOOL_LIST_PACKED(42, zzekx.PACKED_VECTOR, zzelq.BOOLEAN),
    UINT32_LIST_PACKED(43, zzekx.PACKED_VECTOR, zzelq.INT),
    ENUM_LIST_PACKED(44, zzekx.PACKED_VECTOR, zzelq.ENUM),
    SFIXED32_LIST_PACKED(45, zzekx.PACKED_VECTOR, zzelq.INT),
    SFIXED64_LIST_PACKED(46, zzekx.PACKED_VECTOR, zzelq.LONG),
    SINT32_LIST_PACKED(47, zzekx.PACKED_VECTOR, zzelq.INT),
    SINT64_LIST_PACKED(48, zzekx.PACKED_VECTOR, zzelq.LONG),
    GROUP_LIST(49, zzekx.VECTOR, zzelq.MESSAGE),
    MAP(50, zzekx.MAP, zzelq.VOID);
    
    private static final zzekv[] zzipw;
    private static final Type[] zzipx = new Type[0];

    /* renamed from: id */
    private final int f120id;
    private final zzelq zzips;
    private final zzekx zzipt;
    private final Class<?> zzipu;
    private final boolean zzipv;

    static {
        zzekv[] values = values();
        zzipw = new zzekv[values.length];
        for (zzekv zzekvVar : values) {
            zzipw[zzekvVar.f120id] = zzekvVar;
        }
    }

    zzekv(int i, zzekx zzekxVar, zzelq zzelqVar) {
        int i2;
        this.f120id = i;
        this.zzipt = zzekxVar;
        this.zzips = zzelqVar;
        int i3 = zzeky.zziqf[zzekxVar.ordinal()];
        boolean z = true;
        if (i3 == 1) {
            this.zzipu = zzelqVar.zzbjk();
        } else if (i3 != 2) {
            this.zzipu = null;
        } else {
            this.zzipu = zzelqVar.zzbjk();
        }
        this.zzipv = (zzekxVar != zzekx.SCALAR || (i2 = zzeky.zziqg[zzelqVar.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    /* renamed from: id */
    public final int m1353id() {
        return this.f120id;
    }
}
