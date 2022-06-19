package com.bumptech.glide.load.p081b;

import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
/* renamed from: com.bumptech.glide.load.b.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/v.class */
public class C1568v<Model> implements AbstractC1546n<Model, Model> {

    /* renamed from: a */
    private static final C1568v<?> f4935a = new C1568v<>();

    /* renamed from: com.bumptech.glide.load.b.v$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/v$a.class */
    public static class C1569a<Model> implements AbstractC1548o<Model, Model> {

        /* renamed from: a */
        private static final C1569a<?> f4936a = new C1569a<>();

        /* renamed from: a */
        public static <T> C1569a<T> m16814a() {
            return (C1569a<T>) f4936a;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Model, Model> mo16801a(C1554r c1554r) {
            return C1568v.m16815a();
        }
    }

    /* renamed from: com.bumptech.glide.load.b.v$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/v$b.class */
    private static class C1570b<Model> implements AbstractC1475d<Model> {

        /* renamed from: a */
        private final Model f4937a;

        C1570b(Model model) {
            this.f4937a = model;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<Model> mo16813a() {
            return (Class<Model>) this.f4937a.getClass();
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super Model> abstractC1476a) {
            abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super Model>) ((Model) this.f4937a));
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: c */
        public void mo16810c() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: d */
        public EnumC1464a mo16809d() {
            return EnumC1464a.LOCAL;
        }
    }

    /* renamed from: a */
    public static <T> C1568v<T> m16815a() {
        return (C1568v<T>) f4935a;
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1546n
    /* renamed from: a */
    public AbstractC1546n.C1547a<Model> mo16802a(Model model, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(model), new C1570b(model));
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1546n
    /* renamed from: a */
    public boolean mo16803a(Model model) {
        return true;
    }
}
