package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzig;
import com.google.android.gms.internal.measurement.zziq;
import com.google.android.gms.internal.measurement.zzir;
import com.google.android.gms.internal.measurement.zzku;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: c.d.b.d.g.f.p3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/p3.class */
public final class C4566p3 extends AbstractC4552n3 {

    /* renamed from: c */
    public static final Class<?> f16836c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C4566p3() {
        super();
    }

    /* renamed from: a */
    public static <L> List<L> m25340a(Object obj, long j, int i) {
        zzir zzirVar;
        List<L> c = m25337c(obj, j);
        if (c.isEmpty()) {
            zzirVar = c instanceof zziq ? new zzir(i) : (!(c instanceof AbstractC4507h4) || !(c instanceof zzig)) ? new ArrayList(i) : ((zzig) c).zza(i);
            C4522j5.m25430a(obj, j, zzirVar);
        } else if (f16836c.isAssignableFrom(c.getClass())) {
            ArrayList arrayList = new ArrayList(c.size() + i);
            arrayList.addAll(c);
            C4522j5.m25430a(obj, j, arrayList);
            zzirVar = arrayList;
        } else if (c instanceof zzku) {
            zzir zzirVar2 = new zzir(c.size() + i);
            zzirVar2.addAll((zzku) c);
            C4522j5.m25430a(obj, j, zzirVar2);
            zzirVar = zzirVar2;
        } else {
            zzirVar = c;
            if (c instanceof AbstractC4507h4) {
                zzirVar = c;
                if (c instanceof zzig) {
                    zzig zzigVar = (zzig) c;
                    zzirVar = c;
                    if (!zzigVar.zza()) {
                        zzirVar = zzigVar.zza(c.size() + i);
                        C4522j5.m25430a(obj, j, zzirVar);
                    }
                }
            }
        }
        return zzirVar;
    }

    /* renamed from: c */
    public static <E> List<E> m25337c(Object obj, long j) {
        return (List) C4522j5.m25407f(obj, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3
    /* renamed from: a */
    public final <L> List<L> mo25341a(Object obj, long j) {
        return m25340a(obj, j, 10);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3
    /* renamed from: a */
    public final <E> void mo25339a(Object obj, Object obj2, long j) {
        List c = m25337c(obj2, j);
        List a = m25340a(obj, j, c.size());
        int size = a.size();
        int size2 = c.size();
        if (size > 0 && size2 > 0) {
            a.addAll(c);
        }
        if (size > 0) {
            c = a;
        }
        C4522j5.m25430a(obj, j, c);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3
    /* renamed from: b */
    public final void mo25338b(Object obj, long j) {
        Object obj2;
        List list = (List) C4522j5.m25407f(obj, j);
        if (list instanceof zziq) {
            obj2 = ((zziq) list).mo9596p();
        } else if (!f16836c.isAssignableFrom(list.getClass())) {
            if (!(list instanceof AbstractC4507h4) || !(list instanceof zzig)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                zzig zzigVar = (zzig) list;
                if (zzigVar.zza()) {
                    zzigVar.mo9631H();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        C4522j5.m25430a(obj, j, obj2);
    }
}
