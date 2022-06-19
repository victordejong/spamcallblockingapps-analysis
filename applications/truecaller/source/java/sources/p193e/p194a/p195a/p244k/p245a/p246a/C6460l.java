package p193e.p194a.p195a.p244k.p245a.p246a;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import p193e.p194a.p195a.p231g.p234l0.C6226b;
import s1.k;
/* renamed from: e.a.a.k.a.a.l */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l.class */
public final class C6460l implements AbstractC6485m {

    /* renamed from: a */
    public final AbstractC19890w f21451a;

    /* renamed from: e.a.a.k.a.a.l$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$b.class */
    public static class C6462b extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21452b;

        public C6462b(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21452b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30895e = ((AbstractC6485m) obj).mo30895e(this.f21452b);
            m11836c(mo30895e);
            return mo30895e;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21452b, 2, C22128a.m8728C(".acceptInvite("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$c.class */
    public static class C6463c extends AbstractC19889v<AbstractC6485m, Boolean> {
        public C6463c(C19852e c19852e, C6461a c6461a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30884p = ((AbstractC6485m) obj).mo30884p();
            m11836c(mo30884p);
            return mo30884p;
        }

        public String toString() {
            return ".acceptPendingInvites()";
        }
    }

    /* renamed from: e.a.a.k.a.a.l$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$d.class */
    public static class C6464d extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21453b;

        /* renamed from: c */
        public final List<? extends Participant> f21454c;

        public C6464d(C19852e c19852e, String str, List list, C6461a c6461a) {
            super(c19852e);
            this.f21453b = str;
            this.f21454c = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30894f = ((AbstractC6485m) obj).mo30894f(this.f21453b, this.f21454c);
            m11836c(mo30894f);
            return mo30894f;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addParticipants(");
            C22128a.m8719E0(this.f21453b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f21454c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.a.a.l$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$e.class */
    public static class C6465e extends AbstractC19889v<AbstractC6485m, Participant> {

        /* renamed from: b */
        public final List<? extends Participant> f21455b;

        /* renamed from: c */
        public final String f21456c;

        /* renamed from: d */
        public final String f21457d;

        public C6465e(C19852e c19852e, List list, String str, String str2, C6461a c6461a) {
            super(c19852e);
            this.f21455b = list;
            this.f21456c = str;
            this.f21457d = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Participant> mo30881s = ((AbstractC6485m) obj).mo30881s(this.f21455b, this.f21456c, this.f21457d);
            m11836c(mo30881s);
            return mo30881s;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".createGroup(");
            m8728C.append(AbstractC19889v.m11837b(this.f21455b, 2));
            m8728C.append(",");
            C22128a.m8719E0(this.f21456c, 2, m8728C, ",");
            return C22128a.m8587o2(this.f21457d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$f */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$f.class */
    public static class C6466f extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21458b;

        /* renamed from: c */
        public final boolean f21459c;

        public C6466f(C19852e c19852e, String str, boolean z, C6461a c6461a) {
            super(c19852e);
            this.f21458b = str;
            this.f21459c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30893g = ((AbstractC6485m) obj).mo30893g(this.f21458b, this.f21459c);
            m11836c(mo30893g);
            return mo30893g;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteHistory(");
            C22128a.m8719E0(this.f21458b, 2, m8728C, ",");
            return C22128a.m8566u(this.f21459c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$g */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$g.class */
    public static class C6467g extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21460b;

        /* renamed from: c */
        public final String f21461c;

        /* renamed from: d */
        public final String f21462d;

        public C6467g(C19852e c19852e, String str, String str2, String str3, C6461a c6461a) {
            super(c19852e);
            this.f21460b = str;
            this.f21461c = str2;
            this.f21462d = str3;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30882r = ((AbstractC6485m) obj).mo30882r(this.f21460b, this.f21461c, this.f21462d);
            m11836c(mo30882r);
            return mo30882r;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".editGroup(");
            C22128a.m8719E0(this.f21460b, 2, m8728C, ",");
            C22128a.m8719E0(this.f21461c, 1, m8728C, ",");
            return C22128a.m8587o2(this.f21462d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$h */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$h.class */
    public static class C6468h extends AbstractC19889v<AbstractC6485m, Void> {

        /* renamed from: b */
        public final String f21463b;

        public C6468h(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21463b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6485m) obj).mo30899a(this.f21463b);
            return null;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21463b, 2, C22128a.m8728C(".failHistoryLoadingInProgress("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$i */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$i.class */
    public static class C6469i extends AbstractC19889v<AbstractC6485m, AbstractC6487o> {

        /* renamed from: b */
        public final String f21464b;

        /* renamed from: c */
        public final String f21465c;

        public C6469i(C19852e c19852e, String str, String str2, C6461a c6461a) {
            super(c19852e);
            this.f21464b = str;
            this.f21465c = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC6487o> mo30880t = ((AbstractC6485m) obj).mo30880t(this.f21464b, this.f21465c);
            m11836c(mo30880t);
            return mo30880t;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getFilteredParticipants(");
            C22128a.m8719E0(this.f21464b, 2, m8728C, ",");
            return C22128a.m8587o2(this.f21465c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$j */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$j.class */
    public static class C6470j extends AbstractC19889v<AbstractC6485m, ImGroupInfo> {

        /* renamed from: b */
        public final String f21466b;

        public C6470j(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21466b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<ImGroupInfo> mo30877w = ((AbstractC6485m) obj).mo30877w(this.f21466b);
            m11836c(mo30877w);
            return mo30877w;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21466b, 2, C22128a.m8728C(".getGroupInfo("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$k */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$k.class */
    public static class C6471k extends AbstractC19889v<AbstractC6485m, AbstractC6487o> {

        /* renamed from: b */
        public final String f21467b;

        public C6471k(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21467b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC6487o> mo30883q = ((AbstractC6485m) obj).mo30883q(this.f21467b);
            m11836c(mo30883q);
            return mo30883q;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21467b, 2, C22128a.m8728C(".getImGroupParticipants("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$l */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$l.class */
    public static class C6472l extends AbstractC19889v<AbstractC6485m, k<List<C6226b>, List<C6226b>>> {

        /* renamed from: b */
        public final String f21468b;

        /* renamed from: c */
        public final long f21469c;

        public C6472l(C19852e c19852e, String str, long j, C6461a c6461a) {
            super(c19852e);
            this.f21468b = str;
            this.f21469c = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<k<List<C6226b>, List<C6226b>>> mo30886n = ((AbstractC6485m) obj).mo30886n(this.f21468b, this.f21469c);
            m11836c(mo30886n);
            return mo30886n;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getImGroupReports(");
            C22128a.m8719E0(this.f21468b, 2, m8728C, ",");
            return C22128a.m8665T1(this.f21469c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$m */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$m.class */
    public static class C6473m extends AbstractC19889v<AbstractC6485m, Integer> {

        /* renamed from: b */
        public final String f21470b;

        public C6473m(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21470b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo30888l = ((AbstractC6485m) obj).mo30888l(this.f21470b);
            m11836c(mo30888l);
            return mo30888l;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21470b, 2, C22128a.m8728C(".getParticipantCount("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$n */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$n.class */
    public static class C6474n extends AbstractC19889v<AbstractC6485m, List<Participant>> {

        /* renamed from: b */
        public final String f21471b;

        public C6474n(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21471b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<List<Participant>> mo30898b = ((AbstractC6485m) obj).mo30898b(this.f21471b);
            m11836c(mo30898b);
            return mo30898b;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21471b, 2, C22128a.m8728C(".getParticipants("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$o */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$o.class */
    public static class C6475o extends AbstractC19889v<AbstractC6485m, Integer> {
        public C6475o(C19852e c19852e, C6461a c6461a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo30891i = ((AbstractC6485m) obj).mo30891i();
            m11836c(mo30891i);
            return mo30891i;
        }

        public String toString() {
            return ".getPendingGroupInvitesCount()";
        }
    }

    /* renamed from: e.a.a.k.a.a.l$p */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$p.class */
    public static class C6476p extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21472b;

        /* renamed from: c */
        public final boolean f21473c;

        public C6476p(C19852e c19852e, String str, boolean z, C6461a c6461a) {
            super(c19852e);
            this.f21472b = str;
            this.f21473c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30878v = ((AbstractC6485m) obj).mo30878v(this.f21472b, this.f21473c);
            m11836c(mo30878v);
            return mo30878v;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".leaveGroup(");
            C22128a.m8719E0(this.f21472b, 2, m8728C, ",");
            return C22128a.m8566u(this.f21473c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$q */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$q.class */
    public static class C6477q extends AbstractC19889v<AbstractC6485m, Void> {

        /* renamed from: b */
        public final String f21474b;

        public C6477q(C19852e c19852e, String str, C6461a c6461a) {
            super(c19852e);
            this.f21474b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6485m) obj).mo30889k(this.f21474b);
            return null;
        }

        public String toString() {
            return C22128a.m8587o2(this.f21474b, 2, C22128a.m8728C(".loadImGroupHistory("), ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$r */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$r.class */
    public static class C6478r extends AbstractC19889v<AbstractC6485m, Void> {

        /* renamed from: b */
        public final String f21475b;

        /* renamed from: c */
        public final String f21476c;

        public C6478r(C19852e c19852e, String str, String str2, C6461a c6461a) {
            super(c19852e);
            this.f21475b = str;
            this.f21476c = str2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6485m) obj).mo30892h(this.f21475b, this.f21476c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markConversationRead(");
            C22128a.m8719E0(this.f21475b, 2, m8728C, ",");
            return C22128a.m8587o2(this.f21476c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$s */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$s.class */
    public static class C6479s extends AbstractC19889v<AbstractC6485m, Boolean> {
        public C6479s(C19852e c19852e, C6461a c6461a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30879u = ((AbstractC6485m) obj).mo30879u();
            m11836c(mo30879u);
            return mo30879u;
        }

        public String toString() {
            return ".notifyPendingInviteReminders()";
        }
    }

    /* renamed from: e.a.a.k.a.a.l$t */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$t.class */
    public static class C6480t extends AbstractC19889v<AbstractC6485m, Boolean> {
        public C6480t(C19852e c19852e, C6461a c6461a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30887m = ((AbstractC6485m) obj).mo30887m();
            m11836c(mo30887m);
            return mo30887m;
        }

        public String toString() {
            return ".recoverGroupsAndParticipantsIfNeeded()";
        }
    }

    /* renamed from: e.a.a.k.a.a.l$u */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$u.class */
    public static class C6481u extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21477b;

        /* renamed from: c */
        public final Participant f21478c;

        public C6481u(C19852e c19852e, String str, Participant participant, C6461a c6461a) {
            super(c19852e);
            this.f21477b = str;
            this.f21478c = participant;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30897c = ((AbstractC6485m) obj).mo30897c(this.f21477b, this.f21478c);
            m11836c(mo30897c);
            return mo30897c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".removeParticipant(");
            C22128a.m8719E0(this.f21477b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f21478c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.a.a.l$v */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$v.class */
    public static class C6482v extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21479b;

        /* renamed from: c */
        public final int f21480c;

        public C6482v(C19852e c19852e, String str, int i, C6461a c6461a) {
            super(c19852e);
            this.f21479b = str;
            this.f21480c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30885o = ((AbstractC6485m) obj).mo30885o(this.f21479b, this.f21480c);
            m11836c(mo30885o);
            return mo30885o;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".setGroupNotificationSettings(");
            C22128a.m8719E0(this.f21479b, 2, m8728C, ",");
            return C22128a.m8694K1(this.f21480c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$w */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$w.class */
    public static class C6483w extends AbstractC19889v<AbstractC6485m, Void> {

        /* renamed from: b */
        public final boolean f21481b;

        /* renamed from: c */
        public final boolean f21482c;

        public C6483w(C19852e c19852e, boolean z, boolean z2, C6461a c6461a) {
            super(c19852e);
            this.f21481b = z;
            this.f21482c = z2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6485m) obj).mo30896d(this.f21481b, this.f21482c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".triggerGroupRecovery(");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f21481b), 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f21482c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.a.a.l$x */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/l$x.class */
    public static class C6484x extends AbstractC19889v<AbstractC6485m, Boolean> {

        /* renamed from: b */
        public final String f21483b;

        /* renamed from: c */
        public final String f21484c;

        /* renamed from: d */
        public final int f21485d;

        public C6484x(C19852e c19852e, String str, String str2, int i, C6461a c6461a) {
            super(c19852e);
            this.f21483b = str;
            this.f21484c = str2;
            this.f21485d = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo30890j = ((AbstractC6485m) obj).mo30890j(this.f21483b, this.f21484c, this.f21485d);
            m11836c(mo30890j);
            return mo30890j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateRoles(");
            C22128a.m8719E0(this.f21483b, 2, m8728C, ",");
            C22128a.m8719E0(this.f21484c, 1, m8728C, ",");
            return C22128a.m8694K1(this.f21485d, 2, m8728C, ")");
        }
    }

    public C6460l(AbstractC19890w abstractC19890w) {
        this.f21451a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: a */
    public void mo30899a(String str) {
        this.f21451a.mo11835a(new C6468h(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: b */
    public AbstractC19891x<List<Participant>> mo30898b(String str) {
        return new C19895z(this.f21451a, new C6474n(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: c */
    public AbstractC19891x<Boolean> mo30897c(String str, Participant participant) {
        return new C19895z(this.f21451a, new C6481u(new C19852e(), str, participant, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: d */
    public void mo30896d(boolean z, boolean z2) {
        this.f21451a.mo11835a(new C6483w(new C19852e(), z, z2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo30895e(String str) {
        return new C19895z(this.f21451a, new C6462b(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo30894f(String str, List<? extends Participant> list) {
        return new C19895z(this.f21451a, new C6464d(new C19852e(), str, list, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: g */
    public AbstractC19891x<Boolean> mo30893g(String str, boolean z) {
        return new C19895z(this.f21451a, new C6466f(new C19852e(), str, z, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: h */
    public void mo30892h(String str, String str2) {
        this.f21451a.mo11835a(new C6478r(new C19852e(), str, str2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: i */
    public AbstractC19891x<Integer> mo30891i() {
        return new C19895z(this.f21451a, new C6475o(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: j */
    public AbstractC19891x<Boolean> mo30890j(String str, String str2, int i) {
        return new C19895z(this.f21451a, new C6484x(new C19852e(), str, str2, i, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: k */
    public void mo30889k(String str) {
        this.f21451a.mo11835a(new C6477q(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: l */
    public AbstractC19891x<Integer> mo30888l(String str) {
        return new C19895z(this.f21451a, new C6473m(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: m */
    public AbstractC19891x<Boolean> mo30887m() {
        return new C19895z(this.f21451a, new C6480t(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: n */
    public AbstractC19891x<k<List<C6226b>, List<C6226b>>> mo30886n(String str, long j) {
        return new C19895z(this.f21451a, new C6472l(new C19852e(), str, j, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: o */
    public AbstractC19891x<Boolean> mo30885o(String str, int i) {
        return new C19895z(this.f21451a, new C6482v(new C19852e(), str, i, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: p */
    public AbstractC19891x<Boolean> mo30884p() {
        return new C19895z(this.f21451a, new C6463c(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: q */
    public AbstractC19891x<AbstractC6487o> mo30883q(String str) {
        return new C19895z(this.f21451a, new C6471k(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: r */
    public AbstractC19891x<Boolean> mo30882r(String str, String str2, String str3) {
        return new C19895z(this.f21451a, new C6467g(new C19852e(), str, str2, str3, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: s */
    public AbstractC19891x<Participant> mo30881s(List<? extends Participant> list, String str, String str2) {
        return new C19895z(this.f21451a, new C6465e(new C19852e(), list, str, str2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: t */
    public AbstractC19891x<AbstractC6487o> mo30880t(String str, String str2) {
        return new C19895z(this.f21451a, new C6469i(new C19852e(), str, str2, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: u */
    public AbstractC19891x<Boolean> mo30879u() {
        return new C19895z(this.f21451a, new C6479s(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: v */
    public AbstractC19891x<Boolean> mo30878v(String str, boolean z) {
        return new C19895z(this.f21451a, new C6476p(new C19852e(), str, z, null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m
    /* renamed from: w */
    public AbstractC19891x<ImGroupInfo> mo30877w(String str) {
        return new C19895z(this.f21451a, new C6470j(new C19852e(), str, null));
    }
}
