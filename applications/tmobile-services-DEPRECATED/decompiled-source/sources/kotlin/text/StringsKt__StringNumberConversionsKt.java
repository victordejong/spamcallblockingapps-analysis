package kotlin.text;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0004\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020��H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020��2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0006\u0010\n\u001a\u0015\u0010\u000b\u001a\u0004\u0018\u00010\b*\u00020��H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u001d\u0010\u000b\u001a\u0004\u0018\u00010\b*\u00020��2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\r\u001a\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020��H\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020��2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000f\u0010\u0011\u001a\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0012*\u00020��H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u0012*\u00020��2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0013\u0010\u0015¨\u0006\u0016"}, d2 = {"", "input", "", "numberFormatError", "(Ljava/lang/String;)Ljava/lang/Void;", "", "toByteOrNull", "(Ljava/lang/String;)Ljava/lang/Byte;", "", "radix", "(Ljava/lang/String;I)Ljava/lang/Byte;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "", "toLongOrNull", "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "", "toShortOrNull", "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringNumberConversionsKt.class */
public class StringsKt__StringNumberConversionsKt extends StringsKt__StringNumberConversionsJVMKt {
    @SinceKotlin
    @Nullable
    /* renamed from: i */
    public static Integer m1497i(@NotNull String toIntOrNull) {
        Intrinsics.m1830e(toIntOrNull, "$this$toIntOrNull");
        return m1496j(toIntOrNull, 10);
    }

    @SinceKotlin
    @Nullable
    /* renamed from: j */
    public static final Integer m1496j(@NotNull String toIntOrNull, int i) {
        boolean z;
        Intrinsics.m1830e(toIntOrNull, "$this$toIntOrNull");
        CharsKt__CharJVMKt.m1575a(i);
        int length = toIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = toIntOrNull.charAt(0);
        int i3 = -2147483647;
        int i4 = 1;
        if (Intrinsics.m1828g(charAt, 48) >= 0) {
            z = false;
            i4 = 0;
        } else if (length == 1) {
            return null;
        } else {
            if (charAt == '-') {
                i3 = Integer.MIN_VALUE;
                z = true;
            } else if (charAt != '+') {
                return null;
            } else {
                z = false;
            }
        }
        int i5 = -59652323;
        while (i4 < length) {
            int b = CharsKt__CharJVMKt.m1574b(toIntOrNull.charAt(i4), i);
            if (b < 0) {
                return null;
            }
            i5 = i5;
            if (i2 < i5) {
                if (i5 != -59652323) {
                    return null;
                }
                int i6 = i3 / i;
                i5 = i6;
                if (i2 < i6) {
                    return null;
                }
            }
            int i7 = i2 * i;
            if (i7 < i3 + b) {
                return null;
            }
            i2 = i7 - b;
            i4++;
        }
        if (!z) {
            i2 = -i2;
        }
        return Integer.valueOf(i2);
    }

    @SinceKotlin
    @Nullable
    /* renamed from: k */
    public static Long m1495k(@NotNull String toLongOrNull) {
        Intrinsics.m1830e(toLongOrNull, "$this$toLongOrNull");
        return m1494l(toLongOrNull, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d9  */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Unknown variable types count: 2 */
    @kotlin.SinceKotlin
    @org.jetbrains.annotations.Nullable
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Long m1494l(@org.jetbrains.annotations.NotNull java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringNumberConversionsKt.m1494l(java.lang.String, int):java.lang.Long");
    }
}
