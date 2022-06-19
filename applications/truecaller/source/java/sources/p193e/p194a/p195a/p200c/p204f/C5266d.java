package p193e.p194a.p195a.p200c.p204f;

import java.util.Calendar;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.a.c.f.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/f/d.class */
public final class C5266d implements AbstractC5265c {

    /* renamed from: a */
    public final g f18082a = C25225a.m3978P1(C5267a.f18083b);

    /* renamed from: e.a.a.c.f.d$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/d$a.class */
    public static final class C5267a extends m implements a<Calendar> {

        /* renamed from: b */
        public static final C5267a f18083b = new C5267a();

        public C5267a() {
            super(0);
        }

        public Object invoke() {
            return Calendar.getInstance();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: a */
    public long mo33474a() {
        return m33460o().getTimeInMillis();
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: b */
    public void mo33473b(int i) {
        m33460o().set(5, i);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: c */
    public int mo33472c() {
        return m33460o().get(1);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: d */
    public int mo33471d() {
        return m33460o().get(5);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: e */
    public void mo33470e(long j) {
        m33460o().setTimeInMillis(j);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: f */
    public int mo33469f() {
        return m33460o().get(11);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: g */
    public void mo33468g(int i) {
        m33460o().set(2, i);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: h */
    public void mo33467h(int i) {
        m33460o().set(11, i);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: i */
    public void mo33466i(int i) {
        m33460o().set(12, i);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: j */
    public void mo33465j(int i) {
        m33460o().set(1, i);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: k */
    public int mo33464k() {
        return m33460o().get(12);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: l */
    public int mo33463l() {
        return m33460o().get(2);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: m */
    public void mo33462m(int i) {
        m33460o().set(14, i);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5265c
    /* renamed from: n */
    public void mo33461n(int i) {
        m33460o().set(13, i);
    }

    /* renamed from: o */
    public final Calendar m33460o() {
        return (Calendar) this.f18082a.getValue();
    }
}
