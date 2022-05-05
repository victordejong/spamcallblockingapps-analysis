package p626l.p633v;
/* renamed from: l.v.a */
/* loaded from: classes3-dex2jar.jar:l/v/a.class */
public class C15036a {
    /* renamed from: a */
    public static final <T extends Comparable<?>> int m498a(T t, T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }
}
