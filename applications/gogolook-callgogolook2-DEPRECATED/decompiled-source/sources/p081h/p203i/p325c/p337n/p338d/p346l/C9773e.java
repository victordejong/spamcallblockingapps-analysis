package p081h.p203i.p325c.p337n.p338d.p346l;

import java.io.File;
import java.util.Comparator;
/* renamed from: h.i.c.n.d.l.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/l/e.class */
public final /* synthetic */ class C9773e implements Comparator {

    /* renamed from: a */
    public static final C9773e f22180a = new C9773e();

    /* renamed from: a */
    public static Comparator m14333a() {
        return f22180a;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((File) obj2).getName().compareTo(((File) obj).getName());
        return compareTo;
    }
}
