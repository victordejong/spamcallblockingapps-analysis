package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.util.SparseArray;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
/* renamed from: b.s.b.a.w0.n0.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/o.class */
public final class C1613o {

    /* renamed from: a */
    public final SparseArray<C1196z> f6625a = new SparseArray<>();

    /* renamed from: a */
    public C1196z m32620a(int i) {
        C1196z zVar = this.f6625a.get(i);
        C1196z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = new C1196z(Long.MAX_VALUE);
            this.f6625a.put(i, zVar2);
        }
        return zVar2;
    }

    /* renamed from: a */
    public void m32621a() {
        this.f6625a.clear();
    }
}
