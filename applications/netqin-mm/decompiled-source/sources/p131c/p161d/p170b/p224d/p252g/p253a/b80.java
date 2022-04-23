package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekk;
import com.google.android.gms.internal.ads.zzekr;
import com.google.android.gms.internal.ads.zzeku;
import com.google.android.gms.internal.ads.zzenc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: c.d.b.d.g.a.b80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b80.class */
public final class b80 extends a80 {

    /* renamed from: c */
    public static final Class<?> f12345c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public b80() {
        super();
    }

    /* renamed from: a */
    public static <L> List<L> m27180a(Object obj, long j, int i) {
        zzekr zzekrVar;
        List<L> c = m27179c(obj, j);
        if (c.isEmpty()) {
            zzekrVar = c instanceof zzeku ? new zzekr(i) : (!(c instanceof w80) || !(c instanceof zzekk)) ? new ArrayList(i) : ((zzekk) c).mo12357e(i);
            ba0.m27167a(obj, j, zzekrVar);
        } else if (f12345c.isAssignableFrom(c.getClass())) {
            ArrayList arrayList = new ArrayList(c.size() + i);
            arrayList.addAll(c);
            ba0.m27167a(obj, j, arrayList);
            zzekrVar = arrayList;
        } else if (c instanceof zzenc) {
            zzekr zzekrVar2 = new zzekr(c.size() + i);
            zzekrVar2.addAll((zzenc) c);
            ba0.m27167a(obj, j, zzekrVar2);
            zzekrVar = zzekrVar2;
        } else {
            zzekrVar = c;
            if (c instanceof w80) {
                zzekrVar = c;
                if (c instanceof zzekk) {
                    zzekk zzekkVar = (zzekk) c;
                    zzekrVar = c;
                    if (!zzekkVar.mo12360w()) {
                        zzekrVar = zzekkVar.mo12357e(c.size() + i);
                        ba0.m27167a(obj, j, zzekrVar);
                    }
                }
            }
        }
        return zzekrVar;
    }

    /* renamed from: c */
    public static <E> List<E> m27179c(Object obj, long j) {
        return (List) ba0.m27144f(obj, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.a80
    /* renamed from: a */
    public final <L> List<L> mo27055a(Object obj, long j) {
        return m27180a(obj, j, 10);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.a80
    /* renamed from: a */
    public final <E> void mo27054a(Object obj, Object obj2, long j) {
        List c = m27179c(obj2, j);
        List a = m27180a(obj, j, c.size());
        int size = a.size();
        int size2 = c.size();
        if (size > 0 && size2 > 0) {
            a.addAll(c);
        }
        if (size > 0) {
            c = a;
        }
        ba0.m27167a(obj, j, c);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.a80
    /* renamed from: b */
    public final void mo27053b(Object obj, long j) {
        Object obj2;
        List list = (List) ba0.m27144f(obj, j);
        if (list instanceof zzeku) {
            obj2 = ((zzeku) list).mo12324x();
        } else if (!f12345c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof w80) || !(list instanceof zzekk)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzekk zzekkVar = (zzekk) list;
                if (zzekkVar.mo12360w()) {
                    zzekkVar.mo12361A();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        ba0.m27167a(obj, j, obj2);
    }
}
