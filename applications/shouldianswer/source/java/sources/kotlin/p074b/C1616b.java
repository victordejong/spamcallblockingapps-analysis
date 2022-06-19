package kotlin.p074b;
/* renamed from: kotlin.b.b */
/* loaded from: classes-dex2jar.jar:kotlin/b/b.class */
public class C1616b {
    /* renamed from: a */
    public static final <T extends Comparable<?>> int m3177a(T t, T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 != null) {
            return t.compareTo(t2);
        }
        return 1;
    }
}
