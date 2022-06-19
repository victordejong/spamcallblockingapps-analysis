package p193e.p1451f.p1452a.p1480t.p1481k;
/* renamed from: e.f.a.t.k.d */
/* loaded from: classes-dex2jar.jar:e/f/a/t/k/d.class */
public abstract class AbstractC22633d {

    /* renamed from: e.f.a.t.k.d$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/k/d$b.class */
    public static class C22635b extends AbstractC22633d {

        /* renamed from: a */
        public volatile boolean f62655a;

        public C22635b() {
            super(null);
        }

        @Override // p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d
        /* renamed from: a */
        public void mo8010a() {
            if (!this.f62655a) {
                return;
            }
            throw new IllegalStateException("Already released");
        }
    }

    public AbstractC22633d(C22634a c22634a) {
    }

    /* renamed from: a */
    public abstract void mo8010a();
}
