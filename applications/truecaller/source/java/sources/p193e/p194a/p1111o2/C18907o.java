package p193e.p194a.p1111o2;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import e.m.d.y.n;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.o2.o */
/* loaded from: classes4-dex2jar.jar:e/a/o2/o.class */
public final class C18907o implements AbstractC18892a, AbstractC18911s {

    /* renamed from: a */
    public boolean f53024a;

    /* renamed from: b */
    public final C18906n<?>[] f53025b;

    /* renamed from: c */
    public final /* synthetic */ C18896e f53026c = new C18896e();

    public C18907o(C18906n<?>... c18906nArr) {
        boolean z;
        l.e(c18906nArr, "itemTypeConfigs");
        this.f53025b = c18906nArr;
        if (!(c18906nArr.length == 0)) {
            int itemCount = c18906nArr[0].f53021a.getItemCount();
            int length = c18906nArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (c18906nArr[i].f53021a.getItemCount() != itemCount) {
                    z = true;
                    break;
                }
                i++;
            }
            if (z) {
                throw new IllegalArgumentException("All item type data sets should have same size");
            }
            return;
        }
        throw new IllegalArgumentException("At least one item type required");
    }

    /* renamed from: a */
    public final C18906n<?> m14345a(int i) {
        C18906n<?> c18906n;
        C18906n<?>[] c18906nArr = this.f53025b;
        int length = c18906nArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                c18906n = null;
                break;
            }
            c18906n = c18906nArr[i2];
            if (c18906n.f53021a.mo14344m(i)) {
                break;
            }
            i2++;
        }
        if (c18906n != null) {
            return c18906n;
        }
        throw new IllegalStateException(C22128a.m8611i2("At least one delegate should support position ", i));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: b */
    public void mo14331b(s1.z.b.l<? super Integer, Integer> lVar) {
        l.e(lVar, "unwrapper");
        this.f53026c.mo14331b(lVar);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: f */
    public C18913u mo14330f(AbstractC18892a abstractC18892a, AbstractC18912t abstractC18912t) {
        l.e(abstractC18892a, "outerDelegate");
        l.e(abstractC18912t, "wrapper");
        return n.D1(this, abstractC18892a, abstractC18912t);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public int getItemCount() {
        return this.f53024a ? 0 : ((C18906n) C25225a.m3986N1(this.f53025b)).f53021a.getItemCount();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public long getItemId(int i) {
        return m14345a(i).f53021a.getItemId(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public int getItemViewType(int i) {
        return m14345a(i).f53022b;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: j */
    public int mo14329j(int i) {
        return this.f53026c.mo14329j(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        C18906n<?> m14345a = m14345a(i);
        l.e(abstractC0313c0, ViewAction.VIEW);
        m14345a.f53021a.mo11464G(abstractC0313c0, i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C18906n<?> c18906n;
        s1.z.b.l<ViewGroup, RecyclerView.AbstractC0313c0> lVar;
        RecyclerView.AbstractC0313c0 abstractC0313c0;
        l.e(viewGroup, "parent");
        C18906n<?>[] c18906nArr = this.f53025b;
        int length = c18906nArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                c18906n = null;
                break;
            }
            c18906n = c18906nArr[i2];
            if (c18906n.f53022b == i) {
                break;
            }
            i2++;
        }
        if (c18906n == null || (lVar = c18906n.f53023c) == null || (abstractC0313c0 = (RecyclerView.AbstractC0313c0) lVar.d(viewGroup)) == null) {
            throw new IllegalStateException(C22128a.m8611i2("Unsupported view type requested ", i));
        }
        return abstractC0313c0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: s */
    public int mo14328s(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18905m
    /* renamed from: t */
    public boolean mo14327t(C18900h c18900h) {
        l.e(c18900h, "event");
        int i = c18900h.f53002b;
        boolean z = false;
        if (i >= 0) {
            AbstractC18908p<?> abstractC18908p = m14345a(i).f53021a;
            AbstractC18908p<?> abstractC18908p2 = abstractC18908p;
            if (!(abstractC18908p instanceof AbstractC18904l)) {
                abstractC18908p2 = null;
            }
            AbstractC18904l abstractC18904l = (AbstractC18904l) abstractC18908p2;
            z = false;
            if (abstractC18904l != null ? abstractC18904l.mo10026v(c18900h) : false) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: u */
    public void mo14326u(boolean z) {
        this.f53024a = z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: v */
    public boolean mo14325v(int i) {
        boolean z;
        C18906n<?>[] c18906nArr = this.f53025b;
        int length = c18906nArr.length;
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= length) {
                break;
            }
            if (c18906nArr[i2].f53022b == i) {
                z = true;
                break;
            }
            i2++;
        }
        return z;
    }
}
