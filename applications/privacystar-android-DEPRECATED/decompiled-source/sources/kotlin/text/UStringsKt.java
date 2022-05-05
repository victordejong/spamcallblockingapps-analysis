package kotlin.text;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.spongycastle.asn1.cmc.BodyPartID;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u0011\u001a\u001c\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u001a\u0014\u0010\u0014\u001a\u00020\u0007*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u0015\u001a\u001c\u0010\u0014\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u001a\u0014\u0010\u0018\u001a\u00020\n*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u0018\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u001c\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u001e\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m254d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUByteOrNull", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toUIntOrNull", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toULongOrNull", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUShortOrNull", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "UStringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/UStringsKt.class */
public final class UStringsKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toString-JSWoG40  reason: not valid java name */
    public static final String m3283toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, CharsKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toString-LxnNnR4  reason: not valid java name */
    public static final String m3284toStringLxnNnR4(byte b, int i) {
        String num = Integer.toString(b & 255, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toString-V7xB4Y4  reason: not valid java name */
    public static final String m3285toStringV7xB4Y4(int i, int i2) {
        String l = Long.toString(i & BodyPartID.bodyIdMax, CharsKt.checkRadix(i2));
        Intrinsics.checkExpressionValueIsNotNull(l, "java.lang.Long.toString(this, checkRadix(radix))");
        return l;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toString-olVBNx4  reason: not valid java name */
    public static final String m3286toStringolVBNx4(short s, int i) {
        String num = Integer.toString(s & 65535, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte toUByte(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UByte uByteOrNull = toUByteOrNull(receiver$0);
        if (uByteOrNull != null) {
            return uByteOrNull.m2867unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte toUByte(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UByte uByteOrNull = toUByteOrNull(receiver$0, i);
        if (uByteOrNull != null) {
            return uByteOrNull.m2867unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toUByteOrNull(receiver$0, 10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0, i);
        if (uIntOrNull == null) {
            return null;
        }
        int i2 = uIntOrNull.m2935unboximpl();
        if (UnsignedKt.uintCompare(i2, UInt.m2894constructorimpl(255)) > 0) {
            return null;
        }
        return UByte.m2822boximpl(UByte.m2828constructorimpl((byte) i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final int toUInt(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0);
        if (uIntOrNull != null) {
            return uIntOrNull.m2935unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final int toUInt(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0, i);
        if (uIntOrNull != null) {
            return uIntOrNull.m2935unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toUIntOrNull(receiver$0, 10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = receiver$0.charAt(0);
        int i3 = 1;
        if (charAt >= '0') {
            i3 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int i4 = UInt.m2894constructorimpl(i);
        int i5 = UnsignedKt.m3090uintDivideJ1ME1BU(-1, i4);
        while (i3 < length) {
            int digitOf = CharsKt.digitOf(receiver$0.charAt(i3), i);
            if (digitOf < 0 || UnsignedKt.uintCompare(i2, i5) > 0) {
                return null;
            }
            int i6 = UInt.m2894constructorimpl(i2 * i4);
            i2 = UInt.m2894constructorimpl(UInt.m2894constructorimpl(digitOf) + i6);
            if (UnsignedKt.uintCompare(i2, i6) < 0) {
                return null;
            }
            i3++;
        }
        return UInt.m2888boximpl(i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final long toULong(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ULong uLongOrNull = toULongOrNull(receiver$0);
        if (uLongOrNull != null) {
            return uLongOrNull.m3003unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final long toULong(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ULong uLongOrNull = toULongOrNull(receiver$0, i);
        if (uLongOrNull != null) {
            return uLongOrNull.m3003unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final ULong toULongOrNull(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toULongOrNull(receiver$0, 10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final ULong toULongOrNull(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = receiver$0.charAt(0);
        if (charAt < '0') {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i2 = 1;
        }
        long j = UInt.m2894constructorimpl(i) & BodyPartID.bodyIdMax;
        long j2 = UnsignedKt.m3092ulongDivideeb3DHEI(-1L, ULong.m2962constructorimpl(j));
        long j3 = 0;
        while (i2 < length) {
            int digitOf = CharsKt.digitOf(receiver$0.charAt(i2), i);
            if (digitOf < 0 || UnsignedKt.ulongCompare(j3, j2) > 0) {
                return null;
            }
            long j4 = ULong.m2962constructorimpl(j3 * ULong.m2962constructorimpl(j));
            j3 = ULong.m2962constructorimpl(ULong.m2962constructorimpl(UInt.m2894constructorimpl(digitOf) & BodyPartID.bodyIdMax) + j4);
            if (UnsignedKt.ulongCompare(j3, j4) < 0) {
                return null;
            }
            i2++;
        }
        return ULong.m2956boximpl(j3);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final short toUShort(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UShort uShortOrNull = toUShortOrNull(receiver$0);
        if (uShortOrNull != null) {
            return uShortOrNull.m3070unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final short toUShort(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UShort uShortOrNull = toUShortOrNull(receiver$0, i);
        if (uShortOrNull != null) {
            return uShortOrNull.m3070unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toUShortOrNull(receiver$0, 10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0, i);
        if (uIntOrNull == null) {
            return null;
        }
        int i2 = uIntOrNull.m2935unboximpl();
        if (UnsignedKt.uintCompare(i2, UInt.m2894constructorimpl(65535)) > 0) {
            return null;
        }
        return UShort.m3025boximpl(UShort.m3031constructorimpl((short) i2));
    }
}
