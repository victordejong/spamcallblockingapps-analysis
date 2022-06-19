package p193e.p194a.p195a.p286y0;

import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.Message;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
/* renamed from: e.a.a.y0.p */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/p.class */
public final class C7327p implements AbstractC7343q {

    /* renamed from: a */
    public final AbstractC19890w f23374a;

    /* renamed from: e.a.a.y0.p$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$b.class */
    public static class C7329b extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final ImGroupInfo f23375b;

        public C7329b(C19852e c19852e, ImGroupInfo imGroupInfo, C7328a c7328a) {
            super(c19852e);
            this.f23375b = imGroupInfo;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29768i(this.f23375b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".cancelImGroupInvitation(");
            m8728C.append(AbstractC19889v.m11837b(this.f23375b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.y0.p$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$c.class */
    public static class C7330c extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Collection<Long> f23376b;

        public C7330c(C19852e c19852e, Collection collection, C7328a c7328a) {
            super(c19852e);
            this.f23376b = collection;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29774c(this.f23376b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".dismissRegularNotifications(");
            m8728C.append(AbstractC19889v.m11837b(this.f23376b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.y0.p$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$d.class */
    public static class C7331d extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final long f23377b;

        public C7331d(C19852e c19852e, long j, C7328a c7328a) {
            super(c19852e);
            this.f23377b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29766k(this.f23377b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f23377b, 2, C22128a.m8728C(".hideFailed("), ")");
        }
    }

    /* renamed from: e.a.a.y0.p$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$e.class */
    public static class C7332e extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final long f23378b;

        public C7332e(C19852e c19852e, long j, C7328a c7328a) {
            super(c19852e);
            this.f23378b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29775b(this.f23378b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f23378b, 2, C22128a.m8728C(".lockConversation("), ")");
        }
    }

    /* renamed from: e.a.a.y0.p$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$f.class */
    public static class C7333f extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Message f23379b;

        public C7333f(C19852e c19852e, Message message, C7328a c7328a) {
            super(c19852e);
            this.f23379b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29763n(this.f23379b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyClassZero(");
            m8728C.append(AbstractC19889v.m11837b(this.f23379b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.y0.p$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$g.class */
    public static class C7334g extends AbstractC19889v<AbstractC7343q, Void> {
        public C7334g(C19852e c19852e, C7328a c7328a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29765l();
            return null;
        }

        public String toString() {
            return ".notifyDownloadFailed()";
        }
    }

    /* renamed from: e.a.a.y0.p$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$h.class */
    public static class C7335h extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Message f23380b;

        /* renamed from: c */
        public final String f23381c;

        public C7335h(C19852e c19852e, Message message, String str, C7328a c7328a) {
            super(c19852e);
            this.f23380b = message;
            this.f23381c = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29764m(this.f23380b, this.f23381c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyFailed(");
            m8728C.append(AbstractC19889v.m11837b(this.f23380b, 1));
            m8728C.append(",");
            return C22128a.m8587o2(this.f23381c, 1, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.y0.p$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$i.class */
    public static class C7336i extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Conversation f23382b;

        public C7336i(C19852e c19852e, Conversation conversation, C7328a c7328a) {
            super(c19852e);
            this.f23382b = conversation;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29771f(this.f23382b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyHiddenNumberResolved(");
            m8728C.append(AbstractC19889v.m11837b(this.f23382b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.y0.p$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$j.class */
    public static class C7337j extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final ImGroupInfo f23383b;

        /* renamed from: c */
        public final boolean f23384c;

        public C7337j(C19852e c19852e, ImGroupInfo imGroupInfo, boolean z, C7328a c7328a) {
            super(c19852e);
            this.f23383b = imGroupInfo;
            this.f23384c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29770g(this.f23383b, this.f23384c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyImGroupInvitation(");
            m8728C.append(AbstractC19889v.m11837b(this.f23383b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f23384c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.y0.p$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$k.class */
    public static class C7338k extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Message f23385b;

        /* renamed from: c */
        public final String f23386c;

        public C7338k(C19852e c19852e, Message message, String str, C7328a c7328a) {
            super(c19852e);
            this.f23385b = message;
            this.f23386c = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29772e(this.f23385b, this.f23386c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyScheduledMessageFailed(");
            m8728C.append(AbstractC19889v.m11837b(this.f23385b, 1));
            m8728C.append(",");
            return C22128a.m8587o2(this.f23386c, 1, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.y0.p$l */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$l.class */
    public static class C7339l extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Message f23387b;

        /* renamed from: c */
        public final String f23388c;

        public C7339l(C19852e c19852e, Message message, String str, C7328a c7328a) {
            super(c19852e);
            this.f23387b = message;
            this.f23388c = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29769h(this.f23387b, this.f23388c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyScheduledMessageSent(");
            m8728C.append(AbstractC19889v.m11837b(this.f23387b, 1));
            m8728C.append(",");
            return C22128a.m8587o2(this.f23388c, 1, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.y0.p$m */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$m.class */
    public static class C7340m extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Message f23389b;

        public C7340m(C19852e c19852e, Message message, C7328a c7328a) {
            super(c19852e);
            this.f23389b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29773d(this.f23389b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyUnseenMessageWithoutPermission(");
            m8728C.append(AbstractC19889v.m11837b(this.f23389b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.y0.p$n */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$n.class */
    public static class C7341n extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final Map<Conversation, List<Message>> f23390b;

        public C7341n(C19852e c19852e, Map map, C7328a c7328a) {
            super(c19852e);
            this.f23390b = map;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29767j(this.f23390b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".notifyUnseenMessagesWithPermission(");
            m8728C.append(AbstractC19889v.m11837b(this.f23390b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.y0.p$o */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/p$o.class */
    public static class C7342o extends AbstractC19889v<AbstractC7343q, Void> {

        /* renamed from: b */
        public final long f23391b;

        public C7342o(C19852e c19852e, long j, C7328a c7328a) {
            super(c19852e);
            this.f23391b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC7343q) obj).mo29776a(this.f23391b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f23391b, 2, C22128a.m8728C(".unlockConversation("), ")");
        }
    }

    public C7327p(AbstractC19890w abstractC19890w) {
        this.f23374a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: a */
    public void mo29776a(long j) {
        this.f23374a.mo11835a(new C7342o(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: b */
    public void mo29775b(long j) {
        this.f23374a.mo11835a(new C7332e(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: c */
    public void mo29774c(Collection<Long> collection) {
        this.f23374a.mo11835a(new C7330c(new C19852e(), collection, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: d */
    public void mo29773d(Message message) {
        this.f23374a.mo11835a(new C7340m(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: e */
    public void mo29772e(Message message, String str) {
        this.f23374a.mo11835a(new C7338k(new C19852e(), message, str, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: f */
    public void mo29771f(Conversation conversation) {
        this.f23374a.mo11835a(new C7336i(new C19852e(), conversation, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: g */
    public void mo29770g(ImGroupInfo imGroupInfo, boolean z) {
        this.f23374a.mo11835a(new C7337j(new C19852e(), imGroupInfo, z, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: h */
    public void mo29769h(Message message, String str) {
        this.f23374a.mo11835a(new C7339l(new C19852e(), message, str, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: i */
    public void mo29768i(ImGroupInfo imGroupInfo) {
        this.f23374a.mo11835a(new C7329b(new C19852e(), imGroupInfo, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: j */
    public void mo29767j(Map<Conversation, List<Message>> map) {
        this.f23374a.mo11835a(new C7341n(new C19852e(), map, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: k */
    public void mo29766k(long j) {
        this.f23374a.mo11835a(new C7331d(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: l */
    public void mo29765l() {
        this.f23374a.mo11835a(new C7334g(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: m */
    public void mo29764m(Message message, String str) {
        this.f23374a.mo11835a(new C7335h(new C19852e(), message, str, null));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7343q
    /* renamed from: n */
    public void mo29763n(Message message) {
        this.f23374a.mo11835a(new C7333f(new C19852e(), message, null));
    }
}
