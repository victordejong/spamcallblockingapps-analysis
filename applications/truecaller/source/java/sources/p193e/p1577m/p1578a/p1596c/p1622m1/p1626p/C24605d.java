package p193e.p1577m.p1578a.p1596c.p1622m1.p1626p;

import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.m1.p.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/p/d.class */
public final class C24605d implements AbstractC24565e {

    /* renamed from: a */
    public final List<List<C24562b>> f68870a;

    /* renamed from: b */
    public final List<Long> f68871b;

    public C24605d(List<List<C24562b>> list, List<Long> list2) {
        this.f68870a = list;
        this.f68871b = list2;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: a */
    public long mo4813a(int i) {
        C26232y.m2310r(i >= 0);
        C26232y.m2310r(i < this.f68871b.size());
        return this.f68871b.get(i).longValue();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: c */
    public int mo4812c() {
        return this.f68871b.size();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: d */
    public int mo4811d(long j) {
        List<Long> list = this.f68871b;
        Long valueOf = Long.valueOf(j);
        int i = C24773d0.f69427a;
        int binarySearch = Collections.binarySearch(list, valueOf);
        if (binarySearch >= 0) {
            int size = list.size();
            do {
                binarySearch++;
                if (binarySearch >= size) {
                    break;
                }
            } while (list.get(binarySearch).compareTo(valueOf) == 0);
        } else {
            binarySearch ^= -1;
        }
        if (binarySearch >= this.f68871b.size()) {
            binarySearch = -1;
        }
        return binarySearch;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: e */
    public List<C24562b> mo4810e(long j) {
        int i;
        List<Long> list = this.f68871b;
        Long valueOf = Long.valueOf(j);
        int i2 = C24773d0.f69427a;
        int binarySearch = Collections.binarySearch(list, valueOf);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i3--;
                if (i3 < 0) {
                    break;
                }
            } while (list.get(i3).compareTo(valueOf) == 0);
            i = i3 + 1;
        }
        return i == -1 ? Collections.emptyList() : this.f68870a.get(i);
    }
}
