package com.p051a.p052a.p053a.p054a.p055a;

import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
/* renamed from: com.a.a.a.a.a.c */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/c.class */
public class C1103c extends RecyclerView.AbstractC0947c {

    /* renamed from: a */
    private final WeakReference<AbstractC1104a> f3492a;

    /* renamed from: b */
    private final WeakReference<RecyclerView.AbstractC0945a> f3493b;

    /* renamed from: c */
    private final Object f3494c;

    /* renamed from: com.a.a.a.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/c$a.class */
    public interface AbstractC1104a {
        /* renamed from: a */
        void mo4251a(RecyclerView.AbstractC0945a abstractC0945a, Object obj);

        /* renamed from: a */
        void mo4250a(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2);

        /* renamed from: a */
        void mo4249a(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2, int i3);

        /* renamed from: a */
        void mo4248a(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2, Object obj2);

        /* renamed from: b */
        void mo4246b(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2);

        /* renamed from: c */
        void mo4245c(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2);
    }

    public C1103c(AbstractC1104a abstractC1104a, RecyclerView.AbstractC0945a abstractC0945a, Object obj) {
        this.f3492a = new WeakReference<>(abstractC1104a);
        this.f3493b = new WeakReference<>(abstractC0945a);
        this.f3494c = obj;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
    /* renamed from: a */
    public void mo4260a() {
        AbstractC1104a abstractC1104a = this.f3492a.get();
        RecyclerView.AbstractC0945a abstractC0945a = this.f3493b.get();
        if (abstractC1104a == null || abstractC0945a == null) {
            return;
        }
        abstractC1104a.mo4251a(abstractC0945a, this.f3494c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
    /* renamed from: a */
    public void mo4259a(int i, int i2) {
        AbstractC1104a abstractC1104a = this.f3492a.get();
        RecyclerView.AbstractC0945a abstractC0945a = this.f3493b.get();
        if (abstractC1104a == null || abstractC0945a == null) {
            return;
        }
        abstractC1104a.mo4250a(abstractC0945a, this.f3494c, i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
    /* renamed from: a */
    public void mo4258a(int i, int i2, int i3) {
        AbstractC1104a abstractC1104a = this.f3492a.get();
        RecyclerView.AbstractC0945a abstractC0945a = this.f3493b.get();
        if (abstractC1104a == null || abstractC0945a == null) {
            return;
        }
        abstractC1104a.mo4249a(abstractC0945a, this.f3494c, i, i2, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
    /* renamed from: a */
    public void mo4257a(int i, int i2, Object obj) {
        AbstractC1104a abstractC1104a = this.f3492a.get();
        RecyclerView.AbstractC0945a abstractC0945a = this.f3493b.get();
        if (abstractC1104a == null || abstractC0945a == null) {
            return;
        }
        abstractC1104a.mo4248a(abstractC0945a, this.f3494c, i, i2, obj);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
    /* renamed from: b */
    public void mo4256b(int i, int i2) {
        AbstractC1104a abstractC1104a = this.f3492a.get();
        RecyclerView.AbstractC0945a abstractC0945a = this.f3493b.get();
        if (abstractC1104a == null || abstractC0945a == null) {
            return;
        }
        abstractC1104a.mo4246b(abstractC0945a, this.f3494c, i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0947c
    /* renamed from: c */
    public void mo4255c(int i, int i2) {
        AbstractC1104a abstractC1104a = this.f3492a.get();
        RecyclerView.AbstractC0945a abstractC0945a = this.f3493b.get();
        if (abstractC1104a == null || abstractC0945a == null) {
            return;
        }
        abstractC1104a.mo4245c(abstractC0945a, this.f3494c, i, i2);
    }
}
