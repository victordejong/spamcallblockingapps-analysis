package p081h.p203i.p316b.p318b;
/* renamed from: h.i.b.b.u */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/u.class */
public final class C9350u<E> extends AbstractC9331k<E> {

    /* renamed from: h */
    public static final C9350u<Object> f21389h = new C9350u<>(new Object[0], 0, null, 0, 0);

    /* renamed from: c */
    public final transient Object[] f21390c;

    /* renamed from: d */
    public final transient Object[] f21391d;

    /* renamed from: e */
    public final transient int f21392e;

    /* renamed from: f */
    public final transient int f21393f;

    /* renamed from: g */
    public final transient int f21394g;

    public C9350u(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f21390c = objArr;
        this.f21391d = objArr2;
        this.f21392e = i2;
        this.f21393f = i;
        this.f21394g = i3;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: a */
    public int mo15372a(Object[] objArr, int i) {
        System.arraycopy(this.f21390c, 0, objArr, i, this.f21394g);
        return i + this.f21394g;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: b */
    public Object[] mo15380b() {
        return this.f21390c;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: c */
    public int mo15379c() {
        return this.f21394g;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        Object[] objArr = this.f21391d;
        if (obj == null || objArr == null) {
            return false;
        }
        int a = C9320g.m15434a(obj);
        while (true) {
            int i = a & this.f21392e;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a = i + 1;
        }
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f21393f;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k, p081h.p203i.p316b.p318b.AbstractC9321h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public AbstractC9311a0<E> iterator() {
        return mo15381r().iterator();
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9321h
    /* renamed from: q */
    public int mo15378q() {
        return 0;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k
    /* renamed from: s */
    public AbstractC9323i<E> mo15371s() {
        return AbstractC9323i.m15429b(this.f21390c, this.f21394g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f21394g;
    }

    @Override // p081h.p203i.p316b.p318b.AbstractC9331k
    /* renamed from: t */
    public boolean mo15370t() {
        return true;
    }
}
