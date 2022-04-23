package p626l.p632u;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p626l.p628b0.C14888d;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.m */
/* loaded from: classes3-dex2jar.jar:l/u/m.class */
public class C15021m extends C15020l {
    /* renamed from: a */
    public static final <T> int m563a(List<? extends T> list) {
        C15149k.m377b(list, "$this$lastIndex");
        return list.size() - 1;
    }

    /* renamed from: a */
    public static final <T> ArrayList<T> m562a(T... tArr) {
        C15149k.m377b(tArr, "elements");
        return tArr.length == 0 ? new ArrayList<>() : new ArrayList<>(new C15004e(tArr, true));
    }

    /* renamed from: a */
    public static final <T> List<T> m565a() {
        return C15032w.f33066a;
    }

    /* renamed from: a */
    public static final C14888d m564a(Collection<?> collection) {
        C15149k.m377b(collection, "$this$indices");
        return new C14888d(0, collection.size() - 1);
    }

    /* renamed from: b */
    public static final <T> Collection<T> m559b(T[] tArr) {
        C15149k.m377b(tArr, "$this$asCollection");
        return new C15004e(tArr, false);
    }

    /* renamed from: b */
    public static final <T> List<T> m560b(List<? extends T> list) {
        Collection collection;
        C15149k.m377b(list, "$this$optimizeReadOnlyList");
        int size = list.size();
        if (size != 0) {
            collection = list;
            if (size == 1) {
                collection = (List<T>) C15020l.m567a(list.get(0));
            }
        } else {
            collection = (List<T>) m565a();
        }
        return (List<T>) collection;
    }

    /* renamed from: b */
    public static final void m561b() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    /* renamed from: c */
    public static final <T> List<T> m557c(T... tArr) {
        C15149k.m377b(tArr, "elements");
        return tArr.length > 0 ? C15011h.m605a(tArr) : m565a();
    }

    /* renamed from: c */
    public static final void m558c() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    /* renamed from: d */
    public static final <T> List<T> m556d(T... tArr) {
        C15149k.m377b(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new C15004e(tArr, true));
    }
}
