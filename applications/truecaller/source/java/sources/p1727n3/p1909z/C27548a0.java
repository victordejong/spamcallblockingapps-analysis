package p1727n3.p1909z;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1909z.AbstractC27557c1;
import p1727n3.p1909z.AbstractC27597r0;
import s1.d0.h;
import s1.d0.j;
import s1.u.i;
import s1.u.z;
import s1.z.c.l;
/* renamed from: n3.z.a0 */
/* loaded from: classes-dex2jar.jar:n3/z/a0.class */
public final class C27548a0<T> {

    /* renamed from: a */
    public int f77593a;

    /* renamed from: b */
    public int f77594b;

    /* renamed from: c */
    public final ArrayDeque<C27569g3<T>> f77595c = new ArrayDeque<>();

    /* renamed from: d */
    public final C27611x0 f77596d = new C27611x0();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m116a(AbstractC27557c1<T> abstractC27557c1) {
        l.e(abstractC27557c1, "event");
        if (abstractC27557c1 instanceof AbstractC27557c1.b) {
            AbstractC27557c1.b bVar = (AbstractC27557c1.b) abstractC27557c1;
            this.f77596d.m15c(bVar.e);
            int ordinal = bVar.a.ordinal();
            if (ordinal == 0) {
                this.f77595c.clear();
                this.f77594b = bVar.d;
                this.f77593a = bVar.c;
                this.f77595c.addAll(bVar.b);
            } else if (ordinal != 1) {
                if (ordinal != 2) {
                    return;
                }
                this.f77594b = bVar.d;
                this.f77595c.addAll(bVar.b);
            } else {
                this.f77593a = bVar.c;
                z it = j.f(bVar.b.size() - 1, 0).iterator();
                while (((h) it).hasNext()) {
                    this.f77595c.addFirst(bVar.b.get(it.a()));
                }
            }
        } else if (!(abstractC27557c1 instanceof AbstractC27557c1.a)) {
            if (!(abstractC27557c1 instanceof AbstractC27557c1.c)) {
                return;
            }
            AbstractC27557c1.c cVar = (AbstractC27557c1.c) abstractC27557c1;
            this.f77596d.m14d(cVar.a, cVar.b, cVar.c);
        } else {
            AbstractC27557c1.a aVar = (AbstractC27557c1.a) abstractC27557c1;
            this.f77596d.m14d(aVar.a, false, AbstractC27597r0.c.c);
            int ordinal2 = aVar.a.ordinal();
            if (ordinal2 == 1) {
                this.f77593a = aVar.d;
                int c = aVar.c();
                for (int i = 0; i < c; i++) {
                    this.f77595c.removeFirst();
                }
            } else if (ordinal2 != 2) {
                throw new IllegalArgumentException("Page drop type must be prepend or append");
            } else {
                this.f77594b = aVar.d;
                int c2 = aVar.c();
                for (int i2 = 0; i2 < c2; i2++) {
                    this.f77595c.removeLast();
                }
            }
        }
    }

    /* renamed from: b */
    public final List<AbstractC27557c1<T>> m115b() {
        ArrayList arrayList = new ArrayList();
        if (!this.f77595c.isEmpty()) {
            arrayList.add(AbstractC27557c1.b.g.m103c(i.S0(this.f77595c), this.f77593a, this.f77594b, this.f77596d.m13e()));
        } else {
            C27611x0 c27611x0 = this.f77596d;
            C27600s0 c27600s0 = c27611x0.f77832d;
            EnumC27601t0 enumC27601t0 = EnumC27601t0.REFRESH;
            AbstractC27597r0 abstractC27597r0 = c27600s0.f77791a;
            if (AbstractC27557c1.c.c(abstractC27597r0, false)) {
                arrayList.add(new AbstractC27557c1.c(enumC27601t0, false, abstractC27597r0));
            }
            EnumC27601t0 enumC27601t02 = EnumC27601t0.PREPEND;
            AbstractC27597r0 abstractC27597r02 = c27600s0.f77792b;
            if (AbstractC27557c1.c.c(abstractC27597r02, false)) {
                arrayList.add(new AbstractC27557c1.c(enumC27601t02, false, abstractC27597r02));
            }
            EnumC27601t0 enumC27601t03 = EnumC27601t0.APPEND;
            AbstractC27597r0 abstractC27597r03 = c27600s0.f77793c;
            if (AbstractC27557c1.c.c(abstractC27597r03, false)) {
                arrayList.add(new AbstractC27557c1.c(enumC27601t03, false, abstractC27597r03));
            }
            C27600s0 c27600s02 = c27611x0.f77833e;
            if (c27600s02 != null) {
                AbstractC27597r0 abstractC27597r04 = c27600s02.f77791a;
                if (AbstractC27557c1.c.c(abstractC27597r04, true)) {
                    arrayList.add(new AbstractC27557c1.c(enumC27601t0, true, abstractC27597r04));
                }
                AbstractC27597r0 abstractC27597r05 = c27600s02.f77792b;
                if (AbstractC27557c1.c.c(abstractC27597r05, true)) {
                    arrayList.add(new AbstractC27557c1.c(enumC27601t02, true, abstractC27597r05));
                }
                AbstractC27597r0 abstractC27597r06 = c27600s02.f77793c;
                if (AbstractC27557c1.c.c(abstractC27597r06, true)) {
                    arrayList.add(new AbstractC27557c1.c(enumC27601t03, true, abstractC27597r06));
                }
            }
        }
        return arrayList;
    }
}
