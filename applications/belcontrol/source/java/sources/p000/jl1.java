package p000;
/* renamed from: jl1 */
/* loaded from: classes3-dex2jar.jar:jl1.class */
public class jl1 extends il1 {
    /* renamed from: a */
    public static final boolean m1471a(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }
}
