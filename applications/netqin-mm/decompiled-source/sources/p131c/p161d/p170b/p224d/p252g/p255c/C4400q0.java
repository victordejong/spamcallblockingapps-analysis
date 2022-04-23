package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcw;
import com.google.android.gms.internal.clearcut.zzcx;
import com.google.android.gms.internal.clearcut.zzfa;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: c.d.b.d.g.c.q0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/q0.class */
public final class C4400q0 extends AbstractC4390o0 {

    /* renamed from: c */
    public static final Class<?> f16614c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public C4400q0() {
        super();
    }

    /* renamed from: b */
    public static <E> List<E> m25728b(Object obj, long j) {
        return (List) C4368k2.m25848f(obj, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4390o0
    /* renamed from: a */
    public final void mo25670a(Object obj, long j) {
        Object obj2;
        List list = (List) C4368k2.m25848f(obj, j);
        if (list instanceof zzcx) {
            obj2 = ((zzcx) list).mo10658h();
        } else if (!f16614c.isAssignableFrom(list.getClass())) {
            obj2 = Collections.unmodifiableList(list);
        } else {
            return;
        }
        C4368k2.m25874a(obj, j, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4390o0
    /* renamed from: a */
    public final <E> void mo25669a(Object obj, Object obj2, long j) {
        List list;
        zzcw zzcwVar;
        List b = m25728b(obj2, j);
        int size = b.size();
        List b2 = m25728b(obj, j);
        if (b2.isEmpty()) {
            List zzcwVar2 = b2 instanceof zzcx ? new zzcw(size) : new ArrayList(size);
            C4368k2.m25874a(obj, j, zzcwVar2);
            list = zzcwVar2;
        } else {
            if (f16614c.isAssignableFrom(b2.getClass())) {
                ArrayList arrayList = new ArrayList(b2.size() + size);
                arrayList.addAll(b2);
                zzcwVar = arrayList;
            } else {
                list = b2;
                if (b2 instanceof zzfa) {
                    zzcw zzcwVar3 = new zzcw(b2.size() + size);
                    zzcwVar3.addAll((zzfa) b2);
                    zzcwVar = zzcwVar3;
                }
            }
            C4368k2.m25874a(obj, j, zzcwVar);
            list = zzcwVar;
        }
        int size2 = list.size();
        int size3 = b.size();
        if (size2 > 0 && size3 > 0) {
            list.addAll(b);
        }
        if (size2 > 0) {
            b = list;
        }
        C4368k2.m25874a(obj, j, b);
    }
}
