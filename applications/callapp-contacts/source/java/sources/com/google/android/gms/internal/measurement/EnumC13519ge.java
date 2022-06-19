package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ge */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ge.class */
public enum EnumC13519ge {
    DOUBLE(0, 1, EnumC13536gv.DOUBLE),
    FLOAT(1, 1, EnumC13536gv.FLOAT),
    INT64(2, 1, EnumC13536gv.LONG),
    UINT64(3, 1, EnumC13536gv.LONG),
    INT32(4, 1, EnumC13536gv.INT),
    FIXED64(5, 1, EnumC13536gv.LONG),
    FIXED32(6, 1, EnumC13536gv.INT),
    BOOL(7, 1, EnumC13536gv.BOOLEAN),
    STRING(8, 1, EnumC13536gv.STRING),
    MESSAGE(9, 1, EnumC13536gv.MESSAGE),
    BYTES(10, 1, EnumC13536gv.BYTE_STRING),
    UINT32(11, 1, EnumC13536gv.INT),
    ENUM(12, 1, EnumC13536gv.ENUM),
    SFIXED32(13, 1, EnumC13536gv.INT),
    SFIXED64(14, 1, EnumC13536gv.LONG),
    SINT32(15, 1, EnumC13536gv.INT),
    SINT64(16, 1, EnumC13536gv.LONG),
    GROUP(17, 1, EnumC13536gv.MESSAGE),
    DOUBLE_LIST(18, 2, EnumC13536gv.DOUBLE),
    FLOAT_LIST(19, 2, EnumC13536gv.FLOAT),
    INT64_LIST(20, 2, EnumC13536gv.LONG),
    UINT64_LIST(21, 2, EnumC13536gv.LONG),
    INT32_LIST(22, 2, EnumC13536gv.INT),
    FIXED64_LIST(23, 2, EnumC13536gv.LONG),
    FIXED32_LIST(24, 2, EnumC13536gv.INT),
    BOOL_LIST(25, 2, EnumC13536gv.BOOLEAN),
    STRING_LIST(26, 2, EnumC13536gv.STRING),
    MESSAGE_LIST(27, 2, EnumC13536gv.MESSAGE),
    BYTES_LIST(28, 2, EnumC13536gv.BYTE_STRING),
    UINT32_LIST(29, 2, EnumC13536gv.INT),
    ENUM_LIST(30, 2, EnumC13536gv.ENUM),
    SFIXED32_LIST(31, 2, EnumC13536gv.INT),
    SFIXED64_LIST(32, 2, EnumC13536gv.LONG),
    SINT32_LIST(33, 2, EnumC13536gv.INT),
    SINT64_LIST(34, 2, EnumC13536gv.LONG),
    DOUBLE_LIST_PACKED(35, 3, EnumC13536gv.DOUBLE),
    FLOAT_LIST_PACKED(36, 3, EnumC13536gv.FLOAT),
    INT64_LIST_PACKED(37, 3, EnumC13536gv.LONG),
    UINT64_LIST_PACKED(38, 3, EnumC13536gv.LONG),
    INT32_LIST_PACKED(39, 3, EnumC13536gv.INT),
    FIXED64_LIST_PACKED(40, 3, EnumC13536gv.LONG),
    FIXED32_LIST_PACKED(41, 3, EnumC13536gv.INT),
    BOOL_LIST_PACKED(42, 3, EnumC13536gv.BOOLEAN),
    UINT32_LIST_PACKED(43, 3, EnumC13536gv.INT),
    ENUM_LIST_PACKED(44, 3, EnumC13536gv.ENUM),
    SFIXED32_LIST_PACKED(45, 3, EnumC13536gv.INT),
    SFIXED64_LIST_PACKED(46, 3, EnumC13536gv.LONG),
    SINT32_LIST_PACKED(47, 3, EnumC13536gv.INT),
    SINT64_LIST_PACKED(48, 3, EnumC13536gv.LONG),
    GROUP_LIST(49, 2, EnumC13536gv.MESSAGE),
    MAP(50, 4, EnumC13536gv.VOID);
    
    private static final EnumC13519ge[] zzac;
    private final EnumC13536gv zzZ;
    private final int zzaa;
    private final Class<?> zzab;

    static {
        EnumC13519ge[] values = values();
        zzac = new EnumC13519ge[values.length];
        for (EnumC13519ge enumC13519ge : values) {
            zzac[enumC13519ge.zzaa] = enumC13519ge;
        }
    }

    EnumC13519ge(int i, int i2, EnumC13536gv enumC13536gv) {
        this.zzaa = i;
        this.zzZ = enumC13536gv;
        int i3 = i2 - 1;
        if (i3 == 1) {
            this.zzab = enumC13536gv.zza();
        } else if (i3 != 3) {
            this.zzab = null;
        } else {
            this.zzab = enumC13536gv.zza();
        }
        if (i2 == 1) {
            enumC13536gv.ordinal();
        }
    }

    public final int zza() {
        return this.zzaa;
    }
}
