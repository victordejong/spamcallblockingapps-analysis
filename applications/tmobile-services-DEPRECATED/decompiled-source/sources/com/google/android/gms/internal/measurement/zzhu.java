package com.google.android.gms.internal.measurement;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhu.class */
public enum zzhu {
    DOUBLE(0, zzhw.SCALAR, zzij.DOUBLE),
    FLOAT(1, zzhw.SCALAR, zzij.FLOAT),
    INT64(2, zzhw.SCALAR, zzij.LONG),
    UINT64(3, zzhw.SCALAR, zzij.LONG),
    INT32(4, zzhw.SCALAR, zzij.INT),
    FIXED64(5, zzhw.SCALAR, zzij.LONG),
    FIXED32(6, zzhw.SCALAR, zzij.INT),
    BOOL(7, zzhw.SCALAR, zzij.BOOLEAN),
    STRING(8, zzhw.SCALAR, zzij.STRING),
    MESSAGE(9, zzhw.SCALAR, zzij.MESSAGE),
    BYTES(10, zzhw.SCALAR, zzij.BYTE_STRING),
    UINT32(11, zzhw.SCALAR, zzij.INT),
    ENUM(12, zzhw.SCALAR, zzij.ENUM),
    SFIXED32(13, zzhw.SCALAR, zzij.INT),
    SFIXED64(14, zzhw.SCALAR, zzij.LONG),
    SINT32(15, zzhw.SCALAR, zzij.INT),
    SINT64(16, zzhw.SCALAR, zzij.LONG),
    GROUP(17, zzhw.SCALAR, zzij.MESSAGE),
    DOUBLE_LIST(18, zzhw.VECTOR, zzij.DOUBLE),
    FLOAT_LIST(19, zzhw.VECTOR, zzij.FLOAT),
    INT64_LIST(20, zzhw.VECTOR, zzij.LONG),
    UINT64_LIST(21, zzhw.VECTOR, zzij.LONG),
    INT32_LIST(22, zzhw.VECTOR, zzij.INT),
    FIXED64_LIST(23, zzhw.VECTOR, zzij.LONG),
    FIXED32_LIST(24, zzhw.VECTOR, zzij.INT),
    BOOL_LIST(25, zzhw.VECTOR, zzij.BOOLEAN),
    STRING_LIST(26, zzhw.VECTOR, zzij.STRING),
    MESSAGE_LIST(27, zzhw.VECTOR, zzij.MESSAGE),
    BYTES_LIST(28, zzhw.VECTOR, zzij.BYTE_STRING),
    UINT32_LIST(29, zzhw.VECTOR, zzij.INT),
    ENUM_LIST(30, zzhw.VECTOR, zzij.ENUM),
    SFIXED32_LIST(31, zzhw.VECTOR, zzij.INT),
    SFIXED64_LIST(32, zzhw.VECTOR, zzij.LONG),
    SINT32_LIST(33, zzhw.VECTOR, zzij.INT),
    SINT64_LIST(34, zzhw.VECTOR, zzij.LONG),
    DOUBLE_LIST_PACKED(35, zzhw.PACKED_VECTOR, zzij.DOUBLE),
    FLOAT_LIST_PACKED(36, zzhw.PACKED_VECTOR, zzij.FLOAT),
    INT64_LIST_PACKED(37, zzhw.PACKED_VECTOR, zzij.LONG),
    UINT64_LIST_PACKED(38, zzhw.PACKED_VECTOR, zzij.LONG),
    INT32_LIST_PACKED(39, zzhw.PACKED_VECTOR, zzij.INT),
    FIXED64_LIST_PACKED(40, zzhw.PACKED_VECTOR, zzij.LONG),
    FIXED32_LIST_PACKED(41, zzhw.PACKED_VECTOR, zzij.INT),
    BOOL_LIST_PACKED(42, zzhw.PACKED_VECTOR, zzij.BOOLEAN),
    UINT32_LIST_PACKED(43, zzhw.PACKED_VECTOR, zzij.INT),
    ENUM_LIST_PACKED(44, zzhw.PACKED_VECTOR, zzij.ENUM),
    SFIXED32_LIST_PACKED(45, zzhw.PACKED_VECTOR, zzij.INT),
    SFIXED64_LIST_PACKED(46, zzhw.PACKED_VECTOR, zzij.LONG),
    SINT32_LIST_PACKED(47, zzhw.PACKED_VECTOR, zzij.INT),
    SINT64_LIST_PACKED(48, zzhw.PACKED_VECTOR, zzij.LONG),
    GROUP_LIST(49, zzhw.VECTOR, zzij.MESSAGE),
    MAP(50, zzhw.MAP, zzij.VOID);
    
    private static final zzhu[] zzbe;
    private static final Type[] zzbf = new Type[0];
    private final zzij zzaz;
    private final int zzba;
    private final zzhw zzbb;
    private final Class<?> zzbc;
    private final boolean zzbd;

    static {
        zzhu[] values = values();
        zzbe = new zzhu[values.length];
        for (zzhu zzhuVar : values) {
            zzbe[zzhuVar.zzba] = zzhuVar;
        }
    }

    zzhu(int i, zzhw zzhwVar, zzij zzijVar) {
        int i2;
        this.zzba = i;
        this.zzbb = zzhwVar;
        this.zzaz = zzijVar;
        int i3 = zzht.f8511a[zzhwVar.ordinal()];
        boolean z = true;
        if (i3 == 1) {
            this.zzbc = zzijVar.zza();
        } else if (i3 != 2) {
            this.zzbc = null;
        } else {
            this.zzbc = zzijVar.zza();
        }
        this.zzbd = (zzhwVar != zzhw.SCALAR || (i2 = zzht.f8512b[zzijVar.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    public final int zza() {
        return this.zzba;
    }
}
