package com.bumptech.glide.load.p081b;

import androidx.core.p025g.C0523e;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p077h.C1456i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.b.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/q.class */
public class C1552q<Model, Data> implements AbstractC1546n<Model, Data> {

    /* renamed from: a */
    private final List<AbstractC1546n<Model, Data>> f4910a;

    /* renamed from: b */
    private final C0523e.AbstractC0524a<List<Throwable>> f4911b;

    /* renamed from: com.bumptech.glide.load.b.q$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/q$a.class */
    static class C1553a<Data> implements AbstractC1475d<Data>, AbstractC1475d.AbstractC1476a<Data> {

        /* renamed from: a */
        private final List<AbstractC1475d<Data>> f4912a;

        /* renamed from: b */
        private final C0523e.AbstractC0524a<List<Throwable>> f4913b;

        /* renamed from: c */
        private int f4914c = 0;

        /* renamed from: d */
        private EnumC1428g f4915d;

        /* renamed from: e */
        private AbstractC1475d.AbstractC1476a<? super Data> f4916e;

        /* renamed from: f */
        private List<Throwable> f4917f;

        C1553a(List<AbstractC1475d<Data>> list, C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
            this.f4913b = abstractC0524a;
            C1456i.m16986a(list);
            this.f4912a = list;
        }

        /* renamed from: e */
        private void m16834e() {
            if (this.f4914c < this.f4912a.size() - 1) {
                this.f4914c++;
                mo16812a(this.f4915d, this.f4916e);
                return;
            }
            C1456i.m16989a(this.f4917f);
            this.f4916e.mo16338a((Exception) new GlideException("Fetch failed", new ArrayList(this.f4917f)));
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<Data> mo16813a() {
            return this.f4912a.get(0).mo16813a();
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super Data> abstractC1476a) {
            this.f4915d = enumC1428g;
            this.f4916e = abstractC1476a;
            this.f4917f = this.f4913b.mo17021a();
            this.f4912a.get(this.f4914c).mo16812a(enumC1428g, this);
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
        /* renamed from: a */
        public void mo16338a(Exception exc) {
            ((List) C1456i.m16989a(this.f4917f)).add(exc);
            m16834e();
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
        /* renamed from: a */
        public void mo16337a(Data data) {
            if (data != null) {
                this.f4916e.mo16337a((AbstractC1475d.AbstractC1476a<? super Data>) data);
            } else {
                m16834e();
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
            if (this.f4917f != null) {
                this.f4913b.mo17020a(this.f4917f);
            }
            this.f4917f = null;
            for (AbstractC1475d<Data> abstractC1475d : this.f4912a) {
                abstractC1475d.mo16811b();
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: c */
        public void mo16810c() {
            for (AbstractC1475d<Data> abstractC1475d : this.f4912a) {
                abstractC1475d.mo16810c();
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: d */
        public EnumC1464a mo16809d() {
            return this.f4912a.get(0).mo16809d();
        }
    }

    public C1552q(List<AbstractC1546n<Model, Data>> list, C0523e.AbstractC0524a<List<Throwable>> abstractC0524a) {
        this.f4910a = list;
        this.f4911b = abstractC0524a;
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1546n
    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(Model model, int i, int i2, C1781h c1781h) {
        AbstractC1546n.C1547a<Data> mo16802a;
        int size = this.f4910a.size();
        ArrayList arrayList = new ArrayList(size);
        AbstractC1777f abstractC1777f = null;
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC1546n<Model, Data> abstractC1546n = this.f4910a.get(i3);
            if (abstractC1546n.mo16803a(model) && (mo16802a = abstractC1546n.mo16802a(model, i, i2, c1781h)) != null) {
                abstractC1777f = mo16802a.f4903a;
                arrayList.add(mo16802a.f4905c);
            }
        }
        return (arrayList.isEmpty() || abstractC1777f == null) ? null : new AbstractC1546n.C1547a<>(abstractC1777f, new C1553a(arrayList, this.f4911b));
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1546n
    /* renamed from: a */
    public boolean mo16803a(Model model) {
        boolean z;
        Iterator<AbstractC1546n<Model, Data>> it = this.f4910a.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().mo16803a(model)) {
                z = true;
                break;
            }
        }
        return z;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f4910a.toArray()) + '}';
    }
}
