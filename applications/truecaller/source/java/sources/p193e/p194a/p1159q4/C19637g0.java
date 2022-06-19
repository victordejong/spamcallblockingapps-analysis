package p193e.p194a.p1159q4;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.q4.g0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/g0.class */
public final class C19637g0 implements AbstractC19643h0 {

    /* renamed from: a */
    public final AbstractC19890w f54565a;

    /* renamed from: e.a.q4.g0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/g0$b.class */
    public static class C19639b extends AbstractC19889v<AbstractC19643h0, List<Participant>> {
        public C19639b(C19852e c19852e, C19638a c19638a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<List<Participant>> mo13087c = ((AbstractC19643h0) obj).mo13087c();
            m11836c(mo13087c);
            return mo13087c;
        }

        public String toString() {
            return ".fetchBulkSmsContacts()";
        }
    }

    /* renamed from: e.a.q4.g0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/g0$c.class */
    public static class C19640c extends AbstractC19889v<AbstractC19643h0, Void> {
        public C19640c(C19852e c19852e, C19638a c19638a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC19643h0) obj).mo13089a();
            return null;
        }

        public String toString() {
            return ".fetchBulkSmsContactsSilently()";
        }
    }

    /* renamed from: e.a.q4.g0$d */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/g0$d.class */
    public static class C19641d extends AbstractC19889v<AbstractC19643h0, Boolean> {

        /* renamed from: b */
        public final Contact f54566b;

        public C19641d(C19852e c19852e, Contact contact, C19638a c19638a) {
            super(c19852e);
            this.f54566b = contact;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo13088b = ((AbstractC19643h0) obj).mo13088b(this.f54566b);
            m11836c(mo13088b);
            return mo13088b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".isWhatsAppProfilePresentForContact(");
            m8728C.append(AbstractC19889v.m11837b(this.f54566b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C19637g0(AbstractC19890w abstractC19890w) {
        this.f54565a = abstractC19890w;
    }

    @Override // p193e.p194a.p1159q4.AbstractC19643h0
    /* renamed from: a */
    public void mo13089a() {
        this.f54565a.mo11835a(new C19640c(new C19852e(), null));
    }

    @Override // p193e.p194a.p1159q4.AbstractC19643h0
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo13088b(Contact contact) {
        return new C19895z(this.f54565a, new C19641d(new C19852e(), contact, null));
    }

    @Override // p193e.p194a.p1159q4.AbstractC19643h0
    /* renamed from: c */
    public AbstractC19891x<List<Participant>> mo13087c() {
        return new C19895z(this.f54565a, new C19639b(new C19852e(), null));
    }
}
