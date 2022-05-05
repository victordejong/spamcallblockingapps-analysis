package p459j.p460a.p474c0.p475c.p479z;

import android.util.SparseArray;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11547p;
import p459j.p460a.p474c0.p475c.p479z.C11683x;
/* renamed from: j.a.c0.c.z.q */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/q.class */
public abstract class AbstractC11671q implements C11547p.AbstractC11548a {

    /* renamed from: a */
    public final SparseArray<C11670p<?>> f26202a = new SparseArray<>();

    public AbstractC11671q() {
        C11547p.m9196b().m9197a(this);
    }

    /* renamed from: b */
    public static AbstractC11671q m8665b() {
        return AbstractC11516a.m9413n().mo9402g();
    }

    /* renamed from: a */
    public abstract C11670p<?> mo8666a(int i);

    @Override // p459j.p460a.p474c0.p475c.C11547p.AbstractC11548a
    /* renamed from: a */
    public void mo8667a() {
        int size = this.f26202a.size();
        for (int i = 0; i < size; i++) {
            this.f26202a.valueAt(i).m8671a();
        }
        this.f26202a.clear();
    }

    /* renamed from: b */
    public C11683x.C11684a m8664b(int i) {
        C11670p<?> c = m8663c(i);
        if (c == null || !(c instanceof C11683x)) {
            return null;
        }
        return ((C11683x) c).m8633c();
    }

    /* renamed from: c */
    public C11670p<?> m8663c(int i) {
        C11670p<?> pVar;
        synchronized (this) {
            C11670p<?> pVar2 = this.f26202a.get(i);
            pVar = pVar2;
            if (pVar2 == null) {
                C11670p<?> a = mo8666a(i);
                pVar = a;
                if (a != null) {
                    this.f26202a.put(i, a);
                    pVar = a;
                }
            }
        }
        return pVar;
    }
}
