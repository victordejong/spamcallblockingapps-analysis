package p193e.p1451f.p1452a.p1457n.p1460o;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e;
import p193e.p1451f.p1452a.p1457n.p1460o.C22362j;
/* renamed from: e.f.a.n.o.u */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/u.class */
public class C22391u<Data, ResourceType, Transcode> {

    /* renamed from: a */
    public final AbstractC26555e<List<Throwable>> f62212a;

    /* renamed from: b */
    public final List<? extends C22362j<Data, ResourceType, Transcode>> f62213b;

    /* renamed from: c */
    public final String f62214c;

    public C22391u(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C22362j<Data, ResourceType, Transcode>> list, AbstractC26555e<List<Throwable>> abstractC26555e) {
        this.f62212a = abstractC26555e;
        if (!list.isEmpty()) {
            this.f62213b = list;
            StringBuilder m8728C = C22128a.m8728C("Failed LoadPath{");
            m8728C.append(cls.getSimpleName());
            m8728C.append("->");
            m8728C.append(cls2.getSimpleName());
            m8728C.append("->");
            m8728C.append(cls3.getSimpleName());
            m8728C.append("}");
            this.f62214c = m8728C.toString();
            return;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public AbstractC22394w<Transcode> m8250a(AbstractC22276e<Data> abstractC22276e, C22267i c22267i, int i, int i2, C22362j.AbstractC22363a<ResourceType> abstractC22363a) throws C22387r {
        AbstractC22394w<Transcode> abstractC22394w;
        List<Throwable> mo1689a = this.f62212a.mo1689a();
        Objects.requireNonNull(mo1689a, "Argument must not be null");
        List<Throwable> list = mo1689a;
        try {
            int size = this.f62213b.size();
            int i3 = 0;
            AbstractC22394w<Transcode> abstractC22394w2 = null;
            while (true) {
                abstractC22394w = abstractC22394w2;
                if (i3 >= size) {
                    break;
                }
                try {
                    abstractC22394w2 = this.f62213b.get(i3).m8280a(abstractC22276e, i, i2, c22267i, abstractC22363a);
                } catch (C22387r e) {
                    list.add(e);
                }
                if (abstractC22394w2 != null) {
                    abstractC22394w = abstractC22394w2;
                    break;
                }
                i3++;
            }
            if (abstractC22394w == null) {
                throw new C22387r(this.f62214c, new ArrayList(list));
            }
            this.f62212a.mo1688b(list);
            return abstractC22394w;
        } catch (Throwable th) {
            this.f62212a.mo1688b(list);
            throw th;
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LoadPath{decodePaths=");
        m8728C.append(Arrays.toString(this.f62213b.toArray()));
        m8728C.append('}');
        return m8728C.toString();
    }
}
