package p193e.p194a.p195a.p244k;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.k.h */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/h.class */
public final class C6681h implements AbstractC6690i {

    /* renamed from: a */
    public final AbstractC19890w f22038a;

    /* renamed from: e.a.a.k.h$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$b.class */
    public static class C6683b extends AbstractC19889v<AbstractC6690i, Message> {

        /* renamed from: b */
        public final Message f22039b;

        public C6683b(C19852e c19852e, Message message, C6682a c6682a) {
            super(c19852e);
            this.f22039b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo30575h = ((AbstractC6690i) obj).mo30575h(this.f22039b);
            m11836c(mo30575h);
            return mo30575h;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addEditMessageToQueue(");
            m8728C.append(AbstractC19889v.m11837b(this.f22039b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.h$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$c.class */
    public static class C6684c extends AbstractC19889v<AbstractC6690i, Message> {

        /* renamed from: b */
        public final Message f22040b;

        /* renamed from: c */
        public final Participant[] f22041c;

        /* renamed from: d */
        public final int f22042d;

        /* renamed from: e */
        public final int f22043e;

        public C6684c(C19852e c19852e, Message message, Participant[] participantArr, int i, int i2, C6682a c6682a) {
            super(c19852e);
            this.f22040b = message;
            this.f22041c = participantArr;
            this.f22042d = i;
            this.f22043e = i2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo30572k = ((AbstractC6690i) obj).mo30572k(this.f22040b, this.f22041c, this.f22042d, this.f22043e);
            m11836c(mo30572k);
            return mo30572k;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addMessageToQueue(");
            m8728C.append(AbstractC19889v.m11837b(this.f22040b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f22041c, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f22042d), 2));
            m8728C.append(",");
            return C22128a.m8694K1(this.f22043e, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.h$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$d.class */
    public static class C6685d extends AbstractC19889v<AbstractC6690i, Bundle> {

        /* renamed from: b */
        public final AbstractC6704q f22044b;

        /* renamed from: c */
        public final Intent f22045c;

        /* renamed from: d */
        public final int f22046d;

        public C6685d(C19852e c19852e, AbstractC6704q abstractC6704q, Intent intent, int i, C6682a c6682a) {
            super(c19852e);
            this.f22044b = abstractC6704q;
            this.f22045c = intent;
            this.f22046d = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Bundle> mo30574i = ((AbstractC6690i) obj).mo30574i(this.f22044b, this.f22045c, this.f22046d);
            m11836c(mo30574i);
            return mo30574i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deliverIntentToTransport(");
            m8728C.append(AbstractC19889v.m11837b(this.f22044b, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f22045c, 2));
            m8728C.append(",");
            return C22128a.m8694K1(this.f22046d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.h$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$e.class */
    public static class C6686e extends AbstractC19889v<AbstractC6690i, Boolean> {

        /* renamed from: b */
        public final long f22047b;

        /* renamed from: c */
        public final long f22048c;

        public C6686e(C19852e c19852e, long j, long j2, C6682a c6682a) {
            super(c19852e);
            this.f22047b = j;
            this.f22048c = j2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30571l = ((AbstractC6690i) obj).mo30571l(this.f22047b, this.f22048c);
            m11836c(mo30571l);
            return mo30571l;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".rescheduleMessage(");
            C22128a.m8605k0(this.f22047b, 2, m8728C, ",");
            return C22128a.m8665T1(this.f22048c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.h$f */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$f.class */
    public static class C6687f extends AbstractC19889v<AbstractC6690i, Void> {

        /* renamed from: b */
        public final Message f22049b;

        public C6687f(C19852e c19852e, Message message, C6682a c6682a) {
            super(c19852e);
            this.f22049b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6690i) obj).mo30576g(this.f22049b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".resendMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f22049b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.h$g */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$g.class */
    public static class C6688g extends AbstractC19889v<AbstractC6690i, Boolean> {

        /* renamed from: b */
        public final Message f22050b;

        /* renamed from: c */
        public final long f22051c;

        /* renamed from: d */
        public final Participant[] f22052d;

        /* renamed from: e */
        public final long f22053e;

        public C6688g(C19852e c19852e, Message message, long j, Participant[] participantArr, long j2, C6682a c6682a) {
            super(c19852e);
            this.f22050b = message;
            this.f22051c = j;
            this.f22052d = participantArr;
            this.f22053e = j2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30573j = ((AbstractC6690i) obj).mo30573j(this.f22050b, this.f22051c, this.f22052d, this.f22053e);
            m11836c(mo30573j);
            return mo30573j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".scheduleMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f22050b, 1));
            m8728C.append(",");
            C22128a.m8605k0(this.f22051c, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f22052d, 1));
            m8728C.append(",");
            return C22128a.m8665T1(this.f22053e, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.h$h */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/h$h.class */
    public static class C6689h extends AbstractC19889v<AbstractC6690i, Void> {

        /* renamed from: b */
        public final Message f22054b;

        public C6689h(C19852e c19852e, Message message, C6682a c6682a) {
            super(c19852e);
            this.f22054b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6690i) obj).mo30577b(this.f22054b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f22054b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C6681h(AbstractC19890w abstractC19890w) {
        this.f22038a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: b */
    public void mo30577b(Message message) {
        this.f22038a.mo11835a(new C6689h(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: g */
    public void mo30576g(Message message) {
        this.f22038a.mo11835a(new C6687f(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: h */
    public AbstractC19891x<Message> mo30575h(Message message) {
        return new C19895z(this.f22038a, new C6683b(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: i */
    public AbstractC19891x<Bundle> mo30574i(AbstractC6704q abstractC6704q, Intent intent, int i) {
        return new C19895z(this.f22038a, new C6685d(new C19852e(), abstractC6704q, intent, i, null));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: j */
    public AbstractC19891x<Boolean> mo30573j(Message message, long j, Participant[] participantArr, long j2) {
        return new C19895z(this.f22038a, new C6688g(new C19852e(), message, j, participantArr, j2, null));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: k */
    public AbstractC19891x<Message> mo30572k(Message message, Participant[] participantArr, int i, int i2) {
        return new C19895z(this.f22038a, new C6684c(new C19852e(), message, participantArr, i, i2, null));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6690i
    /* renamed from: l */
    public AbstractC19891x<Boolean> mo30571l(long j, long j2) {
        return new C19895z(this.f22038a, new C6686e(new C19852e(), j, j2, null));
    }
}
