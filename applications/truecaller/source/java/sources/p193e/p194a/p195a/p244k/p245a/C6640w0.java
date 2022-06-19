package p193e.p194a.p195a.p244k.p245a;

import com.truecaller.api.services.messenger.p138v1.events.Event;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.k.a.w0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/w0.class */
public final class C6640w0 implements AbstractC6646x0 {

    /* renamed from: a */
    public final AbstractC19890w f21920a;

    /* renamed from: e.a.a.k.a.w0$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/w0$b.class */
    public static class C6642b extends AbstractC19889v<AbstractC6646x0, Boolean> {
        public C6642b(C19852e c19852e, C6641a c6641a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30603b = ((AbstractC6646x0) obj).mo30603b();
            m11836c(mo30603b);
            return mo30603b;
        }

        public String toString() {
            return ".restoreUnsupportedEvents()";
        }
    }

    /* renamed from: e.a.a.k.a.w0$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/w0$c.class */
    public static class C6643c extends AbstractC19889v<AbstractC6646x0, Void> {

        /* renamed from: b */
        public final Event f21921b;

        /* renamed from: c */
        public final int f21922c;

        /* renamed from: d */
        public final int f21923d;

        public C6643c(C19852e c19852e, Event event, int i, int i2, C6641a c6641a) {
            super(c19852e);
            this.f21921b = event;
            this.f21922c = i;
            this.f21923d = i2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6646x0) obj).mo30604a(this.f21921b, this.f21922c, this.f21923d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".saveUnsupportedEvent(");
            m8728C.append(AbstractC19889v.m11837b(this.f21921b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f21922c), 2));
            m8728C.append(",");
            return C22128a.m8694K1(this.f21923d, 2, m8728C, ")");
        }
    }

    public C6640w0(AbstractC19890w abstractC19890w) {
        this.f21920a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6646x0
    /* renamed from: a */
    public void mo30604a(Event event, int i, int i2) {
        this.f21920a.mo11835a(new C6643c(new C19852e(), event, i, i2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6646x0
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo30603b() {
        return new C19895z(this.f21920a, new C6642b(new C19852e(), null));
    }
}
