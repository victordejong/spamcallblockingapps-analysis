package org.apache.commons.lang3.c.a;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/e.class */
public final class e extends j {
    public e(int i, int i2, boolean z) {
        super(i, i2, z);
    }

    public static e a() {
        return new e(32, 127, false);
    }

    @Override // org.apache.commons.lang3.c.a.j
    protected final String b(int i) {
        char[] chars = Character.toChars(i);
        return "\\u" + a(chars[0]) + "\\u" + a(chars[1]);
    }
}
