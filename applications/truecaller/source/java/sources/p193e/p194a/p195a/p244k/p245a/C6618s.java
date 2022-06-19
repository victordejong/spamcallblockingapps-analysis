package p193e.p194a.p195a.p244k.p245a;

import com.truecaller.api.services.messenger.p138v1.models.input.InputReportType;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.transport.p170im.SendResult;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.k.a.s */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/s.class */
public final class C6618s implements AbstractC6626t {

    /* renamed from: a */
    public final AbstractC19890w f21856a;

    /* renamed from: e.a.a.k.a.s$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/s$b.class */
    public static class C6620b extends AbstractC19889v<AbstractC6626t, Void> {
        public C6620b(C19852e c19852e, C6619a c6619a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6626t) obj).mo30631c();
            return null;
        }

        public String toString() {
            return ".downloadEntities()";
        }
    }

    /* renamed from: e.a.a.k.a.s$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/s$c.class */
    public static class C6621c extends AbstractC19889v<AbstractC6626t, Void> {

        /* renamed from: b */
        public final Entity f21857b;

        public C6621c(C19852e c19852e, Entity entity, C6619a c6619a) {
            super(c19852e);
            this.f21857b = entity;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6626t) obj).mo30630d(this.f21857b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".restoreThumbnail(");
            m8728C.append(AbstractC19889v.m11837b(this.f21857b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.a.s$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/s$d.class */
    public static class C6622d extends AbstractC19889v<AbstractC6626t, SendResult> {

        /* renamed from: b */
        public final String f21858b;

        /* renamed from: c */
        public final long f21859c;

        /* renamed from: d */
        public final String f21860d;

        /* renamed from: e */
        public final long f21861e;

        /* renamed from: f */
        public final String f21862f;

        /* renamed from: g */
        public final String f21863g;

        public C6622d(C19852e c19852e, String str, long j, String str2, long j2, String str3, String str4, C6619a c6619a) {
            super(c19852e);
            this.f21858b = str;
            this.f21859c = j;
            this.f21860d = str2;
            this.f21861e = j2;
            this.f21862f = str3;
            this.f21863g = str4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SendResult> mo30629e = ((AbstractC6626t) obj).mo30629e(this.f21858b, this.f21859c, this.f21860d, this.f21861e, this.f21862f, this.f21863g);
            m11836c(mo30629e);
            return mo30629e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendReaction(");
            C22128a.m8719E0(this.f21858b, 2, m8728C, ",");
            C22128a.m8605k0(this.f21859c, 2, m8728C, ",");
            C22128a.m8719E0(this.f21860d, 1, m8728C, ",");
            C22128a.m8605k0(this.f21861e, 2, m8728C, ",");
            C22128a.m8719E0(this.f21862f, 2, m8728C, ",");
            return C22128a.m8587o2(this.f21863g, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.s$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/s$e.class */
    public static class C6623e extends AbstractC19889v<AbstractC6626t, SendResult> {

        /* renamed from: b */
        public final InputReportType f21864b;

        /* renamed from: c */
        public final long f21865c;

        public C6623e(C19852e c19852e, InputReportType inputReportType, long j, C6619a c6619a) {
            super(c19852e);
            this.f21864b = inputReportType;
            this.f21865c = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SendResult> mo30632b = ((AbstractC6626t) obj).mo30632b(this.f21864b, this.f21865c);
            m11836c(mo30632b);
            return mo30632b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendReport(");
            m8728C.append(AbstractC19889v.m11837b(this.f21864b, 2));
            m8728C.append(",");
            return C22128a.m8665T1(this.f21865c, 2, m8728C, ")");
        }
    }

    public C6618s(AbstractC19890w abstractC19890w) {
        this.f21856a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6626t
    /* renamed from: b */
    public AbstractC19891x<SendResult> mo30632b(InputReportType inputReportType, long j) {
        return new C19895z(this.f21856a, new C6623e(new C19852e(), inputReportType, j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6626t
    /* renamed from: c */
    public void mo30631c() {
        this.f21856a.mo11835a(new C6620b(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6626t
    /* renamed from: d */
    public void mo30630d(Entity entity) {
        this.f21856a.mo11835a(new C6621c(new C19852e(), entity, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6626t
    /* renamed from: e */
    public AbstractC19891x<SendResult> mo30629e(String str, long j, String str2, long j2, String str3, String str4) {
        return new C19895z(this.f21856a, new C6622d(new C19852e(), str, j, str2, j2, str3, str4, null));
    }
}
