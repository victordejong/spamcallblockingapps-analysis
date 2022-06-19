package p193e.p1411b.p1412a.p1416w.p1418c;

import java.util.Collections;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1415c0.C21909c;
/* renamed from: e.b.a.w.c.p */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/p.class */
public class C21967p<K, A> extends AbstractC21959a<K, A> {

    /* renamed from: l */
    public final A f60987l;

    public C21967p(C21909c<A> c21909c, A a) {
        super(Collections.emptyList());
        C21909c<A> c21909c2 = this.f60956e;
        this.f60956e = c21909c;
        this.f60987l = a;
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: b */
    public float mo8856b() {
        return 1.0f;
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: f */
    public A mo8855f() {
        C21909c<A> c21909c = this.f60956e;
        A a = this.f60987l;
        float f = this.f60955d;
        return c21909c.m8910b(0.0f, 0.0f, a, a, f, f, f);
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: g */
    public A mo8854g(C21907a<K> c21907a, float f) {
        return mo8855f();
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: h */
    public void mo8853h() {
        if (this.f60956e != null) {
            super.mo8853h();
        }
    }
}
