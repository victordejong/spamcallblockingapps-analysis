package kotlin.p087i;
/* renamed from: kotlin.i.c */
/* loaded from: classes-dex2jar.jar:kotlin/i/c.class */
class C1741c extends C1740b {
    /* renamed from: a */
    public static final boolean m3055a(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }
}
