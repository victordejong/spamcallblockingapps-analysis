package p193e.p194a.p195a.p223c1;

import com.truecaller.messaging.data.types.Draft;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.c1.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/k.class */
public final class C5861k implements AbstractC5865l {

    /* renamed from: a */
    public final AbstractC19890w f19609a;

    /* renamed from: e.a.a.c1.k$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/k$b.class */
    public static class C5863b extends AbstractC19889v<AbstractC5865l, AbstractC5840a> {

        /* renamed from: b */
        public final Draft f19610b;

        /* renamed from: c */
        public final String f19611c;

        /* renamed from: d */
        public final boolean f19612d;

        /* renamed from: e */
        public final String f19613e;

        public C5863b(C19852e c19852e, Draft draft, String str, boolean z, String str2, C5862a c5862a) {
            super(c19852e);
            this.f19610b = draft;
            this.f19611c = str;
            this.f19612d = z;
            this.f19613e = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC5840a> mo32321a = ((AbstractC5865l) obj).mo32321a(this.f19610b, this.f19611c, this.f19612d, this.f19613e);
            m11836c(mo32321a);
            return mo32321a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".editDraft(");
            m8728C.append(AbstractC19889v.m11837b(this.f19610b, 2));
            m8728C.append(",");
            C22128a.m8719E0(this.f19611c, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f19612d), 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f19613e, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.c1.k$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/k$c.class */
    public static class C5864c extends AbstractC19889v<AbstractC5865l, AbstractC5851c> {

        /* renamed from: b */
        public final List<Draft> f19614b;

        /* renamed from: c */
        public final String f19615c;

        /* renamed from: d */
        public final boolean f19616d;

        /* renamed from: e */
        public final boolean f19617e;

        /* renamed from: f */
        public final String f19618f;

        /* renamed from: g */
        public final long f19619g;

        public C5864c(C19852e c19852e, List list, String str, boolean z, boolean z2, String str2, long j, C5862a c5862a) {
            super(c19852e);
            this.f19614b = list;
            this.f19615c = str;
            this.f19616d = z;
            this.f19617e = z2;
            this.f19618f = str2;
            this.f19619g = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC5851c> mo32320b = ((AbstractC5865l) obj).mo32320b(this.f19614b, this.f19615c, this.f19616d, this.f19617e, this.f19618f, this.f19619g);
            m11836c(mo32320b);
            return mo32320b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".scheduleDrafts(");
            m8728C.append(AbstractC19889v.m11837b(this.f19614b, 1));
            m8728C.append(",");
            C22128a.m8719E0(this.f19615c, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f19616d), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f19617e), 2));
            m8728C.append(",");
            C22128a.m8719E0(this.f19618f, 2, m8728C, ",");
            return C22128a.m8665T1(this.f19619g, 2, m8728C, ")");
        }
    }

    public C5861k(AbstractC19890w abstractC19890w) {
        this.f19609a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5865l
    /* renamed from: a */
    public AbstractC19891x<AbstractC5840a> mo32321a(Draft draft, String str, boolean z, String str2) {
        return new C19895z(this.f19609a, new C5863b(new C19852e(), draft, str, z, str2, null));
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5865l
    /* renamed from: b */
    public AbstractC19891x<AbstractC5851c> mo32320b(List<Draft> list, String str, boolean z, boolean z2, String str2, long j) {
        return new C19895z(this.f19609a, new C5864c(new C19852e(), list, str, z, z2, str2, j, null));
    }
}
