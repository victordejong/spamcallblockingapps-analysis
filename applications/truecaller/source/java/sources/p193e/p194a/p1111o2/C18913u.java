package p193e.p194a.p1111o2;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import e.m.d.y.n;
import java.util.HashMap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.o2.u */
/* loaded from: classes4-dex2jar.jar:e/a/o2/u.class */
public final class C18913u implements AbstractC18892a, AbstractC18911s {

    /* renamed from: a */
    public final g f53036a;

    /* renamed from: b */
    public final g f53037b;

    /* renamed from: c */
    public final g f53038c;

    /* renamed from: d */
    public boolean f53039d;

    /* renamed from: e */
    public final AbstractC18892a f53040e;

    /* renamed from: f */
    public final AbstractC18892a f53041f;

    /* renamed from: g */
    public final AbstractC18912t f53042g;

    /* renamed from: h */
    public final boolean f53043h;

    /* renamed from: i */
    public final /* synthetic */ C18896e f53044i;

    /* renamed from: e.a.o2.u$a */
    /* loaded from: classes4-dex2jar.jar:e/a/o2/u$a.class */
    public final class C18914a {

        /* renamed from: a */
        public final HashMap<Long, Long> f53045a = new HashMap<>();

        /* renamed from: b */
        public final HashMap<Long, Long> f53046b = new HashMap<>();

        /* renamed from: c */
        public final a<Long> f53047c;

        public C18914a(C18913u c18913u, a<Long> aVar) {
            l.e(aVar, "valueGenerator");
            this.f53047c = aVar;
        }
    }

    public C18913u(AbstractC18892a abstractC18892a, AbstractC18892a abstractC18892a2, AbstractC18912t abstractC18912t, boolean z, int i) {
        z = (i & 8) != 0 ? true : z;
        l.e(abstractC18892a, "outerDelegate");
        l.e(abstractC18892a2, "innerDelegate");
        l.e(abstractC18912t, "wrapper");
        this.f53044i = new C18896e();
        this.f53040e = abstractC18892a;
        this.f53041f = abstractC18892a2;
        this.f53042g = abstractC18912t;
        this.f53043h = z;
        this.f53036a = C25225a.m3978P1(C18916w.f53049b);
        this.f53037b = C25225a.m3978P1(new w1(0, this));
        this.f53038c = C25225a.m3978P1(new w1(1, this));
        abstractC18892a.mo14331b(new C25273e3(0, this));
        abstractC18892a2.mo14331b(new C25273e3(1, this));
    }

