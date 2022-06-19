package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��.\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H��\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\f\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, m400d2 = {"numberFormatError", "", "input", "", "toByteOrNull", "", "(Ljava/lang/String;)Ljava/lang/Byte;", "radix", "", "(Ljava/lang/String;I)Ljava/lang/Byte;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "toLongOrNull", "", "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "toShortOrNull", "", "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/text/StringsKt")
/* loaded from: classes-dex2jar.jar:kotlin/text/StringsKt__StringNumberConversionsKt.class */
public class StringsKt__StringNumberConversionsKt extends StringsKt__StringNumberConversionsJVMKt {
    public static final Void numberFormatError(String input) {
        Intrinsics.checkNotNullParameter(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + '\'');
    }

    public static final Byte toByteOrNull(String toByteOrNull) {
        Intrinsics.checkNotNullParameter(toByteOrNull, "$this$toByteOrNull");
        return StringsKt.toByteOrNull(toByteOrNull, 10);
    }

    public static final Byte toByteOrNull(String toByteOrNull, int i) {
        int intValue;
        Intrinsics.checkNotNullParameter(toByteOrNull, "$this$toByteOrNull");
        Integer intOrNull = StringsKt.toIntOrNull(toByteOrNull, i);
        if (intOrNull == null || (intValue = intOrNull.intValue()) < -128 || intValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) intValue);
    }

    public static final Integer toIntOrNull(String toIntOrNull) {
        Intrinsics.checkNotNullParameter(toIntOrNull, "$this$toIntOrNull");
        return StringsKt.toIntOrNull(toIntOrNull, 10);
    }

    public static final Integer toIntOrNull(String toIntOrNull, int i) {
        boolean z;
        Intrinsics.checkNotNullParameter(toIntOrNull, "$this$toIntOrNull");
        CharsKt.checkRadix(i);
        int length = toIntOrNull.length();
        if (length == 0) {
            return null;
        }
        char charAt = toIntOrNull.charAt(0);
        int i2 = -2147483647;
        int i3 = 1;
        if (Intrinsics.compare((int) charAt, 48) >= 0) {
            z = false;
            i3 = 0;
        } else if (length == 1) {
            return null;
        } else {
            if (charAt == '-') {
                i2 = Integer.MIN_VALUE;
                z = true;
            } else if (charAt != '+') {
                return null;
            } else {
                z = false;
            }
        }
        int i4 = -59652323;
        int i5 = i3;
        int i6 = 0;
        while (i5 < length) {
            int digitOf = CharsKt.digitOf(toIntOrNull.charAt(i5), i);
            if (digitOf < 0) {
                return null;
            }
            int i7 = i4;
            if (i6 < i4) {
                if (i4 != -59652323) {
                    return null;
                }
                int i8 = i2 / i;
                i7 = i8;
                if (i6 < i8) {
                    return null;
                }
            }
            int i9 = i6 * i;
            if (i9 < i2 + digitOf) {
                return null;
            }
            i6 = i9 - digitOf;
            i5++;
            i4 = i7;
        }
        if (!z) {
            i6 = -i6;
        }
        return Integer.valueOf(i6);
    }

    public static final Long toLongOrNull(String toLongOrNull) {
        Intrinsics.checkNotNullParameter(toLongOrNull, "$this$toLongOrNull");
        return StringsKt.toLongOrNull(toLongOrNull, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Long toLongOrNull(java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.toLongOrNull(java.lang.String, int):java.lang.Long");
    }

    public static final Short toShortOrNull(String toShortOrNull) {
        Intrinsics.checkNotNullParameter(toShortOrNull, "$this$toShortOrNull");
        return StringsKt.toShortOrNull(toShortOrNull, 10);
    }

    public static final Short toShortOrNull(String toShortOrNull, int i) {
        int intValue;
        Intrinsics.checkNotNullParameter(toShortOrNull, "$this$toShortOrNull");
        Integer intOrNull = StringsKt.toIntOrNull(toShortOrNull, i);
        if (intOrNull == null || (intValue = intOrNull.intValue()) < -32768 || intValue > 32767) {
            return null;
        }
        return Short.valueOf((short) intValue);
    }
}
