package p193e.p194a.p195a.p244k.p256z;

import com.truecaller.messaging.data.types.Message;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
/* renamed from: e.a.a.k.z.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/z/c.class */
public final class C6750c implements AbstractC6753d {

    /* renamed from: a */
    public final AbstractC19890w f22252a;

    /* renamed from: e.a.a.k.z.c$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/z/c$b.class */
    public static class C6752b extends AbstractC19889v<AbstractC6753d, Void> {

        /* renamed from: b */
        public final Message f22253b;

        public C6752b(C19852e c19852e, Message message, C6751a c6751a) {
            super(c19852e);
            this.f22253b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6753d) obj).mo30469b(this.f22253b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f22253b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C6750c(AbstractC19890w abstractC19890w) {
        this.f22252a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p256z.AbstractC6753d
    /* renamed from: b */
    public void mo30469b(Message message) {
        this.f22252a.mo11835a(new C6752b(new C19852e(), message, null));
    }
}