    /* renamed from: a */
    public final boolean m14332a(int i) {
        return this.f53042g.mo14336c(i, this.f53040e.getItemCount(), this.f53041f.getItemCount());
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: b */
    public void mo14331b(s1.z.b.l<? super Integer, Integer> lVar) {
        l.e(lVar, "unwrapper");
        this.f53044i.mo14331b(lVar);
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
        return !this.f53039d ? this.f53042g.mo14335d(this.f53040e.getItemCount(), this.f53041f.getItemCount()) : 0;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public long getItemId(int i) {
        char c;
        AbstractC18892a abstractC18892a;
        int i2;
        int i3;
        AbstractC18892a abstractC18892a2;
        if (this.f53043h) {
            if (m14332a(i)) {
                abstractC18892a2 = this.f53040e;
                i3 = this.f53042g.mo14334e(i, abstractC18892a2.getItemCount(), this.f53041f.getItemCount());
            } else {
                abstractC18892a2 = this.f53041f;
                i3 = this.f53042g.mo14333f(i, this.f53040e.getItemCount(), this.f53041f.getItemCount());
            }
            long itemId = abstractC18892a2.getItemId(i3);
            c = 65535;
            if (itemId != -1) {
                C18914a c18914a = m14332a(i) ? (C18914a) this.f53038c.getValue() : (C18914a) this.f53037b.getValue();
                Long l = c18914a.f53045a.get(Long.valueOf(itemId));
                if (l != null) {
                    c = l.longValue();
                } else {
                    Number number = (Number) c18914a.f53047c.invoke();
                    long longValue = number.longValue();
                    c18914a.f53045a.put(Long.valueOf(itemId), Long.valueOf(longValue));
                    c18914a.f53046b.put(Long.valueOf(longValue), Long.valueOf(itemId));
                    c = number.longValue();
                }
            }
        } else {
            if (m14332a(i)) {
                abstractC18892a = this.f53040e;
                i2 = this.f53042g.mo14334e(i, abstractC18892a.getItemCount(), this.f53041f.getItemCount());
            } else {
                abstractC18892a = this.f53041f;
                i2 = this.f53042g.mo14333f(i, this.f53040e.getItemCount(), this.f53041f.getItemCount());
            }
            c = abstractC18892a.getItemId(i2);
        }
        return c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public int getItemViewType(int i) {
        AbstractC18892a abstractC18892a;
        int i2;
        if (m14332a(i)) {
            abstractC18892a = this.f53040e;
            i2 = this.f53042g.mo14334e(i, abstractC18892a.getItemCount(), this.f53041f.getItemCount());
        } else {
            abstractC18892a = this.f53041f;
            i2 = this.f53042g.mo14333f(i, this.f53040e.getItemCount(), this.f53041f.getItemCount());
        }
        return abstractC18892a.getItemViewType(i2);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: j */
    public int mo14329j(int i) {
        return this.f53044i.mo14329j(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        AbstractC18892a abstractC18892a;
        int i2;
        l.e(abstractC0313c0, "holder");
        if (m14332a(i)) {
            abstractC18892a = this.f53040e;
            i2 = this.f53042g.mo14334e(i, abstractC18892a.getItemCount(), this.f53041f.getItemCount());
        } else {
            abstractC18892a = this.f53041f;
            i2 = this.f53042g.mo14333f(i, this.f53040e.getItemCount(), this.f53041f.getItemCount());
        }
        abstractC18892a.onBindViewHolder(abstractC0313c0, i2);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        return (this.f53040e.mo14325v(i) ? this.f53040e : this.f53041f).onCreateViewHolder(viewGroup, i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        (this.f53040e.mo14325v(abstractC0313c0.getItemViewType()) ? this.f53040e : this.f53041f).onViewAttachedToWindow(abstractC0313c0);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        (this.f53040e.mo14325v(abstractC0313c0.getItemViewType()) ? this.f53040e : this.f53041f).onViewDetachedFromWindow(abstractC0313c0);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        (this.f53040e.mo14325v(abstractC0313c0.getItemViewType()) ? this.f53040e : this.f53041f).onViewRecycled(abstractC0313c0);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: s */
    public int mo14328s(int i) {
        AbstractC18892a abstractC18892a;
        int i2;
        if (m14332a(i)) {
            abstractC18892a = this.f53040e;
            i2 = this.f53042g.mo14334e(i, abstractC18892a.getItemCount(), this.f53041f.getItemCount());
        } else {
            abstractC18892a = this.f53041f;
            i2 = this.f53042g.mo14333f(i, this.f53040e.getItemCount(), this.f53041f.getItemCount());
        }
        return abstractC18892a.mo14328s(i2);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18905m
    /* renamed from: t */
    public boolean mo14327t(C18900h c18900h) {
        char c;
        AbstractC18892a abstractC18892a;
        int i;
        l.e(c18900h, "event");
        int i2 = c18900h.f53002b;
        if (i2 < 0) {
            return false;
        }
        if (this.f53043h) {
            Long l = (m14332a(i2) ? (C18914a) this.f53038c.getValue() : (C18914a) this.f53037b.getValue()).f53046b.get(Long.valueOf(c18900h.f53003c));
            c = l != null ? l.longValue() : (char) 65535;
        } else {
            c = c18900h.f53003c;
        }
        int i3 = c18900h.f53002b;
        if (m14332a(i3)) {
            abstractC18892a = this.f53040e;
            i = this.f53042g.mo14334e(i3, abstractC18892a.getItemCount(), this.f53041f.getItemCount());
        } else {
            abstractC18892a = this.f53041f;
            i = this.f53042g.mo14333f(i3, this.f53040e.getItemCount(), this.f53041f.getItemCount());
        }
        return abstractC18892a.mo14327t(C18900h.m14346a(c18900h, null, i, c, null, null, 25));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: u */
    public void mo14326u(boolean z) {
        this.f53039d = z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: v */
    public boolean mo14325v(int i) {
        return this.f53040e.mo14325v(i) || this.f53041f.mo14325v(i);
    }
}
