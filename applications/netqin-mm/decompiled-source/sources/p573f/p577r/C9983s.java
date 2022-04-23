package p573f.p577r;

import java.util.Iterator;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.r.s */
/* loaded from: classes2-dex2jar.jar:f/r/s.class */
public class C9983s extends C9982r {
    /* renamed from: a */
    public static final <T> boolean m1703a(Iterable<? extends T> iterable, AbstractC10031l<? super T, Boolean> lVar) {
        C10059q.m1637b(iterable, "$this$retainAll");
        C10059q.m1637b(lVar, "predicate");
        return m1702a(iterable, lVar, false);
    }

    /* renamed from: a */
    public static final <T> boolean m1702a(Iterable<? extends T> iterable, AbstractC10031l<? super T, Boolean> lVar, boolean z) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            if (lVar.invoke((Object) it.next()).booleanValue() == z) {
                it.remove();
                z2 = true;
            }
        }
        return z2;
    }
}
