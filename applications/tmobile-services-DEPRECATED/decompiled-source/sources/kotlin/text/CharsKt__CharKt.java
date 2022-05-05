package kotlin.text;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0010\f\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a#\u0010\u0004\u001a\u00020\u0002*\u00020��2\u0006\u0010\u0001\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0011\u0010\u0006\u001a\u00020\u0002*\u00020��¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001c\u0010\t\u001a\u00020\b*\u00020��2\u0006\u0010\u0001\u001a\u00020\bH\u0087\n¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"", "other", "", "ignoreCase", "equals", "(CCZ)Z", "isSurrogate", "(C)Z", "", "plus", "(CLjava/lang/String;)Ljava/lang/String;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/CharsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharsKt__CharKt.class */
class CharsKt__CharKt extends CharsKt__CharJVMKt {
    /* renamed from: d */
    public static final boolean m1572d(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }
}
