package p459j.p460a.p531k0;

import java.text.Collator;
import java.util.Locale;
import p459j.p460a.p582w0.C14090n2;
import p459j.p460a.p582w0.C14098o2;
/* renamed from: j.a.k0.a */
/* loaded from: classes3-dex2jar.jar:j/a/k0/a.class */
public class C12845a implements Comparable<C12845a> {

    /* renamed from: a */
    public long f29030a;

    /* renamed from: b */
    public String f29031b;

    /* renamed from: c */
    public String f29032c;

    /* renamed from: d */
    public String f29033d;

    /* renamed from: e */
    public String f29034e;

    /* renamed from: f */
    public String f29035f;

    /* renamed from: g */
    public String f29036g;

    /* renamed from: h */
    public int f29037h;

    /* renamed from: i */
    public String f29038i;

    /* renamed from: j */
    public String f29039j;

    /* renamed from: a */
    public int compareTo(C12845a aVar) {
        int a = m5151a(this.f29039j, aVar.f29039j);
        if (a != 0) {
            return a;
        }
        boolean g = C14090n2.m2589g(Character.valueOf(this.f29032c.toLowerCase().charAt(0)));
        if (g == C14090n2.m2589g(Character.valueOf(aVar.f29032c.toLowerCase().charAt(0)))) {
            return m5151a(this.f29032c, aVar.f29032c);
        }
        return g ? -1 : 1;
    }

    /* renamed from: a */
    public final int m5151a(String str, String str2) {
        if (str == null || str2 == null || str.length() == 0 || str2.length() == 0) {
            return 0;
        }
        boolean h = C14090n2.m2588h(Character.valueOf(str.charAt(0)));
        boolean h2 = C14090n2.m2588h(Character.valueOf(str2.charAt(0)));
        if (h && !h2) {
            return 1;
        }
        if (!h && h2) {
            return -1;
        }
        if (C14098o2.m2549c()) {
            boolean f = C14090n2.m2590f(Character.valueOf(str.charAt(0)));
            boolean f2 = C14090n2.m2590f(Character.valueOf(str2.charAt(0)));
            if (f && !f2) {
                return -1;
            }
            if (f || !f2) {
                return str.compareTo(str2);
            }
            return 1;
        } else if (C14098o2.m2550b()) {
            boolean b = C14090n2.m2595b(Character.valueOf(str.charAt(0)));
            boolean b2 = C14090n2.m2595b(Character.valueOf(str2.charAt(0)));
            if (b && !b2) {
                return -1;
            }
            if (!b && b2) {
                return 1;
            }
            if (b) {
                if (C14090n2.m2593c(Character.valueOf(str.charAt(0))) && C14090n2.m2592d(Character.valueOf(str2.charAt(0)))) {
                    return -1;
                }
                if (C14090n2.m2592d(Character.valueOf(str.charAt(0))) && C14090n2.m2593c(Character.valueOf(str2.charAt(0)))) {
                    return 1;
                }
            }
            return Collator.getInstance(Locale.JAPANESE).compare(str, str2);
        } else if (C14098o2.m2548d()) {
            boolean a = C14090n2.m2598a(Character.valueOf(str.charAt(0)));
            boolean a2 = C14090n2.m2598a(Character.valueOf(str2.charAt(0)));
            if (a && !a2) {
                return -1;
            }
            if (a || !a2) {
                return str.compareTo(str2);
            }
            return 1;
        } else {
            boolean g = C14090n2.m2589g(Character.valueOf(str.charAt(0)));
            boolean g2 = C14090n2.m2589g(Character.valueOf(str2.charAt(0)));
            if (g && !g2) {
                return -1;
            }
            if (g || !g2) {
                return str.compareTo(str2);
            }
            return 1;
        }
    }
}
