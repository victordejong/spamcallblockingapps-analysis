package p020b.p041h.p049k;
/* renamed from: b.h.k.b */
/* loaded from: classes-dex2jar.jar:b/h/k/b.class */
public class C1591b {
    /* renamed from: a */
    public static void m29669a(Object obj, StringBuilder sb) {
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        String str = simpleName;
        if (simpleName.length() <= 0) {
            String name = obj.getClass().getName();
            int lastIndexOf = name.lastIndexOf(46);
            str = name;
            if (lastIndexOf > 0) {
                str = name.substring(lastIndexOf + 1);
            }
        }
        sb.append(str);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }
}
