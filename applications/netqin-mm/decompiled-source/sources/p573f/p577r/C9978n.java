package p573f.p577r;

import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10080c;
/* renamed from: f.r.n */
/* loaded from: classes2-dex2jar.jar:f/r/n.class */
public class C9978n extends C9977m {
    /* renamed from: a */
    public static final C10080c m1708a(Collection<?> collection) {
        C10059q.m1637b(collection, "$this$indices");
        return new C10080c(0, collection.size() - 1);
    }

    /* renamed from: a */
    public static final <T> List<T> m1709a() {
        return EmptyList.INSTANCE;
    }

    /* renamed from: a */
    public static final <T> List<T> m1707a(T... tArr) {
        C10059q.m1637b(tArr, "elements");
        return tArr.length > 0 ? C9966g.m1722a(tArr) : m1709a();
    }

    /* renamed from: b */
    public static final void m1706b() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
