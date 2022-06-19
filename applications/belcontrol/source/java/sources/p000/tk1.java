package p000;
/* renamed from: tk1 */
/* loaded from: classes3-dex2jar.jar:tk1.class */
public class tk1 {
    /* renamed from: a */
    public al1 m474a(Class cls) {
        return new mk1(cls);
    }

    /* renamed from: b */
    public String m473b(pk1 pk1Var) {
        String obj = pk1Var.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    /* renamed from: c */
    public String m472c(rk1 rk1Var) {
        return m473b(rk1Var);
    }
}
