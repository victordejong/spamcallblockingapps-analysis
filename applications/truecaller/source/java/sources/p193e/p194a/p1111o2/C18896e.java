package p193e.p194a.p1111o2;

import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.o2.e */
/* loaded from: classes4-dex2jar.jar:e/a/o2/e.class */
public final class C18896e implements AbstractC18911s {

    /* renamed from: a */
    public l<? super Integer, Integer> f52997a = C18897a.f52998b;

    /* renamed from: e.a.o2.e$a */
    /* loaded from: classes4-dex2jar.jar:e/a/o2/e$a.class */
    public static final class C18897a extends m implements l<Integer, Integer> {

        /* renamed from: b */
        public static final C18897a f52998b = new C18897a();

        public C18897a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14347d(Object obj) {
            return Integer.valueOf(((Number) obj).intValue());
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: b */
    public void mo14331b(l<? super Integer, Integer> lVar) {
        s1.z.c.l.e(lVar, "unwrapper");
        this.f52997a = lVar;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: j */
    public int mo14329j(int i) {
        return ((Number) this.f52997a.d(Integer.valueOf(i))).intValue();
    }
}
