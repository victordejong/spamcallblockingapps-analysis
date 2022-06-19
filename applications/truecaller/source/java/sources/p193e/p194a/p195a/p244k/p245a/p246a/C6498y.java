package p193e.p194a.p195a.p244k.p245a.p246a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
/* renamed from: e.a.a.k.a.a.y */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/y.class */
public final class C6498y implements AbstractC6503z {

    /* renamed from: a */
    public final AbstractC19890w f21524a;

    /* renamed from: e.a.a.k.a.a.y$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/y$b.class */
    public static class C6500b extends AbstractC19889v<AbstractC6503z, Void> {

        /* renamed from: b */
        public final String f21525b;

        /* renamed from: c */
        public final long f21526c;

        public C6500b(C19852e c19852e, String str, long j, C6499a c6499a) {
            super(c19852e);
            this.f21525b = str;
            this.f21526c = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6503z) obj).mo30826c(this.f21525b, this.f21526c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteEvents(");
            C22128a.m8719E0(this.f21525b, 2, m8728C, ",");
            return C22128a.m8665T1(this.f21526c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.y$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/y$c.class */
    public static class C6501c extends AbstractC19889v<AbstractC6503z, Void> {

        /* renamed from: b */
        public final String f21527b;

        public C6501c(C19852e c19852e, String str, C6499a c6499a) {
            super(c19852e);
            this.f21527b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6503z) obj).mo30827b(this.f21527b);
            return null;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21527b, 2, C22128a.m8728C(".restoreEventIfExists("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.y$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/y$d.class */
    public static class C6502d extends AbstractC19889v<AbstractC6503z, Void> {

        /* renamed from: b */
        public final String f21528b;

        /* renamed from: c */
        public final String f21529c;

        /* renamed from: d */
        public final byte[] f21530d;

        /* renamed from: e */
        public final long f21531e;

        /* renamed from: f */
        public final int f21532f;

        public C6502d(C19852e c19852e, String str, String str2, byte[] bArr, long j, int i, C6499a c6499a) {
            super(c19852e);
            this.f21528b = str;
            this.f21529c = str2;
            this.f21530d = bArr;
            this.f21531e = j;
            this.f21532f = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6503z) obj).mo30828a(this.f21528b, this.f21529c, this.f21530d, this.f21531e, this.f21532f);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".saveUnprocessedEvent(");
            C22128a.m8719E0(this.f21528b, 2, m8728C, ",");
            C22128a.m8719E0(this.f21529c, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f21530d, 1));
            m8728C.append(",");
            C22128a.m8605k0(this.f21531e, 2, m8728C, ",");
            return C22128a.m8694K1(this.f21532f, 2, m8728C, ")");
        }
    }

    public C6498y(AbstractC19890w abstractC19890w) {
        this.f21524a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z
    /* renamed from: a */
    public void mo30828a(String str, String str2, byte[] bArr, long j, int i) {
        this.f21524a.mo11835a(new C6502d(new C19852e(), str, str2, bArr, j, i, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z
    /* renamed from: b */
    public void mo30827b(String str) {
        this.f21524a.mo11835a(new C6501c(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z
    /* renamed from: c */
    public void mo30826c(String str, long j) {
        this.f21524a.mo11835a(new C6500b(new C19852e(), str, j, null));
    }
}
