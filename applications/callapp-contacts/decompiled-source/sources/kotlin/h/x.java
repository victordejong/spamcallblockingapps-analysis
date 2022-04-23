package kotlin.h;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H��\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\f\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, d2 = {"numberFormatError", "", "input", "", "toByteOrNull", "", "(Ljava/lang/String;)Ljava/lang/Byte;", "radix", "", "(Ljava/lang/String;I)Ljava/lang/Byte;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "toLongOrNull", "", "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "toShortOrNull", "", "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "kotlin-stdlib"}, k = 5, mv = {1, 4, 1}, xi = 1, xs = "kotlin/text/StringsKt")
/* loaded from: classes5-dex2jar.jar:kotlin/h/x.class */
public class x extends w {
    public static final Integer a(String toIntOrNull, int i) {
        boolean z;
        p.d(toIntOrNull, "$this$toIntOrNull");
        a.a(i);
        int length = toIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = toIntOrNull.charAt(0);
        int i3 = -2147483647;
        int i4 = 1;
        if (p.a(charAt, 48) >= 0) {
            z = false;
            i4 = 0;
        } else if (length == 1) {
            return null;
        } else {
            if (charAt == '-') {
                i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                z = true;
            } else if (charAt != '+') {
                return null;
            } else {
                z = false;
            }
        }
        int i5 = -59652323;
        while (i4 < length) {
            int digit = Character.digit((int) toIntOrNull.charAt(i4), i);
            if (digit < 0) {
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
            if (i7 < i3 + digit) {
                return null;
            }
            i2 = i7 - digit;
            i4++;
        }
        return z ? Integer.valueOf(i2) : Integer.valueOf(-i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00dc  */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Long b(java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h.x.b(java.lang.String, int):java.lang.Long");
    }

    public static final Integer e(String toIntOrNull) {
        p.d(toIntOrNull, "$this$toIntOrNull");
        return p.a(toIntOrNull, 10);
    }

    public static final Long f(String toLongOrNull) {
        p.d(toLongOrNull, "$this$toLongOrNull");
        return p.b(toLongOrNull, 10);
    }
}
