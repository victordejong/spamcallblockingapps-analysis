package com.google.android.gms.internal.icing;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdt.class */
public enum zzdt {
    DOUBLE(0, zzdv.SCALAR, zzej.DOUBLE),
    FLOAT(1, zzdv.SCALAR, zzej.FLOAT),
    INT64(2, zzdv.SCALAR, zzej.LONG),
    UINT64(3, zzdv.SCALAR, zzej.LONG),
    INT32(4, zzdv.SCALAR, zzej.INT),
    FIXED64(5, zzdv.SCALAR, zzej.LONG),
    FIXED32(6, zzdv.SCALAR, zzej.INT),
    BOOL(7, zzdv.SCALAR, zzej.BOOLEAN),
    STRING(8, zzdv.SCALAR, zzej.STRING),
    MESSAGE(9, zzdv.SCALAR, zzej.MESSAGE),
    BYTES(10, zzdv.SCALAR, zzej.BYTE_STRING),
    UINT32(11, zzdv.SCALAR, zzej.INT),
    ENUM(12, zzdv.SCALAR, zzej.ENUM),
    SFIXED32(13, zzdv.SCALAR, zzej.INT),
    SFIXED64(14, zzdv.SCALAR, zzej.LONG),
    SINT32(15, zzdv.SCALAR, zzej.INT),
    SINT64(16, zzdv.SCALAR, zzej.LONG),
    GROUP(17, zzdv.SCALAR, zzej.MESSAGE),
    DOUBLE_LIST(18, zzdv.VECTOR, zzej.DOUBLE),
    FLOAT_LIST(19, zzdv.VECTOR, zzej.FLOAT),
    INT64_LIST(20, zzdv.VECTOR, zzej.LONG),
    UINT64_LIST(21, zzdv.VECTOR, zzej.LONG),
    INT32_LIST(22, zzdv.VECTOR, zzej.INT),
    FIXED64_LIST(23, zzdv.VECTOR, zzej.LONG),
    FIXED32_LIST(24, zzdv.VECTOR, zzej.INT),
    BOOL_LIST(25, zzdv.VECTOR, zzej.BOOLEAN),
    STRING_LIST(26, zzdv.VECTOR, zzej.STRING),
    MESSAGE_LIST(27, zzdv.VECTOR, zzej.MESSAGE),
    BYTES_LIST(28, zzdv.VECTOR, zzej.BYTE_STRING),
    UINT32_LIST(29, zzdv.VECTOR, zzej.INT),
    ENUM_LIST(30, zzdv.VECTOR, zzej.ENUM),
    SFIXED32_LIST(31, zzdv.VECTOR, zzej.INT),
    SFIXED64_LIST(32, zzdv.VECTOR, zzej.LONG),
    SINT32_LIST(33, zzdv.VECTOR, zzej.INT),
    SINT64_LIST(34, zzdv.VECTOR, zzej.LONG),
    DOUBLE_LIST_PACKED(35, zzdv.PACKED_VECTOR, zzej.DOUBLE),
    FLOAT_LIST_PACKED(36, zzdv.PACKED_VECTOR, zzej.FLOAT),
    INT64_LIST_PACKED(37, zzdv.PACKED_VECTOR, zzej.LONG),
    UINT64_LIST_PACKED(38, zzdv.PACKED_VECTOR, zzej.LONG),
    INT32_LIST_PACKED(39, zzdv.PACKED_VECTOR, zzej.INT),
    FIXED64_LIST_PACKED(40, zzdv.PACKED_VECTOR, zzej.LONG),
    FIXED32_LIST_PACKED(41, zzdv.PACKED_VECTOR, zzej.INT),
    BOOL_LIST_PACKED(42, zzdv.PACKED_VECTOR, zzej.BOOLEAN),
    UINT32_LIST_PACKED(43, zzdv.PACKED_VECTOR, zzej.INT),
    ENUM_LIST_PACKED(44, zzdv.PACKED_VECTOR, zzej.ENUM),
    SFIXED32_LIST_PACKED(45, zzdv.PACKED_VECTOR, zzej.INT),
    SFIXED64_LIST_PACKED(46, zzdv.PACKED_VECTOR, zzej.LONG),
    SINT32_LIST_PACKED(47, zzdv.PACKED_VECTOR, zzej.INT),
    SINT64_LIST_PACKED(48, zzdv.PACKED_VECTOR, zzej.LONG),
    GROUP_LIST(49, zzdv.VECTOR, zzej.MESSAGE),
    MAP(50, zzdv.MAP, zzej.VOID);
    
    private static final zzdt[] zzjr;
    private static final Type[] zzjs = new Type[0];

    /* renamed from: id */
    private final int f7992id;
    private final zzej zzjn;
    private final zzdv zzjo;
    private final Class<?> zzjp;
    private final boolean zzjq;

    static {
        zzdt[] values = values();
        zzjr = new zzdt[values.length];
        for (zzdt zzdtVar : values) {
            zzjr[zzdtVar.f7992id] = zzdtVar;
        }
    }

    zzdt(int i, zzdv zzdvVar, zzej zzejVar) {
        int i2;
        this.f7992id = i;
        this.zzjo = zzdvVar;
        this.zzjn = zzejVar;
        int i3 = zzdw.f7993a[zzdvVar.ordinal()];
        boolean z = true;
        if (i3 == 1) {
            this.zzjp = zzejVar.zzcb();
        } else if (i3 != 2) {
            this.zzjp = null;
        } else {
            this.zzjp = zzejVar.zzcb();
        }
        this.zzjq = (zzdvVar != zzdv.SCALAR || (i2 = zzdw.f7994b[zzejVar.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    /* renamed from: id */
    public final int m13837id() {
        return this.f7992id;
    }
}
