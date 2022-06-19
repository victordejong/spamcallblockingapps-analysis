package p287x6;

import p117h8.C3035k;
/* JADX WARN: Init of enum e can be incorrect */
/* JADX WARN: Init of enum f can be incorrect */
/* JADX WARN: Init of enum g can be incorrect */
/* JADX WARN: Init of enum h can be incorrect */
/* JADX WARN: Init of enum i can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum o can be incorrect */
/* JADX WARN: Init of enum q can be incorrect */
/* JADX WARN: Init of enum r can be incorrect */
/* JADX WARN: Init of enum s can be incorrect */
/* JADX WARN: Init of enum t can be incorrect */
/* renamed from: x6.c0 */
/* loaded from: classes-dex2jar.jar:x6/c0.class */
public enum EnumC4898c0 {
    DOUBLE(EnumC4904d0.DOUBLE, 1),
    FLOAT(EnumC4904d0.FLOAT, 5),
    INT64(r0, 0),
    UINT64(r0, 0),
    INT32(r0, 0),
    FIXED64(r0, 1),
    FIXED32(r0, 5),
    BOOL(EnumC4904d0.BOOLEAN, 0),
    STRING(EnumC4904d0.STRING, 2) { // from class: x6.c0.a
    },
    GROUP(r0, 3) { // from class: x6.c0.b
    },
    MESSAGE(r0, 2) { // from class: x6.c0.c
    },
    BYTES(EnumC4904d0.BYTE_STRING, 2) { // from class: x6.c0.d
    },
    UINT32(r0, 0),
    ENUM(EnumC4904d0.ENUM, 0),
    SFIXED32(r0, 5),
    SFIXED64(r0, 1),
    SINT32(r0, 0),
    SINT64(r0, 0);
    

    /* renamed from: a */
    public final EnumC4904d0 f14986a;

    /* renamed from: b */
    public final int f14987b;

    static {
        EnumC4904d0 enumC4904d0 = EnumC4904d0.LONG;
        EnumC4904d0 enumC4904d02 = EnumC4904d0.INT;
        EnumC4904d0 enumC4904d03 = EnumC4904d0.MESSAGE;
    }

    EnumC4898c0(EnumC4904d0 enumC4904d0, int i) {
        this.f14986a = enumC4904d0;
        this.f14987b = i;
    }

    EnumC4898c0(EnumC4904d0 enumC4904d0, int i, C3035k c3035k) {
        this.f14986a = enumC4904d0;
        this.f14987b = i;
    }
}
