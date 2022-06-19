package p193e.p194a.p195a.p244k.p245a;

import java.util.Collection;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.k.a.d1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1.class */
public final class C6530d1 implements AbstractC6543e1 {

    /* renamed from: a */
    public final AbstractC19890w f21588a;

    /* renamed from: e.a.a.k.a.d1$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$b.class */
    public static class C6532b extends AbstractC19889v<AbstractC6543e1, Boolean> {

        /* renamed from: b */
        public final Collection<String> f21589b;

        /* renamed from: c */
        public final boolean f21590c;

        public C6532b(C19852e c19852e, Collection collection, boolean z, C6531a c6531a) {
            super(c19852e);
            this.f21589b = collection;
            this.f21590c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30791a = ((AbstractC6543e1) obj).mo30791a(this.f21589b, this.f21590c);
            m11836c(mo30791a);
            return mo30791a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".forceUpdateImUsers(");
            m8728C.append(AbstractC19889v.m11837b(this.f21589b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f21590c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.d1$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$c.class */
    public static class C6533c extends AbstractC19889v<AbstractC6543e1, List<C6582k1>> {

        /* renamed from: b */
        public final long f21591b;

        public C6533c(C19852e c19852e, long j, C6531a c6531a) {
            super(c19852e);
            this.f21591b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<List<C6582k1>> mo30787e = ((AbstractC6543e1) obj).mo30787e(this.f21591b);
            m11836c(mo30787e);
            return mo30787e;
        }

        public String toString() {
            return C22128a.m8665T1(this.f21591b, 2, C22128a.m8728C(".getJoinedImUsersForNotification("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.d1$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$d.class */
    public static class C6534d extends AbstractC19889v<AbstractC6543e1, String> {

        /* renamed from: b */
        public final String f21592b;

        public C6534d(C19852e c19852e, String str, C6531a c6531a) {
            super(c19852e);
            this.f21592b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<String> mo30784h = ((AbstractC6543e1) obj).mo30784h(this.f21592b);
            m11836c(mo30784h);
            return mo30784h;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21592b, 1, C22128a.m8728C(".getNormalizedAddress("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.d1$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$e.class */
    public static class C6535e extends AbstractC19889v<AbstractC6543e1, Boolean> {

        /* renamed from: b */
        public final String f21593b;

        /* renamed from: c */
        public final String f21594c;

        public C6535e(C19852e c19852e, String str, String str2, C6531a c6531a) {
            super(c19852e);
            this.f21593b = str;
            this.f21594c = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30788d = ((AbstractC6543e1) obj).mo30788d(this.f21593b, this.f21594c);
            m11836c(mo30788d);
            return mo30788d;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".invalidatePeerId(");
            C22128a.m8719E0(this.f21593b, 1, m8728C, ",");
            return C22128a.m8587o2(this.f21594c, 1, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.d1$f */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$f.class */
    public static class C6536f extends AbstractC19889v<AbstractC6543e1, Void> {

        /* renamed from: b */
        public final List<String> f21595b;

        public C6536f(C19852e c19852e, List list, C6531a c6531a) {
            super(c19852e);
            this.f21595b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6543e1) obj).mo30785g(this.f21595b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markJoinedImUsersAsNotified(");
            m8728C.append(AbstractC19889v.m11837b(this.f21595b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.a.d1$g */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$g.class */
    public static class C6537g extends AbstractC19889v<AbstractC6543e1, Void> {

        /* renamed from: b */
        public final Collection<String> f21596b;

        public C6537g(C19852e c19852e, Collection collection, C6531a c6531a) {
            super(c19852e);
            this.f21596b = collection;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6543e1) obj).mo30789c(this.f21596b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateImUsers(");
            m8728C.append(AbstractC19889v.m11837b(this.f21596b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.a.d1$h */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$h.class */
    public static class C6538h extends AbstractC19889v<AbstractC6543e1, Void> {

        /* renamed from: b */
        public final String f21597b;

        /* renamed from: c */
        public final String f21598c;

        /* renamed from: d */
        public final boolean f21599d;

        public C6538h(C19852e c19852e, String str, String str2, boolean z, C6531a c6531a) {
            super(c19852e);
            this.f21597b = str;
            this.f21598c = str2;
            this.f21599d = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6543e1) obj).mo30790b(this.f21597b, this.f21598c, this.f21599d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateNumberForImId(");
            C22128a.m8719E0(this.f21597b, 1, m8728C, ",");
            C22128a.m8719E0(this.f21598c, 1, m8728C, ",");
            return C22128a.m8566u(this.f21599d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.d1$i */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/d1$i.class */
    public static class C6539i extends AbstractC19889v<AbstractC6543e1, Void> {

        /* renamed from: b */
        public final String f21600b;

        /* renamed from: c */
        public final String f21601c;

        /* renamed from: d */
        public final boolean f21602d;

        public C6539i(C19852e c19852e, String str, String str2, boolean z, C6531a c6531a) {
            super(c19852e);
            this.f21600b = str;
            this.f21601c = str2;
            this.f21602d = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6543e1) obj).mo30786f(this.f21600b, this.f21601c, this.f21602d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateTcIdForImId(");
            C22128a.m8719E0(this.f21600b, 1, m8728C, ",");
            C22128a.m8719E0(this.f21601c, 2, m8728C, ",");
            return C22128a.m8566u(this.f21602d, 2, m8728C, ")");
        }
    }

    public C6530d1(AbstractC19890w abstractC19890w) {
        this.f21588a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo30791a(Collection<String> collection, boolean z) {
        return new C19895z(this.f21588a, new C6532b(new C19852e(), collection, z, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: b */
    public void mo30790b(String str, String str2, boolean z) {
        this.f21588a.mo11835a(new C6538h(new C19852e(), str, str2, z, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: c */
    public void mo30789c(Collection<String> collection) {
        this.f21588a.mo11835a(new C6537g(new C19852e(), collection, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: d */
    public AbstractC19891x<Boolean> mo30788d(String str, String str2) {
        return new C19895z(this.f21588a, new C6535e(new C19852e(), str, str2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: e */
    public AbstractC19891x<List<C6582k1>> mo30787e(long j) {
        return new C19895z(this.f21588a, new C6533c(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: f */
    public void mo30786f(String str, String str2, boolean z) {
        this.f21588a.mo11835a(new C6539i(new C19852e(), str, str2, z, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: g */
    public void mo30785g(List<String> list) {
        this.f21588a.mo11835a(new C6536f(new C19852e(), list, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: h */
    public AbstractC19891x<String> mo30784h(String str) {
        return new C19895z(this.f21588a, new C6534d(new C19852e(), str, null));
    }
}
