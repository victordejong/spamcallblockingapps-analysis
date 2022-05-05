package p626l.p631e0;

import p626l.p628b0.C14888d;
/* renamed from: l.e0.a */
/* loaded from: classes3-dex2jar.jar:l/e0/a.class */
public class C14936a {
    /* renamed from: a */
    public static final int m762a(char c, int i) {
        return Character.digit((int) c, i);
    }

    /* renamed from: a */
    public static final int m761a(int i) {
        if (2 <= i && 36 >= i) {
            return i;
        }
        throw new IllegalArgumentException("radix " + i + " was not in valid range " + new C14888d(2, 36));
    }

    /* renamed from: a */
    public static final boolean m763a(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }
}
