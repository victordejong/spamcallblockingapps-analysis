package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;
import p131c.p161d.p170b.p224d.p252g.p253a.s70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejt.class */
public enum zzejt {
    DOUBLE(0, zzejv.SCALAR, zzekl.DOUBLE),
    FLOAT(1, zzejv.SCALAR, zzekl.FLOAT),
    INT64(2, zzejv.SCALAR, zzekl.LONG),
    UINT64(3, zzejv.SCALAR, zzekl.LONG),
    INT32(4, zzejv.SCALAR, zzekl.INT),
    FIXED64(5, zzejv.SCALAR, zzekl.LONG),
    FIXED32(6, zzejv.SCALAR, zzekl.INT),
    BOOL(7, zzejv.SCALAR, zzekl.BOOLEAN),
    STRING(8, zzejv.SCALAR, zzekl.STRING),
    MESSAGE(9, zzejv.SCALAR, zzekl.MESSAGE),
    BYTES(10, zzejv.SCALAR, zzekl.BYTE_STRING),
    UINT32(11, zzejv.SCALAR, zzekl.INT),
    ENUM(12, zzejv.SCALAR, zzekl.ENUM),
    SFIXED32(13, zzejv.SCALAR, zzekl.INT),
    SFIXED64(14, zzejv.SCALAR, zzekl.LONG),
    SINT32(15, zzejv.SCALAR, zzekl.INT),
    SINT64(16, zzejv.SCALAR, zzekl.LONG),
    GROUP(17, zzejv.SCALAR, zzekl.MESSAGE),
    DOUBLE_LIST(18, zzejv.VECTOR, zzekl.DOUBLE),
    FLOAT_LIST(19, zzejv.VECTOR, zzekl.FLOAT),
    INT64_LIST(20, zzejv.VECTOR, zzekl.LONG),
    UINT64_LIST(21, zzejv.VECTOR, zzekl.LONG),
    INT32_LIST(22, zzejv.VECTOR, zzekl.INT),
    FIXED64_LIST(23, zzejv.VECTOR, zzekl.LONG),
    FIXED32_LIST(24, zzejv.VECTOR, zzekl.INT),
    BOOL_LIST(25, zzejv.VECTOR, zzekl.BOOLEAN),
    STRING_LIST(26, zzejv.VECTOR, zzekl.STRING),
    MESSAGE_LIST(27, zzejv.VECTOR, zzekl.MESSAGE),
    BYTES_LIST(28, zzejv.VECTOR, zzekl.BYTE_STRING),
    UINT32_LIST(29, zzejv.VECTOR, zzekl.INT),
    ENUM_LIST(30, zzejv.VECTOR, zzekl.ENUM),
    SFIXED32_LIST(31, zzejv.VECTOR, zzekl.INT),
    SFIXED64_LIST(32, zzejv.VECTOR, zzekl.LONG),
    SINT32_LIST(33, zzejv.VECTOR, zzekl.INT),
    SINT64_LIST(34, zzejv.VECTOR, zzekl.LONG),
    DOUBLE_LIST_PACKED(35, zzejv.PACKED_VECTOR, zzekl.DOUBLE),
    FLOAT_LIST_PACKED(36, zzejv.PACKED_VECTOR, zzekl.FLOAT),
    INT64_LIST_PACKED(37, zzejv.PACKED_VECTOR, zzekl.LONG),
    UINT64_LIST_PACKED(38, zzejv.PACKED_VECTOR, zzekl.LONG),
    INT32_LIST_PACKED(39, zzejv.PACKED_VECTOR, zzekl.INT),
    FIXED64_LIST_PACKED(40, zzejv.PACKED_VECTOR, zzekl.LONG),
    FIXED32_LIST_PACKED(41, zzejv.PACKED_VECTOR, zzekl.INT),
    BOOL_LIST_PACKED(42, zzejv.PACKED_VECTOR, zzekl.BOOLEAN),
    UINT32_LIST_PACKED(43, zzejv.PACKED_VECTOR, zzekl.INT),
    ENUM_LIST_PACKED(44, zzejv.PACKED_VECTOR, zzekl.ENUM),
    SFIXED32_LIST_PACKED(45, zzejv.PACKED_VECTOR, zzekl.INT),
    SFIXED64_LIST_PACKED(46, zzejv.PACKED_VECTOR, zzekl.LONG),
    SINT32_LIST_PACKED(47, zzejv.PACKED_VECTOR, zzekl.INT),
    SINT64_LIST_PACKED(48, zzejv.PACKED_VECTOR, zzekl.LONG),
    GROUP_LIST(49, zzejv.VECTOR, zzekl.MESSAGE),
    MAP(50, zzejv.MAP, zzekl.VOID);
    
    public static final zzejt[] zziio;
    public static final Type[] zziip = new Type[0];

    /* renamed from: id */
    public final int f28070id;
    public final zzekl zziik;
    public final zzejv zziil;
    public final Class<?> zziim;
    public final boolean zziin;

    static {
        zzejt[] values = values();
        zziio = new zzejt[values.length];
        for (zzejt zzejtVar : values) {
            zziio[zzejtVar.f28070id] = zzejtVar;
        }
    }

    zzejt(int i, zzejv zzejvVar, zzekl zzeklVar) {
        int i2;
        this.f28070id = i;
        this.zziil = zzejvVar;
        this.zziik = zzeklVar;
        int i3 = s70.f15078a[zzejvVar.ordinal()];
        boolean z = true;
        if (i3 == 1) {
            this.zziim = zzeklVar.zzbhg();
        } else if (i3 != 2) {
            this.zziim = null;
        } else {
            this.zziim = zzeklVar.zzbhg();
        }
        this.zziin = (zzejvVar != zzejv.SCALAR || (i2 = s70.f15079b[zzeklVar.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    /* renamed from: id */
    public final int m12416id() {
        return this.f28070id;
    }
}
