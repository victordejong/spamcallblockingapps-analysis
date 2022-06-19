package com.bumptech.glide.load.p212i;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p223p.C4382j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p020b.p041h.p049k.AbstractC1594e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.i.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/q.class */
public class C4197q<Model, Data> implements AbstractC4191n<Model, Data> {

    /* renamed from: a */
    private final List<AbstractC4191n<Model, Data>> f13066a;

    /* renamed from: b */
    private final AbstractC1594e<List<Throwable>> f13067b;

    /* renamed from: com.bumptech.glide.load.i.q$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/q$a.class */
    static class C4198a<Data> implements AbstractC4007d<Data>, AbstractC4007d.AbstractC4008a<Data> {

        /* renamed from: d */
        private final List<AbstractC4007d<Data>> f13068d;

        /* renamed from: e */
        private final AbstractC1594e<List<Throwable>> f13069e;

        /* renamed from: f */
        private int f13070f = 0;

        /* renamed from: g */
        private Priority f13071g;

        /* renamed from: h */
        private AbstractC4007d.AbstractC4008a<? super Data> f13072h;

        /* renamed from: i */
        private List<Throwable> f13073i;

        /* renamed from: j */
        private boolean f13074j;

        C4198a(List<AbstractC4007d<Data>> list, AbstractC1594e<List<Throwable>> abstractC1594e) {
            this.f13069e = abstractC1594e;
            C4382j.m22720c(list);
            this.f13068d = list;
        }

        /* renamed from: g */
        private void m23125g() {
            if (this.f13074j) {
                return;
            }
            if (this.f13070f < this.f13068d.size() - 1) {
                this.f13070f++;
                mo23086e(this.f13071g, this.f13072h);
                return;
            }
            C4382j.m22719d(this.f13073i);
            this.f13072h.mo23127c(new GlideException("Fetch failed", new ArrayList(this.f13073i)));
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<Data> mo23090a() {
            return this.f13068d.get(0).mo23090a();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
            List<Throwable> list = this.f13073i;
            if (list != null) {
                this.f13069e.mo22685b(list);
            }
            this.f13073i = null;
            for (AbstractC4007d<Data> abstractC4007d : this.f13068d) {
                abstractC4007d.mo23089b();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
        /* renamed from: c */
        public void mo23127c(Exception exc) {
            ((List) C4382j.m22719d(this.f13073i)).add(exc);
            m23125g();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
            this.f13074j = true;
            for (AbstractC4007d<Data> abstractC4007d : this.f13068d) {
                abstractC4007d.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return this.f13068d.get(0).mo23087d();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super Data> abstractC4008a) {
            this.f13071g = priority;
            this.f13072h = abstractC4008a;
            this.f13073i = this.f13069e.mo22686a();
            this.f13068d.get(this.f13070f).mo23086e(priority, this);
            if (this.f13074j) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
        /* renamed from: f */
        public void mo23126f(Data data) {
            if (data != null) {
                this.f13072h.mo23126f(data);
            } else {
                m23125g();
            }
        }
    }

    public C4197q(List<AbstractC4191n<Model, Data>> list, AbstractC1594e<List<Throwable>> abstractC1594e) {
        this.f13066a = list;
        this.f13067b = abstractC1594e;
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4191n
    /* renamed from: a */
    public boolean mo23082a(Model model) {
        for (AbstractC4191n<Model, Data> abstractC4191n : this.f13066a) {
            if (abstractC4191n.mo23082a(model)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4191n
    /* renamed from: b */
    public AbstractC4191n.C4192a<Data> mo23081b(Model model, int i, int i2, C4032e c4032e) {
        AbstractC3999c abstractC3999c;
        int size = this.f13066a.size();
        ArrayList arrayList = new ArrayList(size);
        int i3 = 0;
        AbstractC3999c abstractC3999c2 = null;
        while (true) {
            abstractC3999c = abstractC3999c2;
            if (i3 >= size) {
                break;
            }
            AbstractC4191n<Model, Data> abstractC4191n = this.f13066a.get(i3);
            AbstractC3999c abstractC3999c3 = abstractC3999c;
            if (abstractC4191n.mo23082a(model)) {
                AbstractC4191n.C4192a<Data> mo23081b = abstractC4191n.mo23081b(model, i, i2, c4032e);
                abstractC3999c3 = abstractC3999c;
                if (mo23081b != null) {
                    abstractC3999c3 = mo23081b.f13059a;
                    arrayList.add(mo23081b.f13061c);
                }
            }
            i3++;
            abstractC3999c2 = abstractC3999c3;
        }
        AbstractC4191n.C4192a<Data> c4192a = null;
        if (!arrayList.isEmpty()) {
            c4192a = null;
            if (abstractC3999c != null) {
                c4192a = new AbstractC4191n.C4192a<>(abstractC3999c, new C4198a(arrayList, this.f13067b));
            }
        }
        return c4192a;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f13066a.toArray()) + '}';
    }
}
