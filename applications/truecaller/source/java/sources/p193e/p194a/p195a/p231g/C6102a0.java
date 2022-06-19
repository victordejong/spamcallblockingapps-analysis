package p193e.p194a.p195a.p231g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
/* renamed from: e.a.a.g.a0 */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/a0.class */
public final class C6102a0 implements AbstractC6106b0 {

    /* renamed from: a */
    public final AbstractC19890w f20250a;

    /* renamed from: e.a.a.g.a0$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/a0$b.class */
    public static class C6104b extends AbstractC19889v<AbstractC6106b0, Void> {

        /* renamed from: b */
        public final AbstractC6251z f20251b;

        /* renamed from: c */
        public final int f20252c;

        public C6104b(C19852e c19852e, AbstractC6251z abstractC6251z, int i, C6103a c6103a) {
            super(c19852e);
            this.f20251b = abstractC6251z;
            this.f20252c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6106b0) obj).mo31803a(this.f20251b, this.f20252c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performNextBatch(");
            m8728C.append(AbstractC19889v.m11837b(this.f20251b, 1));
            m8728C.append(",");
            return C22128a.m8694K1(this.f20252c, 2, m8728C, ")");
        }
    }

    public C6102a0(AbstractC19890w abstractC19890w) {
        this.f20250a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6106b0
    /* renamed from: a */
    public void mo31803a(AbstractC6251z abstractC6251z, int i) {
        this.f20250a.mo11835a(new C6104b(new C19852e(), abstractC6251z, i, null));
    }
}
