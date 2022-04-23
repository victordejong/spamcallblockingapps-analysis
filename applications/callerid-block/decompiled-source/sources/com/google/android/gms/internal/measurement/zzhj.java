package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum A can be incorrect */
/* JADX WARN: Init of enum B can be incorrect */
/* JADX WARN: Init of enum C can be incorrect */
/* JADX WARN: Init of enum D can be incorrect */
/* JADX WARN: Init of enum E can be incorrect */
/* JADX WARN: Init of enum F can be incorrect */
/* JADX WARN: Init of enum G can be incorrect */
/* JADX WARN: Init of enum H can be incorrect */
/* JADX WARN: Init of enum I can be incorrect */
/* JADX WARN: Init of enum J can be incorrect */
/* JADX WARN: Init of enum K can be incorrect */
/* JADX WARN: Init of enum L can be incorrect */
/* JADX WARN: Init of enum M can be incorrect */
/* JADX WARN: Init of enum N can be incorrect */
/* JADX WARN: Init of enum O can be incorrect */
/* JADX WARN: Init of enum P can be incorrect */
/* JADX WARN: Init of enum Q can be incorrect */
/* JADX WARN: Init of enum R can be incorrect */
/* JADX WARN: Init of enum S can be incorrect */
/* JADX WARN: Init of enum T can be incorrect */
/* JADX WARN: Init of enum U can be incorrect */
/* JADX WARN: Init of enum V can be incorrect */
/* JADX WARN: Init of enum W can be incorrect */
/* JADX WARN: Init of enum X can be incorrect */
/* JADX WARN: Init of enum Y can be incorrect */
/* JADX WARN: Init of enum b can be incorrect */
/* JADX WARN: Init of enum c can be incorrect */
/* JADX WARN: Init of enum d can be incorrect */
/* JADX WARN: Init of enum e can be incorrect */
/* JADX WARN: Init of enum f can be incorrect */
/* JADX WARN: Init of enum g can be incorrect */
/* JADX WARN: Init of enum h can be incorrect */
/* JADX WARN: Init of enum i can be incorrect */
/* JADX WARN: Init of enum j can be incorrect */
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* JADX WARN: Init of enum o can be incorrect */
/* JADX WARN: Init of enum p can be incorrect */
/* JADX WARN: Init of enum q can be incorrect */
/* JADX WARN: Init of enum r can be incorrect */
/* JADX WARN: Init of enum s can be incorrect */
/* JADX WARN: Init of enum t can be incorrect */
/* JADX WARN: Init of enum u can be incorrect */
/* JADX WARN: Init of enum v can be incorrect */
/* JADX WARN: Init of enum w can be incorrect */
/* JADX WARN: Init of enum x can be incorrect */
/* JADX WARN: Init of enum y can be incorrect */
/* JADX WARN: Init of enum z can be incorrect */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhj.class */
public enum zzhj {
    DOUBLE(0, 1, r0),
    FLOAT(1, 1, r0),
    INT64(2, 1, r0),
    UINT64(3, 1, r0),
    INT32(4, 1, r0),
    FIXED64(5, 1, r0),
    FIXED32(6, 1, r0),
    BOOL(7, 1, r0),
    STRING(8, 1, r0),
    MESSAGE(9, 1, r0),
    BYTES(10, 1, r0),
    UINT32(11, 1, r0),
    ENUM(12, 1, r0),
    SFIXED32(13, 1, r0),
    SFIXED64(14, 1, r0),
    SINT32(15, 1, r0),
    SINT64(16, 1, r0),
    GROUP(17, 1, r0),
    DOUBLE_LIST(18, 2, r0),
    FLOAT_LIST(19, 2, r0),
    INT64_LIST(20, 2, r0),
    UINT64_LIST(21, 2, r0),
    INT32_LIST(22, 2, r0),
    FIXED64_LIST(23, 2, r0),
    FIXED32_LIST(24, 2, r0),
    BOOL_LIST(25, 2, r0),
    STRING_LIST(26, 2, r0),
    MESSAGE_LIST(27, 2, r0),
    BYTES_LIST(28, 2, r0),
    UINT32_LIST(29, 2, r0),
    ENUM_LIST(30, 2, r0),
    SFIXED32_LIST(31, 2, r0),
    SFIXED64_LIST(32, 2, r0),
    SINT32_LIST(33, 2, r0),
    SINT64_LIST(34, 2, r0),
    DOUBLE_LIST_PACKED(35, 3, r0),
    FLOAT_LIST_PACKED(36, 3, r0),
    INT64_LIST_PACKED(37, 3, r0),
    UINT64_LIST_PACKED(38, 3, r0),
    INT32_LIST_PACKED(39, 3, r0),
    FIXED64_LIST_PACKED(40, 3, r0),
    FIXED32_LIST_PACKED(41, 3, r0),
    BOOL_LIST_PACKED(42, 3, r0),
    UINT32_LIST_PACKED(43, 3, r0),
    ENUM_LIST_PACKED(44, 3, r0),
    SFIXED32_LIST_PACKED(45, 3, r0),
    SFIXED64_LIST_PACKED(46, 3, r0),
    SINT32_LIST_PACKED(47, 3, r0),
    SINT64_LIST_PACKED(48, 3, r0),
    GROUP_LIST(49, 2, r0),
    MAP(50, 4, zzic.VOID);
    

    /* renamed from: a0 */
    private static final zzhj[] f9888a0;
    private final zzic zzZ;
    private final int zzaa;
    private final Class<?> zzab;

    static {
        zzic zzicVar = zzic.DOUBLE;
        zzic zzicVar2 = zzic.FLOAT;
        zzic zzicVar3 = zzic.LONG;
        zzic zzicVar4 = zzic.INT;
        zzic zzicVar5 = zzic.BOOLEAN;
        zzic zzicVar6 = zzic.STRING;
        zzic zzicVar7 = zzic.MESSAGE;
        zzic zzicVar8 = zzic.BYTE_STRING;
        zzic zzicVar9 = zzic.ENUM;
        zzic zzicVar10 = zzic.LONG;
        zzhj[] values = values();
        f9888a0 = new zzhj[values.length];
        for (zzhj zzhjVar : values) {
            f9888a0[zzhjVar.zzaa] = zzhjVar;
        }
    }

    zzhj(int i, int i2, zzic zzicVar) {
        this.zzaa = i;
        this.zzZ = zzicVar;
        zzic zzicVar2 = zzic.VOID;
        int i3 = i2 - 1;
        this.zzab = (i3 == 1 || i3 == 3) ? zzicVar.zza() : null;
        if (i2 == 1) {
            zzicVar.ordinal();
        }
    }

    public final int zza() {
        return this.zzaa;
    }
}
