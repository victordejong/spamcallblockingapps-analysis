package kotlin.text;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ranges.IntRange;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0002\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��H\u0001¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001f\u0010\u0006\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0014\u0010\t\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\t\u0010\n\u001a\u0014\u0010\u000b\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u000b\u0010\n\u001a\u0014\u0010\f\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\f\u0010\n\u001a\u0014\u0010\r\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\r\u0010\n\u001a\u0014\u0010\u000e\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u000e\u0010\n\u001a\u0014\u0010\u000f\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u000f\u0010\n\u001a\u0014\u0010\u0010\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0010\u0010\n\u001a\u0014\u0010\u0011\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0011\u0010\n\u001a\u0014\u0010\u0012\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0012\u0010\n\u001a\u0014\u0010\u0013\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0013\u0010\n\u001a\u0014\u0010\u0014\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0014\u0010\n\u001a\u0014\u0010\u0015\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0015\u0010\n\u001a\u0014\u0010\u0016\u001a\u00020\b*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0016\u0010\n\u001a\u0011\u0010\u0017\u001a\u00020\b*\u00020\u0004¢\u0006\u0004\b\u0017\u0010\n\u001a\u0014\u0010\u0018\u001a\u00020\u0004*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0014\u0010\u001a\u001a\u00020\u0004*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u001a\u0010\u0019\u001a\u0014\u0010\u001b\u001a\u00020\u0004*\u00020\u0004H\u0087\b¢\u0006\u0004\b\u001b\u0010\u0019\"\u0017\u0010\u001f\u001a\u00020\u001c*\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\"\u0017\u0010#\u001a\u00020 *\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006$"}, d2 = {"", "radix", "checkRadix", "(I)I", "", "char", "digitOf", "(CI)I", "", "isDefined", "(C)Z", "isDigit", "isHighSurrogate", "isISOControl", "isIdentifierIgnorable", "isJavaIdentifierPart", "isJavaIdentifierStart", "isLetter", "isLetterOrDigit", "isLowSurrogate", "isLowerCase", "isTitleCase", "isUpperCase", "isWhitespace", "toLowerCase", "(C)C", "toTitleCase", "toUpperCase", "Lkotlin/text/CharCategory;", "getCategory", "(C)Lkotlin/text/CharCategory;", "category", "Lkotlin/text/CharDirectionality;", "getDirectionality", "(C)Lkotlin/text/CharDirectionality;", "directionality", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/CharsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharsKt__CharJVMKt.class */
public class CharsKt__CharJVMKt {
    @PublishedApi
    /* renamed from: a */
    public static int m1575a(int i) {
        if (2 <= i && 36 >= i) {
            return i;
        }
        throw new IllegalArgumentException("radix " + i + " was not in valid range " + new IntRange(2, 36));
    }

    /* renamed from: b */
    public static final int m1574b(char c, int i) {
        return Character.digit((int) c, i);
    }

    /* renamed from: c */
    public static final boolean m1573c(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }
}
