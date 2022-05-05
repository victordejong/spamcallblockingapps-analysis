package p081h.p203i.p392f.p393a.p394b.p395d;

import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p081h.p203i.p392f.p393a.p394b.AbstractC10181a;
import p081h.p203i.p392f.p393a.p394b.AbstractC10182b;
/* renamed from: h.i.f.a.b.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/b/d/d.class */
public class C10196d<T extends AbstractC10182b> implements AbstractC10181a<T> {

    /* renamed from: a */
    public final LatLng f22975a;

    /* renamed from: b */
    public final List<T> f22976b = new ArrayList();

    public C10196d(LatLng latLng) {
        this.f22975a = latLng;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10181a
    /* renamed from: a */
    public int mo13173a() {
        return this.f22976b.size();
    }

    /* renamed from: a */
    public boolean m13172a(T t) {
        return this.f22976b.add(t);
    }

    @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10181a
    /* renamed from: b */
    public Collection<T> mo13171b() {
        return this.f22976b;
    }

    /* renamed from: b */
    public boolean m13170b(T t) {
        return this.f22976b.remove(t);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C10196d)) {
            return false;
        }
        C10196d dVar = (C10196d) obj;
        boolean z = false;
        if (dVar.f22975a.equals(this.f22975a)) {
            z = false;
            if (dVar.f22976b.equals(this.f22976b)) {
                z = true;
            }
        }
        return z;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10181a
    public LatLng getPosition() {
        return this.f22975a;
    }

    public int hashCode() {
        return this.f22975a.hashCode() + this.f22976b.hashCode();
    }

    public String toString() {
        return "StaticCluster{mCenter=" + this.f22975a + ", mItems.size=" + this.f22976b.size() + '}';
    }
}
