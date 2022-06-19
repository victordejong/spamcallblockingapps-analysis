package kotlin.text;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��,\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u0011\u001a\u001c\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u001a\u0014\u0010\u0014\u001a\u00020\u0007*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u0015\u001a\u001c\u0010\u0014\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u001a\u0014\u0010\u0018\u001a\u00020\n*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u0018\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u001c\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��¢\u0006\u0002\u0010\u001e\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007ø\u0001��\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m400d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUByteOrNull", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toUIntOrNull", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toULongOrNull", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUShortOrNull", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/text/UStringsKt.class */
public final class UStringsKt {
    /* renamed from: toString-JSWoG40 */
    public static final String m5527toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, CharsKt.checkRadix(i));
    }

    /* renamed from: toString-LxnNnR4 */
    public static final String m5528toStringLxnNnR4(byte b, int i) {
        String num = Integer.toString(b & 255, CharsKt.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    /* renamed from: toString-V7xB4Y4 */
    public static final String m5529toStringV7xB4Y4(int i, int i2) {
        String l = Long.toString(i & 4294967295L, CharsKt.checkRadix(i2));
        Intrinsics.checkNotNullExpressionValue(l, "java.lang.Long.toString(this, checkRadix(radix))");
        return l;
    }

    /* renamed from: toString-olVBNx4 */
    public static final String m5530toStringolVBNx4(short s, int i) {
        String num = Integer.toString(s & 65535, CharsKt.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    public static final byte toUByte(String toUByte) {
        Intrinsics.checkNotNullParameter(toUByte, "$this$toUByte");
        UByte uByteOrNull = toUByteOrNull(toUByte);
        if (uByteOrNull != null) {
            return uByteOrNull.m4229unboximpl();
        }
        StringsKt.numberFormatError(toUByte);
        throw new KotlinNothingValueException();
    }

    public static final byte toUByte(String toUByte, int i) {
        Intrinsics.checkNotNullParameter(toUByte, "$this$toUByte");
        UByte uByteOrNull = toUByteOrNull(toUByte, i);
        if (uByteOrNull != null) {
            return uByteOrNull.m4229unboximpl();
        }
        StringsKt.numberFormatError(toUByte);
        throw new KotlinNothingValueException();
    }

    public static final UByte toUByteOrNull(String toUByteOrNull) {
        Intrinsics.checkNotNullParameter(toUByteOrNull, "$this$toUByteOrNull");
        return toUByteOrNull(toUByteOrNull, 10);
    }

    public static final UByte toUByteOrNull(String toUByteOrNull, int i) {
        Intrinsics.checkNotNullParameter(toUByteOrNull, "$this$toUByteOrNull");
        UInt uIntOrNull = toUIntOrNull(toUByteOrNull, i);
        if (uIntOrNull != null) {
            int m4300unboximpl = uIntOrNull.m4300unboximpl();
            if (UnsignedKt.uintCompare(m4300unboximpl, UInt.m4257constructorimpl(255)) <= 0) {
                return UByte.m4182boximpl(UByte.m4188constructorimpl((byte) m4300unboximpl));
            }
            return null;
        }
        return null;
    }

    public static final int toUInt(String toUInt) {
        Intrinsics.checkNotNullParameter(toUInt, "$this$toUInt");
        UInt uIntOrNull = toUIntOrNull(toUInt);
        if (uIntOrNull != null) {
            return uIntOrNull.m4300unboximpl();
        }
        StringsKt.numberFormatError(toUInt);
        throw new KotlinNothingValueException();
    }

    public static final int toUInt(String toUInt, int i) {
        Intrinsics.checkNotNullParameter(toUInt, "$this$toUInt");
        UInt uIntOrNull = toUIntOrNull(toUInt, i);
        if (uIntOrNull != null) {
            return uIntOrNull.m4300unboximpl();
        }
        StringsKt.numberFormatError(toUInt);
        throw new KotlinNothingValueException();
    }

    public static final UInt toUIntOrNull(String toUIntOrNull) {
        Intrinsics.checkNotNullParameter(toUIntOrNull, "$this$toUIntOrNull");
        return toUIntOrNull(toUIntOrNull, 10);
    }

    public static final UInt toUIntOrNull(String toUIntOrNull, int i) {
        Intrinsics.checkNotNullParameter(toUIntOrNull, "$this$toUIntOrNull");
        CharsKt.checkRadix(i);
        int length = toUIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = toUIntOrNull.charAt(0);
        int i3 = 1;
        if (Intrinsics.compare((int) charAt, 48) >= 0) {
            i3 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int m4257constructorimpl = UInt.m4257constructorimpl(i);
        int i4 = 119304647;
        int i5 = i3;
        while (i5 < length) {
            int digitOf = CharsKt.digitOf(toUIntOrNull.charAt(i5), i);
            if (digitOf < 0) {
                return null;
            }
            int i6 = i4;
            if (UnsignedKt.uintCompare(i2, i4) > 0) {
                if (i4 != 119304647) {
                    return null;
                }
                int m4490uintDivideJ1ME1BU = UnsignedKt.m4490uintDivideJ1ME1BU(-1, m4257constructorimpl);
                i6 = m4490uintDivideJ1ME1BU;
                if (UnsignedKt.uintCompare(i2, m4490uintDivideJ1ME1BU) > 0) {
                    return null;
                }
            }
            int m4257constructorimpl2 = UInt.m4257constructorimpl(i2 * m4257constructorimpl);
            i2 = UInt.m4257constructorimpl(UInt.m4257constructorimpl(digitOf) + m4257constructorimpl2);
            if (UnsignedKt.uintCompare(i2, m4257constructorimpl2) < 0) {
                return null;
            }
            i5++;
            i4 = i6;
        }
        return UInt.m4251boximpl(i2);
    }

    public static final long toULong(String toULong) {
        Intrinsics.checkNotNullParameter(toULong, "$this$toULong");
        ULong uLongOrNull = toULongOrNull(toULong);
        if (uLongOrNull != null) {
            return uLongOrNull.m4371unboximpl();
        }
        StringsKt.numberFormatError(toULong);
        throw new KotlinNothingValueException();
    }

    public static final long toULong(String toULong, int i) {
        Intrinsics.checkNotNullParameter(toULong, "$this$toULong");
        ULong uLongOrNull = toULongOrNull(toULong, i);
        if (uLongOrNull != null) {
            return uLongOrNull.m4371unboximpl();
        }
        StringsKt.numberFormatError(toULong);
        throw new KotlinNothingValueException();
    }

    public static final ULong toULongOrNull(String toULongOrNull) {
        Intrinsics.checkNotNullParameter(toULongOrNull, "$this$toULongOrNull");
        return toULongOrNull(toULongOrNull, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    public static final ULong toULongOrNull(String toULongOrNull, int i) {
        int digitOf;
        Intrinsics.checkNotNullParameter(toULongOrNull, "$this$toULongOrNull");
        CharsKt.checkRadix(i);
        int length = toULongOrNull.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = toULongOrNull.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i2 = 1;
        }
        long m4328constructorimpl = ULong.m4328constructorimpl(i);
        char c = 0;
        ?? r0 = 512409557603043100;
        while (true) {
            char c2 = r0;
            if (i2 >= length) {
                return ULong.m4322boximpl(c);
            }
            if (CharsKt.digitOf(toULongOrNull.charAt(i2), i) < 0) {
                return null;
            }
            char c3 = c2;
            if (UnsignedKt.ulongCompare(c, c2) > 0) {
                if (c2 != 512409557603043100L) {
                    return null;
                }
                ?? m4492ulongDivideeb3DHEI = UnsignedKt.m4492ulongDivideeb3DHEI(-1L, m4328constructorimpl);
                c3 = m4492ulongDivideeb3DHEI;
                if (UnsignedKt.ulongCompare(c, m4492ulongDivideeb3DHEI) > 0) {
                    return null;
                }
            }
            long m4328constructorimpl2 = ULong.m4328constructorimpl(c * m4328constructorimpl);
            c = ULong.m4328constructorimpl(ULong.m4328constructorimpl(UInt.m4257constructorimpl(digitOf) & 4294967295L) + m4328constructorimpl2);
            if (UnsignedKt.ulongCompare(c, m4328constructorimpl2) < 0) {
                return null;
            }
            i2++;
            r0 = c3;
        }
    }

    public static final short toUShort(String toUShort) {
        Intrinsics.checkNotNullParameter(toUShort, "$this$toUShort");
        UShort uShortOrNull = toUShortOrNull(toUShort);
        if (uShortOrNull != null) {
            return uShortOrNull.m4469unboximpl();
        }
        StringsKt.numberFormatError(toUShort);
        throw new KotlinNothingValueException();
    }

    public static final short toUShort(String toUShort, int i) {
        Intrinsics.checkNotNullParameter(toUShort, "$this$toUShort");
        UShort uShortOrNull = toUShortOrNull(toUShort, i);
        if (uShortOrNull != null) {
            return uShortOrNull.m4469unboximpl();
        }
        StringsKt.numberFormatError(toUShort);
        throw new KotlinNothingValueException();
    }

    public static final UShort toUShortOrNull(String toUShortOrNull) {
        Intrinsics.checkNotNullParameter(toUShortOrNull, "$this$toUShortOrNull");
        return toUShortOrNull(toUShortOrNull, 10);
    }

    public static final UShort toUShortOrNull(String toUShortOrNull, int i) {
        Intrinsics.checkNotNullParameter(toUShortOrNull, "$this$toUShortOrNull");
        UInt uIntOrNull = toUIntOrNull(toUShortOrNull, i);
        if (uIntOrNull != null) {
            int m4300unboximpl = uIntOrNull.m4300unboximpl();
            if (UnsignedKt.uintCompare(m4300unboximpl, UInt.m4257constructorimpl(65535)) <= 0) {
                return UShort.m4422boximpl(UShort.m4428constructorimpl((short) m4300unboximpl));
            }
            return null;
        }
        return null;
    }
}
