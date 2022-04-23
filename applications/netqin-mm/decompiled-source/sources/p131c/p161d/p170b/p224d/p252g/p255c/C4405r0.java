package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcn;
/* renamed from: c.d.b.d.g.c.r0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/r0.class */
public final class C4405r0 extends AbstractC4390o0 {
    public C4405r0() {
        super();
    }

    /* renamed from: b */
    public static <E> zzcn<E> m25668b(Object obj, long j) {
        return (zzcn) C4368k2.m25848f(obj, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4390o0
    /* renamed from: a */
    public final void mo25670a(Object obj, long j) {
        m25668b(obj, j).zzv();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4390o0
    /* renamed from: a */
    public final <E> void mo25669a(Object obj, Object obj2, long j) {
        zzcn b = m25668b(obj, j);
        zzcn b2 = m25668b(obj2, j);
        int size = b.size();
        int size2 = b2.size();
        zzcn zzcnVar = b;
        if (size > 0) {
            zzcnVar = b;
            if (size2 > 0) {
                zzcn<E> zzcnVar2 = b;
                if (!b.mo10694g()) {
                    zzcnVar2 = b.mo10687c(size2 + size);
                }
                zzcnVar2.addAll(b2);
                zzcnVar = zzcnVar2;
            }
        }
        zzcnVar = b2;
        if (size > 0) {
        }
        C4368k2.m25874a(obj, j, zzcnVar);
    }
}
