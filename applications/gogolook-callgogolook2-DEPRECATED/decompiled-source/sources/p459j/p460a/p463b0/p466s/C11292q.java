package p459j.p460a.p463b0.p466s;
/* renamed from: j.a.b0.s.q */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/q.class */
public class C11292q {
    static {
        new C11318w();
        new C11242d();
    }

    /* renamed from: a */
    public static String m9871a(String str, int i, AbstractC11316u uVar) {
        StringBuilder sb = new StringBuilder();
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (uVar.mo9791e(charAt)) {
                sb.append(charAt);
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m9870a(String str, AbstractC11316u uVar) {
        return m9871a(str, 0, uVar);
    }
}
