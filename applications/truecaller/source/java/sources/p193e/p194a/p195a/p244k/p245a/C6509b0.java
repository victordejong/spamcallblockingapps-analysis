package p193e.p194a.p195a.p244k.p245a;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.k.a.b0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0.class */
public final class C6509b0 implements AbstractC6523c0 {

    /* renamed from: a */
    public final AbstractC19890w f21548a;

    /* renamed from: e.a.a.k.a.b0$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$b.class */
    public static class C6511b extends AbstractC19889v<AbstractC6523c0, String> {

        /* renamed from: b */
        public final long f21549b;

        public C6511b(C19852e c19852e, long j, C6510a c6510a) {
            super(c19852e);
            this.f21549b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<String> mo30800f = ((AbstractC6523c0) obj).mo30800f(this.f21549b);
            m11836c(mo30800f);
            return mo30800f;
        }

        public String toString() {
            return C22128a.m8665T1(this.f21549b, 2, C22128a.m8728C(".getReactionEmoji("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.b0$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$c.class */
    public static class C6512c extends AbstractC19889v<AbstractC6523c0, Map<Reaction, Participant>> {

        /* renamed from: b */
        public final long f21550b;

        public C6512c(C19852e c19852e, long j, C6510a c6510a) {
            super(c19852e);
            this.f21550b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Map<Reaction, Participant>> mo30803c = ((AbstractC6523c0) obj).mo30803c(this.f21550b);
            m11836c(mo30803c);
            return mo30803c;
        }

        public String toString() {
            return C22128a.m8665T1(this.f21550b, 2, C22128a.m8728C(".getReactionsWithParticipants("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.b0$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$d.class */
    public static class C6513d extends AbstractC19889v<AbstractC6523c0, Void> {

        /* renamed from: b */
        public final long f21551b;

        public C6513d(C19852e c19852e, long j, C6510a c6510a) {
            super(c19852e);
            this.f21551b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6523c0) obj).mo30804b(this.f21551b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f21551b, 2, C22128a.m8728C(".lockConversation("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.b0$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$e.class */
    public static class C6514e extends AbstractC19889v<AbstractC6523c0, Void> {

        /* renamed from: b */
        public final long f21552b;

        public C6514e(C19852e c19852e, long j, C6510a c6510a) {
            super(c19852e);
            this.f21552b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6523c0) obj).mo30802d(this.f21552b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f21552b, 2, C22128a.m8728C(".markReactionSeenByConversationId("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.b0$f */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$f.class */
    public static class C6515f extends AbstractC19889v<AbstractC6523c0, Void> {

        /* renamed from: b */
        public final long[] f21553b;

        public C6515f(C19852e c19852e, long[] jArr, C6510a c6510a) {
            super(c19852e);
            this.f21553b = jArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6523c0) obj).mo30797i(this.f21553b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markReactionsSeenByMessageIds(");
            m8728C.append(AbstractC19889v.m11837b(this.f21553b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.a.b0$g */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$g.class */
    public static class C6516g extends AbstractC19889v<AbstractC6523c0, Void> {
        public C6516g(C19852e c19852e, C6510a c6510a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6523c0) obj).mo30801e();
            return null;
        }

        public String toString() {
            return ".notifyUnseenReactions()";
        }
    }

    /* renamed from: e.a.a.k.a.b0$h */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$h.class */
    public static class C6517h extends AbstractC19889v<AbstractC6523c0, Boolean> {

        /* renamed from: b */
        public final String f21554b;

        /* renamed from: c */
        public final Reaction[] f21555c;

        public C6517h(C19852e c19852e, String str, Reaction[] reactionArr, C6510a c6510a) {
            super(c19852e);
            this.f21554b = str;
            this.f21555c = reactionArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30799g = ((AbstractC6523c0) obj).mo30799g(this.f21554b, this.f21555c);
            m11836c(mo30799g);
            return mo30799g;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".saveReactions(");
            C22128a.m8719E0(this.f21554b, 2, m8728C, ",");
            return C22128a.m8618h(m8728C, AbstractC19889v.m11837b(this.f21555c, 1), ")");
        }
    }

    /* renamed from: e.a.a.k.a.b0$i */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$i.class */
    public static class C6518i extends AbstractC19889v<AbstractC6523c0, Void> {

        /* renamed from: b */
        public final Message f21556b;

        /* renamed from: c */
        public final String f21557c;

        /* renamed from: d */
        public final String f21558d;

        public C6518i(C19852e c19852e, Message message, String str, String str2, C6510a c6510a) {
            super(c19852e);
            this.f21556b = message;
            this.f21557c = str;
            this.f21558d = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6523c0) obj).mo30798h(this.f21556b, this.f21557c, this.f21558d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendReaction(");
            m8728C.append(AbstractC19889v.m11837b(this.f21556b, 1));
            m8728C.append(",");
            C22128a.m8719E0(this.f21557c, 2, m8728C, ",");
            return C22128a.m8587o2(this.f21558d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.b0$j */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/b0$j.class */
    public static class C6519j extends AbstractC19889v<AbstractC6523c0, Void> {

        /* renamed from: b */
        public final long f21559b;

        public C6519j(C19852e c19852e, long j, C6510a c6510a) {
            super(c19852e);
            this.f21559b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6523c0) obj).mo30805a(this.f21559b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f21559b, 2, C22128a.m8728C(".unlockConversation("), ")");
        }
    }

    public C6509b0(AbstractC19890w abstractC19890w) {
        this.f21548a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: a */
    public void mo30805a(long j) {
        this.f21548a.mo11835a(new C6519j(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: b */
    public void mo30804b(long j) {
        this.f21548a.mo11835a(new C6513d(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: c */
    public AbstractC19891x<Map<Reaction, Participant>> mo30803c(long j) {
        return new C19895z(this.f21548a, new C6512c(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: d */
    public void mo30802d(long j) {
        this.f21548a.mo11835a(new C6514e(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: e */
    public void mo30801e() {
        this.f21548a.mo11835a(new C6516g(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: f */
    public AbstractC19891x<String> mo30800f(long j) {
        return new C19895z(this.f21548a, new C6511b(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: g */
    public AbstractC19891x<Boolean> mo30799g(String str, Reaction[] reactionArr) {
        return new C19895z(this.f21548a, new C6517h(new C19852e(), str, reactionArr, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: h */
    public void mo30798h(Message message, String str, String str2) {
        this.f21548a.mo11835a(new C6518i(new C19852e(), message, str, str2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6523c0
    /* renamed from: i */
    public void mo30797i(long[] jArr) {
        this.f21548a.mo11835a(new C6515f(new C19852e(), jArr, null));
    }
}
