package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dna.class */
public enum dna {
    DOUBLE(0, dnc.SCALAR, dnu.DOUBLE),
    FLOAT(1, dnc.SCALAR, dnu.FLOAT),
    INT64(2, dnc.SCALAR, dnu.LONG),
    UINT64(3, dnc.SCALAR, dnu.LONG),
    INT32(4, dnc.SCALAR, dnu.INT),
    FIXED64(5, dnc.SCALAR, dnu.LONG),
    FIXED32(6, dnc.SCALAR, dnu.INT),
    BOOL(7, dnc.SCALAR, dnu.BOOLEAN),
    STRING(8, dnc.SCALAR, dnu.STRING),
    MESSAGE(9, dnc.SCALAR, dnu.MESSAGE),
    BYTES(10, dnc.SCALAR, dnu.BYTE_STRING),
    UINT32(11, dnc.SCALAR, dnu.INT),
    ENUM(12, dnc.SCALAR, dnu.ENUM),
    SFIXED32(13, dnc.SCALAR, dnu.INT),
    SFIXED64(14, dnc.SCALAR, dnu.LONG),
    SINT32(15, dnc.SCALAR, dnu.INT),
    SINT64(16, dnc.SCALAR, dnu.LONG),
    GROUP(17, dnc.SCALAR, dnu.MESSAGE),
    DOUBLE_LIST(18, dnc.VECTOR, dnu.DOUBLE),
    FLOAT_LIST(19, dnc.VECTOR, dnu.FLOAT),
    INT64_LIST(20, dnc.VECTOR, dnu.LONG),
    UINT64_LIST(21, dnc.VECTOR, dnu.LONG),
    INT32_LIST(22, dnc.VECTOR, dnu.INT),
    FIXED64_LIST(23, dnc.VECTOR, dnu.LONG),
    FIXED32_LIST(24, dnc.VECTOR, dnu.INT),
    BOOL_LIST(25, dnc.VECTOR, dnu.BOOLEAN),
    STRING_LIST(26, dnc.VECTOR, dnu.STRING),
    MESSAGE_LIST(27, dnc.VECTOR, dnu.MESSAGE),
    BYTES_LIST(28, dnc.VECTOR, dnu.BYTE_STRING),
    UINT32_LIST(29, dnc.VECTOR, dnu.INT),
    ENUM_LIST(30, dnc.VECTOR, dnu.ENUM),
    SFIXED32_LIST(31, dnc.VECTOR, dnu.INT),
    SFIXED64_LIST(32, dnc.VECTOR, dnu.LONG),
    SINT32_LIST(33, dnc.VECTOR, dnu.INT),
    SINT64_LIST(34, dnc.VECTOR, dnu.LONG),
    DOUBLE_LIST_PACKED(35, dnc.PACKED_VECTOR, dnu.DOUBLE),
    FLOAT_LIST_PACKED(36, dnc.PACKED_VECTOR, dnu.FLOAT),
    INT64_LIST_PACKED(37, dnc.PACKED_VECTOR, dnu.LONG),
    UINT64_LIST_PACKED(38, dnc.PACKED_VECTOR, dnu.LONG),
    INT32_LIST_PACKED(39, dnc.PACKED_VECTOR, dnu.INT),
    FIXED64_LIST_PACKED(40, dnc.PACKED_VECTOR, dnu.LONG),
    FIXED32_LIST_PACKED(41, dnc.PACKED_VECTOR, dnu.INT),
    BOOL_LIST_PACKED(42, dnc.PACKED_VECTOR, dnu.BOOLEAN),
    UINT32_LIST_PACKED(43, dnc.PACKED_VECTOR, dnu.INT),
    ENUM_LIST_PACKED(44, dnc.PACKED_VECTOR, dnu.ENUM),
    SFIXED32_LIST_PACKED(45, dnc.PACKED_VECTOR, dnu.INT),
    SFIXED64_LIST_PACKED(46, dnc.PACKED_VECTOR, dnu.LONG),
    SINT32_LIST_PACKED(47, dnc.PACKED_VECTOR, dnu.INT),
    SINT64_LIST_PACKED(48, dnc.PACKED_VECTOR, dnu.LONG),
    GROUP_LIST(49, dnc.VECTOR, dnu.MESSAGE),
    MAP(50, dnc.MAP, dnu.VOID);
    
    private static final dna[] zzisz;
    private static final Type[] zzita = new Type[0];

    /* renamed from: id */
    private final int f47264id;
    private final dnu zzisv;
    private final dnc zzisw;
    private final Class<?> zzisx;
    private final boolean zzisy;

    static {
        dna[] values = values();
        zzisz = new dna[values.length];
        for (dna dnaVar : values) {
            zzisz[dnaVar.f47264id] = dnaVar;
        }
    }

    dna(int i, dnc dncVar, dnu dnuVar) {
        int i2;
        this.f47264id = i;
        this.zzisw = dncVar;
        this.zzisv = dnuVar;
        int i3 = dnd.f47265a[dncVar.ordinal()];
        boolean z = true;
        if (i3 == 1) {
            this.zzisx = dnuVar.zzbkj();
        } else if (i3 != 2) {
            this.zzisx = null;
        } else {
            this.zzisx = dnuVar.zzbkj();
        }
        this.zzisy = (dncVar != dnc.SCALAR || (i2 = dnd.f47266b[dnuVar.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    /* renamed from: id */
    public final int m16365id() {
        return this.f47264id;
    }
}
