package p131c.p161d.p282e.p289l.p290d.p298l;

import java.io.File;
import java.util.Comparator;
/* renamed from: c.d.e.l.d.l.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/l/e.class */
public final /* synthetic */ class C5401e implements Comparator {

    /* renamed from: a */
    public static final C5401e f18319a = new C5401e();

    /* renamed from: a */
    public static Comparator m23916a() {
        return f18319a;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((File) obj2).getName().compareTo(((File) obj).getName());
        return compareTo;
    }
}
