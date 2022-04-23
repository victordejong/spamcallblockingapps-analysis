package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Type;
import p131c.p161d.p170b.p224d.p252g.p255c.C4351h0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcb.class */
public enum zzcb {
    DOUBLE(0, zzcd.SCALAR, zzcq.DOUBLE),
    FLOAT(1, zzcd.SCALAR, zzcq.FLOAT),
    INT64(2, zzcd.SCALAR, zzcq.LONG),
    UINT64(3, zzcd.SCALAR, zzcq.LONG),
    INT32(4, zzcd.SCALAR, zzcq.INT),
    FIXED64(5, zzcd.SCALAR, zzcq.LONG),
    FIXED32(6, zzcd.SCALAR, zzcq.INT),
    BOOL(7, zzcd.SCALAR, zzcq.BOOLEAN),
    STRING(8, zzcd.SCALAR, zzcq.STRING),
    MESSAGE(9, zzcd.SCALAR, zzcq.MESSAGE),
    BYTES(10, zzcd.SCALAR, zzcq.BYTE_STRING),
    UINT32(11, zzcd.SCALAR, zzcq.INT),
    ENUM(12, zzcd.SCALAR, zzcq.ENUM),
    SFIXED32(13, zzcd.SCALAR, zzcq.INT),
    SFIXED64(14, zzcd.SCALAR, zzcq.LONG),
    SINT32(15, zzcd.SCALAR, zzcq.INT),
    SINT64(16, zzcd.SCALAR, zzcq.LONG),
    GROUP(17, zzcd.SCALAR, zzcq.MESSAGE),
    DOUBLE_LIST(18, zzcd.VECTOR, zzcq.DOUBLE),
    FLOAT_LIST(19, zzcd.VECTOR, zzcq.FLOAT),
    INT64_LIST(20, zzcd.VECTOR, zzcq.LONG),
    UINT64_LIST(21, zzcd.VECTOR, zzcq.LONG),
    INT32_LIST(22, zzcd.VECTOR, zzcq.INT),
    FIXED64_LIST(23, zzcd.VECTOR, zzcq.LONG),
    FIXED32_LIST(24, zzcd.VECTOR, zzcq.INT),
    BOOL_LIST(25, zzcd.VECTOR, zzcq.BOOLEAN),
    STRING_LIST(26, zzcd.VECTOR, zzcq.STRING),
    MESSAGE_LIST(27, zzcd.VECTOR, zzcq.MESSAGE),
    BYTES_LIST(28, zzcd.VECTOR, zzcq.BYTE_STRING),
    UINT32_LIST(29, zzcd.VECTOR, zzcq.INT),
    ENUM_LIST(30, zzcd.VECTOR, zzcq.ENUM),
    SFIXED32_LIST(31, zzcd.VECTOR, zzcq.INT),
    SFIXED64_LIST(32, zzcd.VECTOR, zzcq.LONG),
    SINT32_LIST(33, zzcd.VECTOR, zzcq.INT),
    SINT64_LIST(34, zzcd.VECTOR, zzcq.LONG),
    DOUBLE_LIST_PACKED(35, zzcd.PACKED_VECTOR, zzcq.DOUBLE),
    FLOAT_LIST_PACKED(36, zzcd.PACKED_VECTOR, zzcq.FLOAT),
    INT64_LIST_PACKED(37, zzcd.PACKED_VECTOR, zzcq.LONG),
    UINT64_LIST_PACKED(38, zzcd.PACKED_VECTOR, zzcq.LONG),
    INT32_LIST_PACKED(39, zzcd.PACKED_VECTOR, zzcq.INT),
    FIXED64_LIST_PACKED(40, zzcd.PACKED_VECTOR, zzcq.LONG),
    FIXED32_LIST_PACKED(41, zzcd.PACKED_VECTOR, zzcq.INT),
    BOOL_LIST_PACKED(42, zzcd.PACKED_VECTOR, zzcq.BOOLEAN),
    UINT32_LIST_PACKED(43, zzcd.PACKED_VECTOR, zzcq.INT),
    ENUM_LIST_PACKED(44, zzcd.PACKED_VECTOR, zzcq.ENUM),
    SFIXED32_LIST_PACKED(45, zzcd.PACKED_VECTOR, zzcq.INT),
    SFIXED64_LIST_PACKED(46, zzcd.PACKED_VECTOR, zzcq.LONG),
    SINT32_LIST_PACKED(47, zzcd.PACKED_VECTOR, zzcq.INT),
    SINT64_LIST_PACKED(48, zzcd.PACKED_VECTOR, zzcq.LONG),
    GROUP_LIST(49, zzcd.VECTOR, zzcq.MESSAGE),
    MAP(50, zzcd.MAP, zzcq.VOID);
    
    public static final zzcb[] zzjb;
    public static final Type[] zzjc = new Type[0];

    /* renamed from: id */
    public final int f29245id;
    public final zzcq zzix;
    public final zzcd zziy;
    public final Class<?> zziz;
    public final boolean zzja;

    static {
        zzcb[] values = values();
        zzjb = new zzcb[values.length];
        for (zzcb zzcbVar : values) {
            zzjb[zzcbVar.f29245id] = zzcbVar;
        }
    }

    zzcb(int i, zzcd zzcdVar, zzcq zzcqVar) {
        int i2;
        this.f29245id = i;
        this.zziy = zzcdVar;
        this.zzix = zzcqVar;
        int i3 = C4351h0.f16523a[zzcdVar.ordinal()];
        boolean z = true;
        this.zziz = (i3 == 1 || i3 == 2) ? zzcqVar.zzbq() : null;
        this.zzja = (zzcdVar != zzcd.SCALAR || (i2 = C4351h0.f16524b[zzcqVar.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    /* renamed from: id */
    public final int m10732id() {
        return this.f29245id;
    }
}
