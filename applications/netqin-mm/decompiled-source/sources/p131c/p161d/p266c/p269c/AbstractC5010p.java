package p131c.p161d.p266c.p269c;
/* renamed from: c.d.c.c.p */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/p.class */
public abstract class AbstractC5010p {

    /* renamed from: a */
    public static final AbstractC5010p f17630a = new C5011a();

    /* renamed from: b */
    public static final AbstractC5010p f17631b = new C5012b(-1);

    /* renamed from: c */
    public static final AbstractC5010p f17632c = new C5012b(1);

    /* renamed from: c.d.c.c.p$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/p$a.class */
    public static final class C5011a extends AbstractC5010p {
        public C5011a() {
            super(null);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5010p
        /* renamed from: a */
        public int mo24638a() {
            return 0;
        }

        /* renamed from: a */
        public AbstractC5010p m24639a(int i) {
            return i < 0 ? AbstractC5010p.f17631b : i > 0 ? AbstractC5010p.f17632c : AbstractC5010p.f17630a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5010p
        /* renamed from: a */
        public AbstractC5010p mo24637a(Comparable comparable, Comparable comparable2) {
            return m24639a(comparable.compareTo(comparable2));
        }
    }

    /* renamed from: c.d.c.c.p$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/p$b.class */
    public static final class C5012b extends AbstractC5010p {

        /* renamed from: d */
        public final int f17633d;

        public C5012b(int i) {
            super(null);
            this.f17633d = i;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5010p
        /* renamed from: a */
        public int mo24638a() {
            return this.f17633d;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5010p
        /* renamed from: a */
        public AbstractC5010p mo24637a(Comparable comparable, Comparable comparable2) {
            return this;
        }
    }

    public AbstractC5010p() {
    }

    public /* synthetic */ AbstractC5010p(C5011a aVar) {
        this();
    }

    /* renamed from: e */
    public static AbstractC5010p m24640e() {
        return f17630a;
    }

    /* renamed from: a */
    public abstract int mo24638a();

    /* renamed from: a */
    public abstract AbstractC5010p mo24637a(Comparable<?> comparable, Comparable<?> comparable2);
}
