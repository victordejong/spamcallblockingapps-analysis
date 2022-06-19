package com.p051a.p052a.p053a.p054a.p056b.p057a;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p056b.AbstractC1110a;
import com.p051a.p052a.p053a.p054a.p056b.p057a.AbstractC1118e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.a.a.a.a.b.a.b */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/b.class */
public abstract class AbstractC1113b<T extends AbstractC1118e> {

    /* renamed from: e */
    private static TimeInterpolator f3503e;

    /* renamed from: a */
    protected final AbstractC1110a f3504a;

    /* renamed from: b */
    protected final List<T> f3505b = new ArrayList();

    /* renamed from: d */
    protected final List<RecyclerView.AbstractC0977w> f3507d = new ArrayList();

    /* renamed from: c */
    protected final List<List<T>> f3506c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.a.a.a.a.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/b/a/b$a.class */
    public static class C1115a implements AbstractC0568z {

        /* renamed from: a */
        private AbstractC1113b f3510a;

        /* renamed from: b */
        private AbstractC1118e f3511b;

        /* renamed from: c */
        private RecyclerView.AbstractC0977w f3512c;

        /* renamed from: d */
        private C0564y f3513d;

        public C1115a(AbstractC1113b abstractC1113b, AbstractC1118e abstractC1118e, RecyclerView.AbstractC0977w abstractC0977w, C0564y c0564y) {
            this.f3510a = abstractC1113b;
            this.f3511b = abstractC1118e;
            this.f3512c = abstractC0977w;
            this.f3513d = c0564y;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: a */
        public void mo3963a(View view) {
            this.f3510a.mo4188d(this.f3511b, this.f3512c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            AbstractC1113b abstractC1113b = this.f3510a;
            AbstractC1118e abstractC1118e = this.f3511b;
            RecyclerView.AbstractC0977w abstractC0977w = this.f3512c;
            this.f3513d.m6183a((AbstractC0568z) null);
            this.f3510a = null;
            this.f3511b = null;
            this.f3512c = null;
            this.f3513d = null;
            abstractC1113b.mo4135c(abstractC1118e, abstractC0977w);
            abstractC1113b.mo4186e(abstractC1118e, abstractC0977w);
            abstractC1118e.mo4180a(abstractC0977w);
            abstractC1113b.f3507d.remove(abstractC0977w);
            abstractC1113b.m4202g();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: c */
        public void mo3961c(View view) {
            this.f3510a.mo4140a((AbstractC1113b) this.f3511b, this.f3512c);
        }
    }

    public AbstractC1113b(AbstractC1110a abstractC1110a) {
        this.f3504a = abstractC1110a;
    }

    /* renamed from: a */
    private void m4217a(RecyclerView.AbstractC0977w abstractC0977w) {
        if (abstractC0977w != null) {
            this.f3507d.add(abstractC0977w);
            return;
        }
        throw new IllegalStateException("item is null");
    }

    /* renamed from: a */
    protected abstract void mo4141a(T t);

    /* renamed from: a */
    protected abstract void mo4140a(T t, RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: a */
    public void m4216a(T t, RecyclerView.AbstractC0977w abstractC0977w, C0564y c0564y) {
        c0564y.m6183a(new C1115a(this, t, abstractC0977w, c0564y));
        m4217a(abstractC0977w);
        c0564y.m6179c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m4215a(boolean z, long j) {
        final ArrayList<AbstractC1118e> arrayList = new ArrayList();
        arrayList.addAll(this.f3505b);
        this.f3505b.clear();
        if (z) {
            this.f3506c.add(arrayList);
            C0552u.m6264a(((AbstractC1118e) arrayList.get(0)).mo4181a().itemView, new Runnable() { // from class: com.a.a.a.a.b.a.b.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    for (AbstractC1118e abstractC1118e : arrayList) {
                        AbstractC1113b.this.m4212b((AbstractC1113b) abstractC1118e);
                    }
                    arrayList.clear();
                    AbstractC1113b.this.f3506c.remove(arrayList);
                }
            }, j);
            return;
        }
        for (AbstractC1118e abstractC1118e : arrayList) {
            m4212b((AbstractC1113b<T>) abstractC1118e);
        }
        arrayList.clear();
    }

    /* renamed from: a */
    public final boolean m4218a() {
        return this.f3504a.mo4166k();
    }

    /* renamed from: b */
    void m4212b(T t) {
        mo4141a((AbstractC1113b<T>) t);
    }

    /* renamed from: b */
    public abstract void mo4137b(T t, RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: b */
    public boolean m4214b() {
        return !this.f3505b.isEmpty();
    }

    /* renamed from: b */
    public boolean m4213b(RecyclerView.AbstractC0977w abstractC0977w) {
        return this.f3507d.remove(abstractC0977w);
    }

    /* renamed from: c */
    public void m4210c(RecyclerView.AbstractC0977w abstractC0977w) {
        List<T> list = this.f3505b;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (mo4184f(list.get(size), abstractC0977w) && abstractC0977w != null) {
                list.remove(size);
            }
        }
        if (abstractC0977w == null) {
            list.clear();
        }
    }

    /* renamed from: c */
    public void m4209c(T t) {
        if (t != null) {
            this.f3505b.add(t);
            return;
        }
        throw new IllegalStateException("info is null");
    }

    /* renamed from: c */
    protected abstract void mo4135c(T t, RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: c */
    public boolean m4211c() {
        return !this.f3505b.isEmpty() || !this.f3507d.isEmpty() || !this.f3506c.isEmpty();
    }

    /* renamed from: d */
    public void m4208d() {
        List<RecyclerView.AbstractC0977w> list = this.f3507d;
        for (int size = list.size() - 1; size >= 0; size--) {
            C0552u.m6233n(list.get(size).itemView).m6182b();
        }
    }

    /* renamed from: d */
    public void m4207d(RecyclerView.AbstractC0977w abstractC0977w) {
        for (int size = this.f3506c.size() - 1; size >= 0; size--) {
            List<T> list = this.f3506c.get(size);
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                if (mo4184f(list.get(size2), abstractC0977w) && abstractC0977w != null) {
                    list.remove(size2);
                }
            }
            if (abstractC0977w == null) {
                list.clear();
            }
            if (list.isEmpty()) {
                this.f3506c.remove(list);
            }
        }
    }

    /* renamed from: d */
    public abstract void mo4188d(T t, RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: e */
    public void m4206e() {
        m4210c((RecyclerView.AbstractC0977w) null);
    }

    /* renamed from: e */
    protected void m4205e(RecyclerView.AbstractC0977w abstractC0977w) {
        this.f3504a.mo4167d(abstractC0977w);
    }

    /* renamed from: e */
    public abstract void mo4186e(T t, RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: f */
    public void m4204f() {
        m4207d(null);
    }

    /* renamed from: f */
    public void m4203f(RecyclerView.AbstractC0977w abstractC0977w) {
        if (f3503e == null) {
            f3503e = new ValueAnimator().getInterpolator();
        }
        abstractC0977w.itemView.animate().setInterpolator(f3503e);
        m4205e(abstractC0977w);
    }

    /* renamed from: f */
    protected abstract boolean mo4184f(T t, RecyclerView.AbstractC0977w abstractC0977w);

    /* renamed from: g */
    protected void m4202g() {
        this.f3504a.mo4169c();
    }
}
