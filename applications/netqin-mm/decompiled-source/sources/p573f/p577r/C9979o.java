package p573f.p577r;

import java.util.Collection;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.o */
/* loaded from: classes2-dex2jar.jar:f/r/o.class */
public class C9979o extends C9978n {
    /* renamed from: a */
    public static final <T> int m1705a(Iterable<? extends T> iterable, int i) {
        C10059q.m1637b(iterable, "$this$collectionSizeOrDefault");
        if (iterable instanceof Collection) {
            i = ((Collection) iterable).size();
        }
        return i;
    }
}
