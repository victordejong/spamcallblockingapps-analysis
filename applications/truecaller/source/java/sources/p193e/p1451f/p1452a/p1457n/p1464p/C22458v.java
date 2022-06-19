package p193e.p1451f.p1452a.p1457n.p1464p;

import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.v */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/v.class */
public class C22458v<Model> implements AbstractC22436n<Model, Model> {

    /* renamed from: a */
    public static final C22458v<?> f62316a = new C22458v<>();

    /* renamed from: e.f.a.n.p.v$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/v$a.class */
    public static class C22459a<Model> implements AbstractC22438o<Model, Model> {

        /* renamed from: a */
        public static final C22459a<?> f62317a = new C22459a<>();

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Model, Model> mo8212c(C22444r c22444r) {
            return C22458v.f62316a;
        }
    }

    /* renamed from: e.f.a.n.p.v$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/v$b.class */
    public static class C22460b<Model> implements AbstractC22274d<Model> {

        /* renamed from: a */
        public final Model f62318a;

        public C22460b(Model model) {
            this.f62318a = model;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: a */
        public Class<Model> mo8220a() {
            return (Class<Model>) this.f62318a.getClass();
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: b */
        public void mo8219b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: c */
        public EnumC22258a mo8218c() {
            return EnumC22258a.LOCAL;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        public void cancel() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
        /* renamed from: d */
        public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super Model> abstractC22275a) {
            abstractC22275a.mo8231e((Model) this.f62318a);
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<Model> mo8215a(Model model, int i, int i2, C22267i c22267i) {
        return new AbstractC22436n.C22437a<>(new C22610d(model), new C22460b(model));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Model model) {
        return true;
    }
}
