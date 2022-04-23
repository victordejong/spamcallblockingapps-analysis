package p596g.p597a.p598a;

import java.io.BufferedInputStream;
/* renamed from: g.a.a.d */
/* loaded from: classes2-dex2jar.jar:g/a/a/d.class */
public class C10089d {

    /* renamed from: a */
    public static /* synthetic */ Class f37212a;

    /* renamed from: a */
    public static /* synthetic */ Class m1557a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: b */
    public static BufferedInputStream m1556b(String str) {
        Class cls = f37212a;
        Class cls2 = cls;
        if (cls == null) {
            cls2 = m1557a("net.sourceforge.pinyin4j.ResourceHelper");
            f37212a = cls2;
        }
        return new BufferedInputStream(cls2.getResourceAsStream(str));
    }
}
