package p193e.p1411b.p1412a.p1416w.p1418c;

import java.util.ArrayList;
import java.util.List;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1415c0.C21909c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.w.c.a */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/a.class */
public abstract class AbstractC21959a<K, A> {

    /* renamed from: c */
    public final List<? extends C21907a<K>> f60954c;

    /* renamed from: e */
    public C21909c<A> f60956e;

    /* renamed from: f */
    public C21907a<K> f60957f;

    /* renamed from: g */
    public C21907a<K> f60958g;

    /* renamed from: a */
    public final List<AbstractC21960a> f60952a = new ArrayList(1);

    /* renamed from: b */
    public boolean f60953b = false;

    /* renamed from: d */
    public float f60955d = 0.0f;

    /* renamed from: h */
    public float f60959h = -1.0f;

    /* renamed from: i */
    public A f60960i = null;

    /* renamed from: j */
    public float f60961j = -1.0f;

    /* renamed from: k */
    public float f60962k = -1.0f;

    /* renamed from: e.b.a.w.c.a$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/w/c/a$a.class */
    public interface AbstractC21960a {
        /* renamed from: d */
        void mo8834d();
    }

    public AbstractC21959a(List<? extends C21907a<K>> list) {
        this.f60954c = list;
    }

    /* renamed from: a */
    public C21907a<K> m8868a() {
        C21907a<K> c21907a = this.f60957f;
        if (c21907a == null || !c21907a.m8914a(this.f60955d)) {
            C21907a<K> c21907a2 = (C21907a) C22128a.m8714F1(this.f60954c, -1);
            C21907a<K> c21907a3 = c21907a2;
            if (this.f60955d < c21907a2.m8912c()) {
                int size = this.f60954c.size();
                c21907a3 = c21907a2;
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C21907a<K> c21907a4 = this.f60954c.get(size);
                    c21907a3 = c21907a4;
                    if (c21907a4.m8914a(this.f60955d)) {
                        c21907a3 = c21907a4;
                        break;
                    }
                }
            }
            this.f60957f = c21907a3;
            return c21907a3;
        }
        return this.f60957f;
    }

    /* renamed from: b */
    public float mo8856b() {
        if (this.f60962k == -1.0f) {
            this.f60962k = this.f60954c.isEmpty() ? 1.0f : ((C21907a) C22128a.m8714F1(this.f60954c, -1)).m8913b();
        }
        return this.f60962k;
    }

    /* renamed from: c */
    public float m8867c() {
        C21907a<K> m8868a = m8868a();
        if (m8868a.m8911d()) {
            return 0.0f;
        }
        return m8868a.f60806d.getInterpolation(m8866d());
    }

    /* renamed from: d */
    public float m8866d() {
        if (this.f60953b) {
            return 0.0f;
        }
        C21907a<K> m8868a = m8868a();
        if (!m8868a.m8911d()) {
            return (this.f60955d - m8868a.m8912c()) / (m8868a.m8913b() - m8868a.m8912c());
        }
        return 0.0f;
    }

    /* renamed from: e */
    public final float m8865e() {
        if (this.f60961j == -1.0f) {
            this.f60961j = this.f60954c.isEmpty() ? 0.0f : this.f60954c.get(0).m8912c();
        }
        return this.f60961j;
    }

    /* renamed from: f */
    public A mo8855f() {
        C21907a<K> m8868a = m8868a();
        float m8867c = m8867c();
        if (this.f60956e == null && m8868a == this.f60958g && this.f60959h == m8867c) {
            return this.f60960i;
        }
        this.f60958g = m8868a;
        this.f60959h = m8867c;
        A mo8854g = mo8854g(m8868a, m8867c);
        this.f60960i = mo8854g;
        return mo8854g;
    }

    /* renamed from: g */
    public abstract A mo8854g(C21907a<K> c21907a, float f);

    /* renamed from: h */
    public void mo8853h() {
        for (int i = 0; i < this.f60952a.size(); i++) {
            this.f60952a.get(i).mo8834d();
        }
    }

    /* renamed from: i */
    public void mo8863i(float f) {
        float f2;
        if (this.f60954c.isEmpty()) {
            return;
        }
        C21907a<K> m8868a = m8868a();
        if (f < m8865e()) {
            f2 = m8865e();
        } else {
            f2 = f;
            if (f > mo8856b()) {
                f2 = mo8856b();
            }
        }
        if (f2 == this.f60955d) {
            return;
        }
        this.f60955d = f2;
        C21907a<K> m8868a2 = m8868a();
        if (m8868a == m8868a2 && m8868a2.m8911d()) {
            return;
        }
        mo8853h();
    }
}
