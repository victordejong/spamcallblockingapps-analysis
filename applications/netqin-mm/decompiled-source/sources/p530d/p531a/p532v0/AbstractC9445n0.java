package p530d.p531a.p532v0;

import java.util.HashSet;
/* renamed from: d.a.v0.n0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/n0.class */
public abstract class AbstractC9445n0<T> {

    /* renamed from: a */
    public final HashSet<T> f36223a = new HashSet<>();

    /* renamed from: a */
    public abstract void mo373a();

    /* renamed from: a */
    public final void m2721a(T t, boolean z) {
        int size = this.f36223a.size();
        if (z) {
            this.f36223a.add(t);
            if (size == 0) {
                mo373a();
            }
        } else if (this.f36223a.remove(t) && size == 1) {
            mo372b();
        }
    }

    /* renamed from: b */
    public abstract void mo372b();

    /* renamed from: c */
    public final boolean m2720c() {
        return !this.f36223a.isEmpty();
    }
}
