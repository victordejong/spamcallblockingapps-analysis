package p233s6;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: s6.h */
/* loaded from: classes-dex2jar.jar:s6/h.class */
public final class C4313h extends AbstractC4314i implements Iterable<AbstractC4314i> {

    /* renamed from: a */
    public final List<AbstractC4314i> f13468a = new ArrayList();

    @Override // p233s6.AbstractC4314i
    /* renamed from: a */
    public int mo1105a() {
        if (this.f13468a.size() == 1) {
            return this.f13468a.get(0).mo1105a();
        }
        throw new IllegalStateException();
    }

    @Override // p233s6.AbstractC4314i
    /* renamed from: d */
    public String mo1104d() {
        if (this.f13468a.size() == 1) {
            return this.f13468a.get(0).mo1104d();
        }
        throw new IllegalStateException();
    }

    /* renamed from: e */
    public AbstractC4314i m1112e(int i) {
        return this.f13468a.get(i);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof C4313h) && ((C4313h) obj).f13468a.equals(this.f13468a));
    }

    public int hashCode() {
        return this.f13468a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC4314i> iterator() {
        return this.f13468a.iterator();
    }

    public int size() {
        return this.f13468a.size();
    }
}
