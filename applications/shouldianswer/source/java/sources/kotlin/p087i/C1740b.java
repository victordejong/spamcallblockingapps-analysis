package kotlin.p087i;

import kotlin.p084f.C1711c;
/* renamed from: kotlin.i.b */
/* loaded from: classes-dex2jar.jar:kotlin/i/b.class */
class C1740b {
    /* renamed from: a */
    public static final int m3057a(char c, int i) {
        return Character.digit((int) c, i);
    }

    /* renamed from: a */
    public static final int m3056a(int i) {
        if (2 > i || 36 < i) {
            throw new IllegalArgumentException("radix " + i + " was not in valid range " + new C1711c(2, 36));
        }
        return i;
    }

    /* renamed from: a */
    public static final boolean m3058a(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }
}
