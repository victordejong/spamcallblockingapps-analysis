package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ge.class */
public enum ge {
    DOUBLE(0, 1, gv.DOUBLE),
    FLOAT(1, 1, gv.FLOAT),
    INT64(2, 1, gv.LONG),
    UINT64(3, 1, gv.LONG),
    INT32(4, 1, gv.INT),
    FIXED64(5, 1, gv.LONG),
    FIXED32(6, 1, gv.INT),
    BOOL(7, 1, gv.BOOLEAN),
    STRING(8, 1, gv.STRING),
    MESSAGE(9, 1, gv.MESSAGE),
    BYTES(10, 1, gv.BYTE_STRING),
    UINT32(11, 1, gv.INT),
    ENUM(12, 1, gv.ENUM),
    SFIXED32(13, 1, gv.INT),
    SFIXED64(14, 1, gv.LONG),
    SINT32(15, 1, gv.INT),
    SINT64(16, 1, gv.LONG),
    GROUP(17, 1, gv.MESSAGE),
    DOUBLE_LIST(18, 2, gv.DOUBLE),
    FLOAT_LIST(19, 2, gv.FLOAT),
    INT64_LIST(20, 2, gv.LONG),
    UINT64_LIST(21, 2, gv.LONG),
    INT32_LIST(22, 2, gv.INT),
    FIXED64_LIST(23, 2, gv.LONG),
    FIXED32_LIST(24, 2, gv.INT),
    BOOL_LIST(25, 2, gv.BOOLEAN),
    STRING_LIST(26, 2, gv.STRING),
    MESSAGE_LIST(27, 2, gv.MESSAGE),
    BYTES_LIST(28, 2, gv.BYTE_STRING),
    UINT32_LIST(29, 2, gv.INT),
    ENUM_LIST(30, 2, gv.ENUM),
    SFIXED32_LIST(31, 2, gv.INT),
    SFIXED64_LIST(32, 2, gv.LONG),
    SINT32_LIST(33, 2, gv.INT),
    SINT64_LIST(34, 2, gv.LONG),
    DOUBLE_LIST_PACKED(35, 3, gv.DOUBLE),
    FLOAT_LIST_PACKED(36, 3, gv.FLOAT),
    INT64_LIST_PACKED(37, 3, gv.LONG),
    UINT64_LIST_PACKED(38, 3, gv.LONG),
    INT32_LIST_PACKED(39, 3, gv.INT),
    FIXED64_LIST_PACKED(40, 3, gv.LONG),
    FIXED32_LIST_PACKED(41, 3, gv.INT),
    BOOL_LIST_PACKED(42, 3, gv.BOOLEAN),
    UINT32_LIST_PACKED(43, 3, gv.INT),
    ENUM_LIST_PACKED(44, 3, gv.ENUM),
    SFIXED32_LIST_PACKED(45, 3, gv.INT),
    SFIXED64_LIST_PACKED(46, 3, gv.LONG),
    SINT32_LIST_PACKED(47, 3, gv.INT),
    SINT64_LIST_PACKED(48, 3, gv.LONG),
    GROUP_LIST(49, 2, gv.MESSAGE),
    MAP(50, 4, gv.VOID);
    
    private static final ge[] zzac;
    private final gv zzZ;
    private final int zzaa;
    private final Class<?> zzab;

    static {
        ge[] values = values();
        zzac = new ge[values.length];
        for (ge geVar : values) {
            zzac[geVar.zzaa] = geVar;
        }
    }

    ge(int i, int i2, gv gvVar) {
        this.zzaa = i;
        this.zzZ = gvVar;
        int i3 = i2 - 1;
        if (i3 == 1) {
            this.zzab = gvVar.zza();
        } else if (i3 != 3) {
            this.zzab = null;
        } else {
            this.zzab = gvVar.zza();
        }
        if (i2 == 1) {
            gvVar.ordinal();
        }
    }

    public final int zza() {
        return this.zzaa;
    }
}
