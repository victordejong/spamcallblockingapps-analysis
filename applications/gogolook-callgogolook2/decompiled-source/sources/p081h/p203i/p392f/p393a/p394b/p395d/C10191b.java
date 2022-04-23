package p081h.p203i.p392f.p393a.p394b.p395d;

import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import p081h.p203i.p392f.p393a.p394b.AbstractC10181a;
import p081h.p203i.p392f.p393a.p394b.AbstractC10182b;
import p081h.p203i.p392f.p393a.p397c.C10211a;
import p081h.p203i.p392f.p393a.p397c.C10212b;
import p081h.p203i.p392f.p393a.p398d.C10214b;
import p081h.p203i.p392f.p393a.p399e.C10215a;
/* renamed from: h.i.f.a.b.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/b/d/b.class */
public class C10191b<T extends AbstractC10182b> implements AbstractC10190a<T> {

    /* renamed from: c */
    public static final C10214b f22963c = new C10214b(1.0d);

    /* renamed from: a */
    public final Collection<C10193b<T>> f22964a = new ArrayList();

    /* renamed from: b */
    public final C10215a<C10193b<T>> f22965b = new C10215a<>(0.0d, 1.0d, 0.0d, 1.0d);

    /* renamed from: h.i.f.a.b.d.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/d/b$b.class */
    public static class C10193b<T extends AbstractC10182b> implements C10215a.AbstractC10216a, AbstractC10181a<T> {

        /* renamed from: a */
        public final T f22966a;

        /* renamed from: b */
        public final C10212b f22967b;

        /* renamed from: c */
        public final LatLng f22968c;

        /* renamed from: d */
        public Set<T> f22969d;

        public C10193b(T t) {
            this.f22966a = t;
            this.f22968c = t.getPosition();
            this.f22967b = C10191b.f22963c.m13108a(this.f22968c);
            this.f22969d = Collections.singleton(this.f22966a);
        }

        @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10181a
        /* renamed from: a */
        public int mo13173a() {
            return 1;
        }

        @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10181a
        /* renamed from: b */
        public Set<T> mo13171b() {
            return this.f22969d;
        }

        @Override // p081h.p203i.p392f.p393a.p399e.C10215a.AbstractC10216a
        /* renamed from: c */
        public C10212b mo13100c() {
            return this.f22967b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C10193b)) {
                return false;
            }
            return ((C10193b) obj).f22966a.equals(this.f22966a);
        }

        @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10181a
        public LatLng getPosition() {
            return this.f22968c;
        }

        public int hashCode() {
            return this.f22966a.hashCode();
        }
    }

    /* renamed from: a */
    public final double m13182a(C10212b bVar, C10212b bVar2) {
        double d = bVar.f23038a;
        double d2 = bVar2.f23038a;
        double d3 = bVar.f23039b;
        double d4 = bVar2.f23039b;
        return ((d - d2) * (d - d2)) + ((d3 - d4) * (d3 - d4));
    }

    /* renamed from: a */
    public final C10211a m13183a(C10212b bVar, double d) {
        double d2 = d / 2.0d;
        double d3 = bVar.f23038a;
        double d4 = bVar.f23039b;
        return new C10211a(d3 - d2, d3 + d2, d4 - d2, d4 + d2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a
    /* renamed from: a */
    public Set<? extends AbstractC10181a<T>> mo13178a(double d) {
        double pow = (100.0d / Math.pow(2.0d, (int) d)) / 256.0d;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        synchronized (this.f22965b) {
            for (C10193b<T> bVar : this.f22964a) {
                if (!hashSet.contains(bVar)) {
                    Collection<C10193b<T>> a = this.f22965b.m13104a(m13183a(bVar.mo13100c(), pow));
                    if (a.size() == 1) {
                        hashSet2.add(bVar);
                        hashSet.add(bVar);
                        hashMap.put(bVar, Double.valueOf(0.0d));
                    } else {
                        C10196d dVar = new C10196d(bVar.f22966a.getPosition());
                        hashSet2.add(dVar);
                        for (C10193b<T> bVar2 : a) {
                            Double d2 = (Double) hashMap.get(bVar2);
                            double a2 = m13182a(bVar2.mo13100c(), bVar.mo13100c());
                            if (d2 != null) {
                                if (d2.doubleValue() >= a2) {
                                    ((C10196d) hashMap2.get(bVar2)).m13170b(bVar2.f22966a);
                                }
                            }
                            hashMap.put(bVar2, Double.valueOf(a2));
                            dVar.m13172a(bVar2.f22966a);
                            hashMap2.put(bVar2, dVar);
                        }
                        hashSet.addAll(a);
                    }
                }
            }
        }
        return hashSet2;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a
    /* renamed from: a */
    public void mo13179a() {
        synchronized (this.f22965b) {
            this.f22964a.clear();
            this.f22965b.m13106a();
        }
    }

    /* renamed from: a */
    public void m13184a(T t) {
        C10193b<T> bVar = new C10193b<>(t);
        synchronized (this.f22965b) {
            this.f22964a.add(bVar);
            this.f22965b.m13102a((C10215a<C10193b<T>>) bVar);
        }
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p395d.AbstractC10190a
    /* renamed from: a */
    public void mo13175a(Collection<T> collection) {
        for (T t : collection) {
            m13184a((C10191b<T>) t);
        }
    }
}
