package p081h.p203i.p401g;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p081h.p203i.p401g.AbstractC10219a;
import p081h.p203i.p401g.AbstractC10219a.AbstractC10220a;
import p081h.p203i.p401g.AbstractC10444n0;
/* renamed from: h.i.g.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/w0.class */
public class C10478w0<MType extends AbstractC10219a, BType extends AbstractC10219a.AbstractC10220a, IType extends AbstractC10444n0> implements AbstractC10219a.AbstractC10221b {

    /* renamed from: a */
    public AbstractC10219a.AbstractC10221b f23808a;

    /* renamed from: b */
    public List<MType> f23809b;

    /* renamed from: c */
    public boolean f23810c;

    /* renamed from: d */
    public List<C10506x0<MType, BType, IType>> f23811d;

    /* renamed from: e */
    public boolean f23812e;

    /* renamed from: f */
    public C10480b<MType, BType, IType> f23813f;

    /* renamed from: g */
    public C10479a<MType, BType, IType> f23814g;

    /* renamed from: h */
    public C10481c<MType, BType, IType> f23815h;

    /* renamed from: h.i.g.w0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/w0$a.class */
    public static class C10479a<MType extends AbstractC10219a, BType extends AbstractC10219a.AbstractC10220a, IType extends AbstractC10444n0> extends AbstractList<BType> implements List<BType> {
        /* renamed from: b */
        public void m11698b() {
            throw null;
        }
    }

    /* renamed from: h.i.g.w0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/w0$b.class */
    public static class C10480b<MType extends AbstractC10219a, BType extends AbstractC10219a.AbstractC10220a, IType extends AbstractC10444n0> extends AbstractList<MType> implements List<MType> {
        /* renamed from: b */
        public void m11697b() {
            throw null;
        }
    }

    /* renamed from: h.i.g.w0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/w0$c.class */
    public static class C10481c<MType extends AbstractC10219a, BType extends AbstractC10219a.AbstractC10220a, IType extends AbstractC10444n0> extends AbstractList<IType> implements List<IType> {
        /* renamed from: b */
        public void m11696b() {
            throw null;
        }
    }

    public C10478w0(List<MType> list, boolean z, AbstractC10219a.AbstractC10221b bVar, boolean z2) {
        this.f23809b = list;
        this.f23810c = z;
        this.f23808a = bVar;
        this.f23812e = z2;
    }

    /* renamed from: a */
    public final MType m11707a(int i, boolean z) {
        C10506x0<MType, BType, IType> x0Var;
        List<C10506x0<MType, BType, IType>> list = this.f23811d;
        if (!(list == null || (x0Var = list.get(i)) == null)) {
            return z ? x0Var.m11583b() : x0Var.m11581d();
        }
        return this.f23809b.get(i);
    }

    /* renamed from: a */
    public C10478w0<MType, BType, IType> m11706a(MType mtype) {
        C10516z.m11545a(mtype);
        m11702d();
        this.f23809b.add(mtype);
        List<C10506x0<MType, BType, IType>> list = this.f23811d;
        if (list != null) {
            list.add(null);
        }
        m11699g();
        m11701e();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public C10478w0<MType, BType, IType> m11705a(Iterable<? extends MType> iterable) {
        Iterator<? extends MType> it = iterable.iterator();
        while (it.hasNext()) {
            C10516z.m11545a((AbstractC10219a) it.next());
        }
        int i = -1;
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() == 0) {
                return this;
            }
            i = collection.size();
        }
        m11702d();
        if (i >= 0) {
            List<MType> list = this.f23809b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i);
            }
        }
        Iterator<? extends MType> it2 = iterable.iterator();
        while (it2.hasNext()) {
            m11706a((C10478w0<MType, BType, IType>) ((AbstractC10219a) it2.next()));
        }
        m11699g();
        m11701e();
        return this;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10221b
    /* renamed from: a */
    public void mo11585a() {
        m11699g();
    }

    /* renamed from: b */
    public List<MType> m11704b() {
        boolean z;
        this.f23812e = true;
        if (!this.f23810c && this.f23811d == null) {
            return this.f23809b;
        }
        if (!this.f23810c) {
            int i = 0;
            while (true) {
                if (i >= this.f23809b.size()) {
                    z = true;
                    break;
                }
                MType mtype = this.f23809b.get(i);
                C10506x0<MType, BType, IType> x0Var = this.f23811d.get(i);
                if (!(x0Var == null || x0Var.m11583b() == mtype)) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.f23809b;
            }
        }
        m11702d();
        for (int i2 = 0; i2 < this.f23809b.size(); i2++) {
            this.f23809b.set(i2, m11707a(i2, true));
        }
        this.f23809b = Collections.unmodifiableList(this.f23809b);
        this.f23810c = false;
        return this.f23809b;
    }

    /* renamed from: c */
    public void m11703c() {
        this.f23808a = null;
    }

    /* renamed from: d */
    public final void m11702d() {
        if (!this.f23810c) {
            this.f23809b = new ArrayList(this.f23809b);
            this.f23810c = true;
        }
    }

    /* renamed from: e */
    public final void m11701e() {
        C10480b<MType, BType, IType> bVar = this.f23813f;
        if (bVar == null) {
            C10479a<MType, BType, IType> aVar = this.f23814g;
            if (aVar == null) {
                C10481c<MType, BType, IType> cVar = this.f23815h;
                if (cVar != null) {
                    cVar.m11696b();
                    throw null;
                }
                return;
            }
            aVar.m11698b();
            throw null;
        }
        bVar.m11697b();
        throw null;
    }

    /* renamed from: f */
    public boolean m11700f() {
        return this.f23809b.isEmpty();
    }

    /* renamed from: g */
    public final void m11699g() {
        AbstractC10219a.AbstractC10221b bVar;
        if (this.f23812e && (bVar = this.f23808a) != null) {
            bVar.mo11585a();
            this.f23812e = false;
        }
    }
}
