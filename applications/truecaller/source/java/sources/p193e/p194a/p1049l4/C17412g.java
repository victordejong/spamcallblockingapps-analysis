package p193e.p194a.p1049l4;

import com.truecaller.presence.AvailabilityTrigger;
import java.util.Collection;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.l4.g */
/* loaded from: classes12-dex2jar.jar:e/a/l4/g.class */
public final class C17412g implements AbstractC17419h {

    /* renamed from: a */
    public final AbstractC19890w f48778a;

    /* renamed from: e.a.l4.g$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l4/g$b.class */
    public static class C17414b extends AbstractC19889v<AbstractC17419h, Collection<C17409e>> {

        /* renamed from: b */
        public final Collection<String> f48779b;

        public C17414b(C19852e c19852e, Collection collection, C17413a c17413a) {
            super(c19852e);
            this.f48779b = collection;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Collection<C17409e>> mo16127e = ((AbstractC17419h) obj).mo16127e(this.f48779b);
            m11836c(mo16127e);
            return mo16127e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getPresenceForNumbers(");
            m8728C.append(AbstractC19889v.m11837b(this.f48779b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l4.g$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l4/g$c.class */
    public static class C17415c extends AbstractC19889v<AbstractC17419h, Void> {
        public C17415c(C19852e c19852e, C17413a c17413a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17419h) obj).mo16129c();
            return null;
        }

        public String toString() {
            return ".reportLastSeen()";
        }
    }

    /* renamed from: e.a.l4.g$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l4/g$d.class */
    public static class C17416d extends AbstractC19889v<AbstractC17419h, Void> {

        /* renamed from: b */
        public final AvailabilityTrigger f48780b;

        /* renamed from: c */
        public final boolean f48781c;

        public C17416d(C19852e c19852e, AvailabilityTrigger availabilityTrigger, boolean z, C17413a c17413a) {
            super(c19852e);
            this.f48780b = availabilityTrigger;
            this.f48781c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17419h) obj).mo16128d(this.f48780b, this.f48781c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".reportPresence(");
            m8728C.append(AbstractC19889v.m11837b(this.f48780b, 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f48781c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.l4.g$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l4/g$e.class */
    public static class C17417e extends AbstractC19889v<AbstractC17419h, Boolean> {
        public C17417e(C19852e c19852e, C17413a c17413a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16131a = ((AbstractC17419h) obj).mo16131a();
            m11836c(mo16131a);
            return mo16131a;
        }

        public String toString() {
            return ".reportPresenceSettings()";
        }
    }

    /* renamed from: e.a.l4.g$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l4/g$f.class */
    public static class C17418f extends AbstractC19889v<AbstractC17419h, Boolean> {
        public C17418f(C19852e c19852e, C17413a c17413a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16130b = ((AbstractC17419h) obj).mo16130b();
            m11836c(mo16130b);
            return mo16130b;
        }

        public String toString() {
            return ".resetVoipPresence()";
        }
    }

    public C17412g(AbstractC19890w abstractC19890w) {
        this.f48778a = abstractC19890w;
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo16131a() {
        return new C19895z(this.f48778a, new C17417e(new C19852e(), null));
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo16130b() {
        return new C19895z(this.f48778a, new C17418f(new C19852e(), null));
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: c */
    public void mo16129c() {
        this.f48778a.mo11835a(new C17415c(new C19852e(), null));
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: d */
    public void mo16128d(AvailabilityTrigger availabilityTrigger, boolean z) {
        this.f48778a.mo11835a(new C17416d(new C19852e(), availabilityTrigger, z, null));
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: e */
    public AbstractC19891x<Collection<C17409e>> mo16127e(Collection<String> collection) {
        return new C19895z(this.f48778a, new C17414b(new C19852e(), collection, null));
    }
}
