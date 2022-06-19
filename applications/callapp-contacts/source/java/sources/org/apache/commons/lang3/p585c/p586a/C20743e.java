package org.apache.commons.lang3.p585c.p586a;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.e */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/e.class */
public final class C20743e extends C20749j {
    public C20743e(int i, int i2, boolean z) {
        super(i, i2, z);
    }

    /* renamed from: a */
    public static C20743e m538a() {
        return new C20743e(32, 127, false);
    }

    @Override // org.apache.commons.lang3.p585c.p586a.C20749j
    /* renamed from: b */
    protected final String mo534b(int i) {
        char[] chars = Character.toChars(i);
        return "\\u" + m553a(chars[0]) + "\\u" + m553a(chars[1]);
    }
}
