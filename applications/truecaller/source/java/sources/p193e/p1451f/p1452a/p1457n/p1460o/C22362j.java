package p193e.p1451f.p1452a.p1457n.p1460o;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22228g;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.AbstractC22270l;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.EnumC22260c;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e;
import p193e.p1451f.p1452a.p1457n.p1460o.RunnableC22354i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.AbstractC22550e;
/* renamed from: e.f.a.n.o.j */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/j.class */
public class C22362j<DataType, ResourceType, Transcode> {

    /* renamed from: a */
    public final Class<DataType> f62119a;

    /* renamed from: b */
    public final List<? extends AbstractC22269k<DataType, ResourceType>> f62120b;

    /* renamed from: c */
    public final AbstractC22550e<ResourceType, Transcode> f62121c;

    /* renamed from: d */
    public final AbstractC26555e<List<Throwable>> f62122d;

    /* renamed from: e */
    public final String f62123e;

    /* renamed from: e.f.a.n.o.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/j$a.class */
    public interface AbstractC22363a<ResourceType> {
    }

    public C22362j(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends AbstractC22269k<DataType, ResourceType>> list, AbstractC22550e<ResourceType, Transcode> abstractC22550e, AbstractC26555e<List<Throwable>> abstractC26555e) {
        this.f62119a = cls;
        this.f62120b = list;
        this.f62121c = abstractC22550e;
        this.f62122d = abstractC26555e;
        StringBuilder m8728C = C22128a.m8728C("Failed DecodePath{");
        m8728C.append(cls.getSimpleName());
        m8728C.append("->");
        m8728C.append(cls2.getSimpleName());
        m8728C.append("->");
        m8728C.append(cls3.getSimpleName());
        m8728C.append("}");
        this.f62123e = m8728C.toString();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public AbstractC22394w<Transcode> m8280a(AbstractC22276e<DataType> abstractC22276e, int i, int i2, C22267i c22267i, AbstractC22363a<ResourceType> abstractC22363a) throws C22387r {
        AbstractC22271m abstractC22271m;
        AbstractC22394w<ResourceType> abstractC22394w;
        EnumC22260c enumC22260c;
        boolean z;
        C22396y c22396y;
        List<Throwable> mo1689a = this.f62122d.mo1689a();
        Objects.requireNonNull(mo1689a, "Argument must not be null");
        List<Throwable> list = mo1689a;
        try {
            AbstractC22394w<ResourceType> m8279b = m8279b(abstractC22276e, i, i2, c22267i, list);
            this.f62122d.mo1688b(list);
            RunnableC22354i.C22356b c22356b = (RunnableC22354i.C22356b) abstractC22363a;
            RunnableC22354i runnableC22354i = RunnableC22354i.this;
            EnumC22258a enumC22258a = c22356b.f62100a;
            Objects.requireNonNull(runnableC22354i);
            Class<?> cls = m8279b.get().getClass();
            AbstractC22270l abstractC22270l = null;
            if (enumC22258a != EnumC22258a.RESOURCE_DISK_CACHE) {
                abstractC22271m = runnableC22354i.f62074a.m8297f(cls);
                abstractC22394w = abstractC22271m.m8358a(runnableC22354i.f62081h, m8279b, runnableC22354i.f62085l, runnableC22354i.f62086m);
            } else {
                abstractC22394w = m8279b;
                abstractC22271m = null;
            }
            if (!m8279b.equals(abstractC22394w)) {
                m8279b.mo8162b();
            }
            if (runnableC22354i.f62074a.f62053c.f61738b.f61755d.m8114a(abstractC22394w.mo8161c()) != null) {
                abstractC22270l = runnableC22354i.f62074a.f62053c.f61738b.f61755d.m8114a(abstractC22394w.mo8161c());
                if (abstractC22270l == null) {
                    throw new C22228g.C22232d(abstractC22394w.mo8161c());
                }
                enumC22260c = abstractC22270l.m8359b(runnableC22354i.f62088o);
            } else {
                enumC22260c = EnumC22260c.NONE;
            }
            C22353h<R> c22353h = runnableC22354i.f62074a;
            AbstractC22263f abstractC22263f = runnableC22354i.f62097x;
            List<AbstractC22436n.C22437a<?>> m8300c = c22353h.m8300c();
            int size = m8300c.size();
            int i3 = 0;
            while (true) {
                z = false;
                if (i3 >= size) {
                    break;
                } else if (m8300c.get(i3).f62283a.equals(abstractC22263f)) {
                    z = true;
                    break;
                } else {
                    i3++;
                }
            }
            C22392v c22392v = abstractC22394w;
            if (runnableC22354i.f62087n.mo8275d(!z, enumC22258a, enumC22260c)) {
                if (abstractC22270l == null) {
                    throw new C22228g.C22232d(abstractC22394w.get().getClass());
                }
                int ordinal = enumC22260c.ordinal();
                if (ordinal == 0) {
                    c22396y = new C22349e(runnableC22354i.f62097x, runnableC22354i.f62082i);
                } else if (ordinal != 1) {
                    throw new IllegalArgumentException("Unknown strategy: " + enumC22260c);
                } else {
                    c22396y = new C22396y(runnableC22354i.f62074a.f62053c.f61737a, runnableC22354i.f62097x, runnableC22354i.f62082i, runnableC22354i.f62085l, runnableC22354i.f62086m, abstractC22271m, cls, runnableC22354i.f62088o);
                }
                C22392v m8249e = C22392v.m8249e(abstractC22394w);
                RunnableC22354i.C22357c<?> c22357c = runnableC22354i.f62079f;
                c22357c.f62102a = c22396y;
                c22357c.f62103b = abstractC22270l;
                c22357c.f62104c = m8249e;
                c22392v = m8249e;
            }
            return this.f62121c.mo8143a(c22392v, c22267i);
        } catch (Throwable th) {
            this.f62122d.mo1688b(list);
            throw th;
        }
    }

    /* renamed from: b */
    public final AbstractC22394w<ResourceType> m8279b(AbstractC22276e<DataType> abstractC22276e, int i, int i2, C22267i c22267i, List<Throwable> list) throws C22387r {
        AbstractC22394w<ResourceType> abstractC22394w;
        int size = this.f62120b.size();
        AbstractC22394w<ResourceType> abstractC22394w2 = null;
        int i3 = 0;
        while (true) {
            abstractC22394w = abstractC22394w2;
            if (i3 >= size) {
                break;
            }
            AbstractC22269k<DataType, ResourceType> abstractC22269k = this.f62120b.get(i3);
            abstractC22394w = abstractC22394w2;
            try {
                if (abstractC22269k.mo8147a(abstractC22276e.mo8167a(), c22267i)) {
                    abstractC22394w = abstractC22269k.mo8146b(abstractC22276e.mo8167a(), i, i2, c22267i);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    String str = "Failed to decode data for " + abstractC22269k;
                }
                list.add(e);
                abstractC22394w = abstractC22394w2;
            }
            if (abstractC22394w != null) {
                break;
            }
            i3++;
            abstractC22394w2 = abstractC22394w;
        }
        if (abstractC22394w != null) {
            return abstractC22394w;
        }
        throw new C22387r(this.f62123e, new ArrayList(list));
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DecodePath{ dataClass=");
        m8728C.append(this.f62119a);
        m8728C.append(", decoders=");
        m8728C.append(this.f62120b);
        m8728C.append(", transcoder=");
        m8728C.append(this.f62121c);
        m8728C.append('}');
        return m8728C.toString();
    }
}
