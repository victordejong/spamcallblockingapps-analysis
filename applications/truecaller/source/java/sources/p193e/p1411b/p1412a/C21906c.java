package p193e.p1411b.p1412a;

import java.util.HashSet;
import java.util.Set;
/* renamed from: e.b.a.c */
/* loaded from: classes-dex2jar.jar:e/b/a/c.class */
public class C21906c {

    /* renamed from: a */
    public static final Set<String> f60801a = new HashSet();

    /* renamed from: b */
    public static int f60802b = 0;

    /* renamed from: a */
    public static float m8916a(String str) {
        int i = f60802b;
        if (i > 0) {
            f60802b = i - 1;
            return 0.0f;
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static void m8915b(String str) {
        Set<String> set = f60801a;
        if (set.contains(str)) {
            return;
        }
        set.add(str);
    }
}
