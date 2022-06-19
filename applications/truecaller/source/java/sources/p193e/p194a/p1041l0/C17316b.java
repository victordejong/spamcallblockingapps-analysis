package p193e.p194a.p1041l0;

import android.os.CancellationSignal;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1045v.AbstractC17389a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.l0.b */
/* loaded from: classes6-dex2jar.jar:e/a/l0/b.class */
public final class C17316b implements AbstractC17348c {

    /* renamed from: a */
    public final AbstractC19890w f48564a;

    /* renamed from: e.a.l0.b$a0 */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$a0.class */
    public static class C17318a0 extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final String f48565b;

        public C17318a0(C19852e c19852e, String str, C17317a c17317a) {
            super(c19852e);
            this.f48565b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16250B(this.f48565b);
            return null;
        }

        public String toString() {
            return C22128a.m8587o2(this.f48565b, 1, C22128a.m8728C(".markMissedCallsAsSeen("), ")");
        }
    }

    /* renamed from: e.a.l0.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$b.class */
    public static class C17319b extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final CallRecording f48566b;

        public C17319b(C19852e c19852e, CallRecording callRecording, C17317a c17317a) {
            super(c19852e);
            this.f48566b = callRecording;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16233o(this.f48566b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addCallRecording(");
            m8728C.append(AbstractC19889v.m11837b(this.f48566b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$b0 */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$b0.class */
    public static class C17320b0 extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final long f48567b;

        public C17320b0(C19852e c19852e, long j, C17317a c17317a) {
            super(c19852e);
            this.f48567b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16241g(this.f48567b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f48567b, 2, C22128a.m8728C(".markMissedCallsAsShown("), ")");
        }
    }

    /* renamed from: e.a.l0.b$c */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$c.class */
    public static class C17321c extends AbstractC19889v<AbstractC17348c, Integer> {

        /* renamed from: b */
        public final List<HistoryEvent> f48568b;

        public C17321c(C19852e c19852e, List list, C17317a c17317a) {
            super(c19852e);
            this.f48568b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo16245c = ((AbstractC17348c) obj).mo16245c(this.f48568b);
            m11836c(mo16245c);
            return mo16245c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addFromBackup(");
            m8728C.append(AbstractC19889v.m11837b(this.f48568b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$c0 */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$c0.class */
    public static class C17322c0 extends AbstractC19889v<AbstractC17348c, Void> {
        public C17322c0(C19852e c19852e, C17317a c17317a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16223y();
            return null;
        }

        public String toString() {
            return ".performFullSync()";
        }
    }

    /* renamed from: e.a.l0.b$d */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$d.class */
    public static class C17323d extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final HistoryEvent f48569b;

        public C17323d(C19852e c19852e, HistoryEvent historyEvent, C17317a c17317a) {
            super(c19852e);
            this.f48569b = historyEvent;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16234n(this.f48569b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".add(");
            m8728C.append(AbstractC19889v.m11837b(this.f48569b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$d0 */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$d0.class */
    public static class C17324d0 extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final AbstractC17389a.C17390a f48570b;

        public C17324d0(C19852e c19852e, AbstractC17389a.C17390a c17390a, C17317a c17317a) {
            super(c19852e);
            this.f48570b = c17390a;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16239i(this.f48570b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performNextSyncBatch(");
            m8728C.append(AbstractC19889v.m11837b(this.f48570b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$e */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$e.class */
    public static class C17325e extends AbstractC19889v<AbstractC17348c, Boolean> {

        /* renamed from: b */
        public final HistoryEvent f48571b;

        public C17325e(C19852e c19852e, HistoryEvent historyEvent, C17317a c17317a) {
            super(c19852e);
            this.f48571b = historyEvent;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16249C = ((AbstractC17348c) obj).mo16249C(this.f48571b);
            m11836c(mo16249C);
            return mo16249C;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addVoipHistory(");
            m8728C.append(AbstractC19889v.m11837b(this.f48571b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$e0 */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$e0.class */
    public static class C17326e0 extends AbstractC19889v<AbstractC17348c, Void> {
        public C17326e0(C19852e c19852e, C17317a c17317a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16228t();
            return null;
        }

        public String toString() {
            return ".resetCallLogHistory()";
        }
    }

    /* renamed from: e.a.l0.b$f */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$f.class */
    public static class C17327f extends AbstractC19889v<AbstractC17348c, Boolean> {

        /* renamed from: b */
        public final HistoryEvent f48572b;

        /* renamed from: c */
        public final Contact f48573c;

        public C17327f(C19852e c19852e, HistoryEvent historyEvent, Contact contact, C17317a c17317a) {
            super(c19852e);
            this.f48572b = historyEvent;
            this.f48573c = contact;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16242f = ((AbstractC17348c) obj).mo16242f(this.f48572b, this.f48573c);
            m11836c(mo16242f);
            return mo16242f;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addWithContact(");
            m8728C.append(AbstractC19889v.m11837b(this.f48572b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f48573c, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$g */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$g.class */
    public static class C17328g extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final int f48574b;

        public C17328g(C19852e c19852e, int i, C17317a c17317a) {
            super(c19852e);
            this.f48574b = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16244d(this.f48574b);
            return null;
        }

        public String toString() {
            return C22128a.m8694K1(this.f48574b, 2, C22128a.m8728C(".clearSearchHistory("), ")");
        }
    }

    /* renamed from: e.a.l0.b$h */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$h.class */
    public static class C17329h extends AbstractC19889v<AbstractC17348c, Boolean> {

        /* renamed from: b */
        public final List<Long> f48575b;

        /* renamed from: c */
        public final List<Long> f48576c;

        /* renamed from: d */
        public final HistoryEventsScope f48577d;

        public C17329h(C19852e c19852e, List list, List list2, HistoryEventsScope historyEventsScope, C17317a c17317a) {
            super(c19852e);
            this.f48575b = list;
            this.f48576c = list2;
            this.f48577d = historyEventsScope;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16235m = ((AbstractC17348c) obj).mo16235m(this.f48575b, this.f48576c, this.f48577d);
            m11836c(mo16235m);
            return mo16235m;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteHistory(");
            m8728C.append(AbstractC19889v.m11837b(this.f48575b, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f48576c, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f48577d, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$i */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$i.class */
    public static class C17330i extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {
        public C17330i(C19852e c19852e, C17317a c17317a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16232p = ((AbstractC17348c) obj).mo16232p();
            m11836c(mo16232p);
            return mo16232p;
        }

        public String toString() {
            return ".getAllForWidget()";
        }
    }

    /* renamed from: e.a.l0.b$j */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$j.class */
    public static class C17331j extends AbstractC19889v<AbstractC17348c, HistoryEvent> {

        /* renamed from: b */
        public final String f48578b;

        public C17331j(C19852e c19852e, String str, C17317a c17317a) {
            super(c19852e);
            this.f48578b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<HistoryEvent> mo16225w = ((AbstractC17348c) obj).mo16225w(this.f48578b);
            m11836c(mo16225w);
            return mo16225w;
        }

        public String toString() {
            return C22128a.m8587o2(this.f48578b, 2, C22128a.m8728C(".getCallByEventId("), ")");
        }
    }

    /* renamed from: e.a.l0.b$k */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$k.class */
    public static class C17332k extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {

        /* renamed from: b */
        public final String f48579b;

        /* renamed from: c */
        public final Integer f48580c;

        public C17332k(C19852e c19852e, String str, Integer num, C17317a c17317a) {
            super(c19852e);
            this.f48579b = str;
            this.f48580c = num;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16247a = ((AbstractC17348c) obj).mo16247a(this.f48579b, this.f48580c);
            m11836c(mo16247a);
            return mo16247a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getCallHistoryByNumber(");
            C22128a.m8719E0(this.f48579b, 1, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f48580c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$l */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$l.class */
    public static class C17333l extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {

        /* renamed from: b */
        public final Contact f48581b;

        /* renamed from: c */
        public final Integer f48582c;

        public C17333l(C19852e c19852e, Contact contact, Integer num, C17317a c17317a) {
            super(c19852e);
            this.f48581b = contact;
            this.f48582c = num;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16246b = ((AbstractC17348c) obj).mo16246b(this.f48581b, this.f48582c);
            m11836c(mo16246b);
            return mo16246b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getCallHistoryForContact(");
            m8728C.append(AbstractC19889v.m11837b(this.f48581b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f48582c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$m */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$m.class */
    public static class C17334m extends AbstractC19889v<AbstractC17348c, List<HistoryEvent>> {

        /* renamed from: b */
        public final FilterType f48583b;

        /* renamed from: c */
        public final Integer f48584c;

        /* renamed from: d */
        public final CancellationSignal f48585d;

        public C17334m(C19852e c19852e, FilterType filterType, Integer num, CancellationSignal cancellationSignal, C17317a c17317a) {
            super(c19852e);
            this.f48583b = filterType;
            this.f48584c = num;
            this.f48585d = cancellationSignal;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<List<HistoryEvent>> mo16238j = ((AbstractC17348c) obj).mo16238j(this.f48583b, this.f48584c, this.f48585d);
            m11836c(mo16238j);
            return mo16238j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getCallHistoryList(");
            m8728C.append(AbstractC19889v.m11837b(this.f48583b, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f48584c, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f48585d, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$n */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$n.class */
    public static class C17335n extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {
        public C17335n(C19852e c19852e, C17317a c17317a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16229s = ((AbstractC17348c) obj).mo16229s();
            m11836c(mo16229s);
            return mo16229s;
        }

        public String toString() {
            return ".getCallHistory()";
        }
    }

    /* renamed from: e.a.l0.b$o */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$o.class */
    public static class C17336o extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {

        /* renamed from: b */
        public final String f48586b;

        /* renamed from: c */
        public final long f48587c;

        /* renamed from: d */
        public final long f48588d;

        /* renamed from: e */
        public final HistoryEventsScope f48589e;

        public C17336o(C19852e c19852e, String str, long j, long j2, HistoryEventsScope historyEventsScope, C17317a c17317a) {
            super(c19852e);
            this.f48586b = str;
            this.f48587c = j;
            this.f48588d = j2;
            this.f48589e = historyEventsScope;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16237k = ((AbstractC17348c) obj).mo16237k(this.f48586b, this.f48587c, this.f48588d, this.f48589e);
            m11836c(mo16237k);
            return mo16237k;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getHistoryForNumber(");
            C22128a.m8719E0(this.f48586b, 2, m8728C, ",");
            C22128a.m8605k0(this.f48587c, 2, m8728C, ",");
            C22128a.m8605k0(this.f48588d, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f48589e, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$p */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$p.class */
    public static class C17337p extends AbstractC19889v<AbstractC17348c, HistoryEvent> {

        /* renamed from: b */
        public final String f48590b;

        public C17337p(C19852e c19852e, String str, C17317a c17317a) {
            super(c19852e);
            this.f48590b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<HistoryEvent> mo16240h = ((AbstractC17348c) obj).mo16240h(this.f48590b);
            m11836c(mo16240h);
            return mo16240h;
        }

        public String toString() {
            return C22128a.m8587o2(this.f48590b, 1, C22128a.m8728C(".getLastMappedCallByNumber("), ")");
        }
    }

    /* renamed from: e.a.l0.b$q */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$q.class */
    public static class C17338q extends AbstractC19889v<AbstractC17348c, HistoryEvent> {

        /* renamed from: b */
        public final String f48591b;

        public C17338q(C19852e c19852e, String str, C17317a c17317a) {
            super(c19852e);
            this.f48591b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<HistoryEvent> mo16230r = ((AbstractC17348c) obj).mo16230r(this.f48591b);
            m11836c(mo16230r);
            return mo16230r;
        }

        public String toString() {
            return C22128a.m8587o2(this.f48591b, 2, C22128a.m8728C(".getLastMappedCallByTcId("), ")");
        }
    }

    /* renamed from: e.a.l0.b$r */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$r.class */
    public static class C17339r extends AbstractC19889v<AbstractC17348c, HistoryEvent> {

        /* renamed from: b */
        public final Contact f48592b;

        public C17339r(C19852e c19852e, Contact contact, C17317a c17317a) {
            super(c19852e);
            this.f48592b = contact;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<HistoryEvent> mo16248D = ((AbstractC17348c) obj).mo16248D(this.f48592b);
            m11836c(mo16248D);
            return mo16248D;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getLastOutGoingCallForContact(");
            m8728C.append(AbstractC19889v.m11837b(this.f48592b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$s */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$s.class */
    public static class C17340s extends AbstractC19889v<AbstractC17348c, Integer> {
        public C17340s(C19852e c19852e, C17317a c17317a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Integer> mo16236l = ((AbstractC17348c) obj).mo16236l();
            m11836c(mo16236l);
            return mo16236l;
        }

        public String toString() {
            return ".getMissedCallsCount()";
        }
    }

    /* renamed from: e.a.l0.b$t */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$t.class */
    public static class C17341t extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {

        /* renamed from: b */
        public final int f48593b;

        public C17341t(C19852e c19852e, int i, C17317a c17317a) {
            super(c19852e);
            this.f48593b = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16226v = ((AbstractC17348c) obj).mo16226v(this.f48593b);
            m11836c(mo16226v);
            return mo16226v;
        }

        public String toString() {
            return C22128a.m8694K1(this.f48593b, 2, C22128a.m8728C(".getMostCalledEvents("), ")");
        }
    }

    /* renamed from: e.a.l0.b$u */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$u.class */
    public static class C17342u extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {

        /* renamed from: b */
        public final long f48594b;

        public C17342u(C19852e c19852e, long j, C17317a c17317a) {
            super(c19852e);
            this.f48594b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16227u = ((AbstractC17348c) obj).mo16227u(this.f48594b);
            m11836c(mo16227u);
            return mo16227u;
        }

        public String toString() {
            return C22128a.m8665T1(this.f48594b, 2, C22128a.m8728C(".getNewMissedCalls("), ")");
        }
    }

    /* renamed from: e.a.l0.b$v */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$v.class */
    public static class C17343v extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {
        public C17343v(C19852e c19852e, C17317a c17317a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16222z = ((AbstractC17348c) obj).mo16222z();
            m11836c(mo16222z);
            return mo16222z;
        }

        public String toString() {
            return ".getNewMissedCalls()";
        }
    }

    /* renamed from: e.a.l0.b$w */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$w.class */
    public static class C17344w extends AbstractC19889v<AbstractC17348c, AbstractC17373b> {

        /* renamed from: b */
        public final int f48595b;

        public C17344w(C19852e c19852e, int i, C17317a c17317a) {
            super(c19852e);
            this.f48595b = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC17373b> mo16231q = ((AbstractC17348c) obj).mo16231q(this.f48595b);
            m11836c(mo16231q);
            return mo16231q;
        }

        public String toString() {
            return C22128a.m8694K1(this.f48595b, 2, C22128a.m8728C(".getSearchHistoryWithContact("), ")");
        }
    }

    /* renamed from: e.a.l0.b$x */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$x.class */
    public static class C17345x extends AbstractC19889v<AbstractC17348c, Boolean> {

        /* renamed from: b */
        public final Set<Long> f48596b;

        public C17345x(C19852e c19852e, Set set, C17317a c17317a) {
            super(c19852e);
            this.f48596b = set;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16251A = ((AbstractC17348c) obj).mo16251A(this.f48596b);
            m11836c(mo16251A);
            return mo16251A;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markAsSeenByHistoryIds(");
            m8728C.append(AbstractC19889v.m11837b(this.f48596b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$y */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$y.class */
    public static class C17346y extends AbstractC19889v<AbstractC17348c, Boolean> {

        /* renamed from: b */
        public final Set<Long> f48597b;

        public C17346y(C19852e c19852e, Set set, C17317a c17317a) {
            super(c19852e);
            this.f48597b = set;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo16224x = ((AbstractC17348c) obj).mo16224x(this.f48597b);
            m11836c(mo16224x);
            return mo16224x;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markAsSeen(");
            m8728C.append(AbstractC19889v.m11837b(this.f48597b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l0.b$z */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/b$z.class */
    public static class C17347z extends AbstractC19889v<AbstractC17348c, Void> {

        /* renamed from: b */
        public final long f48598b;

        public C17347z(C19852e c19852e, long j, C17317a c17317a) {
            super(c19852e);
            this.f48598b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC17348c) obj).mo16243e(this.f48598b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f48598b, 2, C22128a.m8728C(".markAsSeen("), ")");
        }
    }

    public C17316b(AbstractC19890w abstractC19890w) {
        this.f48564a = abstractC19890w;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: A */
    public AbstractC19891x<Boolean> mo16251A(Set<Long> set) {
        return new C19895z(this.f48564a, new C17345x(new C19852e(), set, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: B */
    public void mo16250B(String str) {
        this.f48564a.mo11835a(new C17318a0(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: C */
    public AbstractC19891x<Boolean> mo16249C(HistoryEvent historyEvent) {
        return new C19895z(this.f48564a, new C17325e(new C19852e(), historyEvent, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: D */
    public AbstractC19891x<HistoryEvent> mo16248D(Contact contact) {
        return new C19895z(this.f48564a, new C17339r(new C19852e(), contact, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: a */
    public AbstractC19891x<AbstractC17373b> mo16247a(String str, Integer num) {
        return new C19895z(this.f48564a, new C17332k(new C19852e(), str, num, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: b */
    public AbstractC19891x<AbstractC17373b> mo16246b(Contact contact, Integer num) {
        return new C19895z(this.f48564a, new C17333l(new C19852e(), contact, num, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: c */
    public AbstractC19891x<Integer> mo16245c(List<HistoryEvent> list) {
        return new C19895z(this.f48564a, new C17321c(new C19852e(), list, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: d */
    public void mo16244d(int i) {
        this.f48564a.mo11835a(new C17328g(new C19852e(), i, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: e */
    public void mo16243e(long j) {
        this.f48564a.mo11835a(new C17347z(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo16242f(HistoryEvent historyEvent, Contact contact) {
        return new C19895z(this.f48564a, new C17327f(new C19852e(), historyEvent, contact, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: g */
    public void mo16241g(long j) {
        this.f48564a.mo11835a(new C17320b0(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: h */
    public AbstractC19891x<HistoryEvent> mo16240h(String str) {
        return new C19895z(this.f48564a, new C17337p(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: i */
    public void mo16239i(AbstractC17389a.C17390a c17390a) {
        this.f48564a.mo11835a(new C17324d0(new C19852e(), c17390a, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: j */
    public AbstractC19891x<List<HistoryEvent>> mo16238j(FilterType filterType, Integer num, CancellationSignal cancellationSignal) {
        return new C19895z(this.f48564a, new C17334m(new C19852e(), filterType, num, cancellationSignal, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: k */
    public AbstractC19891x<AbstractC17373b> mo16237k(String str, long j, long j2, HistoryEventsScope historyEventsScope) {
        return new C19895z(this.f48564a, new C17336o(new C19852e(), str, j, j2, historyEventsScope, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: l */
    public AbstractC19891x<Integer> mo16236l() {
        return new C19895z(this.f48564a, new C17340s(new C19852e(), null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: m */
    public AbstractC19891x<Boolean> mo16235m(List<Long> list, List<Long> list2, HistoryEventsScope historyEventsScope) {
        return new C19895z(this.f48564a, new C17329h(new C19852e(), list, list2, historyEventsScope, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: n */
    public void mo16234n(HistoryEvent historyEvent) {
        this.f48564a.mo11835a(new C17323d(new C19852e(), historyEvent, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: o */
    public void mo16233o(CallRecording callRecording) {
        this.f48564a.mo11835a(new C17319b(new C19852e(), callRecording, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: p */
    public AbstractC19891x<AbstractC17373b> mo16232p() {
        return new C19895z(this.f48564a, new C17330i(new C19852e(), null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: q */
    public AbstractC19891x<AbstractC17373b> mo16231q(int i) {
        return new C19895z(this.f48564a, new C17344w(new C19852e(), i, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: r */
    public AbstractC19891x<HistoryEvent> mo16230r(String str) {
        return new C19895z(this.f48564a, new C17338q(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: s */
    public AbstractC19891x<AbstractC17373b> mo16229s() {
        return new C19895z(this.f48564a, new C17335n(new C19852e(), null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: t */
    public void mo16228t() {
        this.f48564a.mo11835a(new C17326e0(new C19852e(), null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: u */
    public AbstractC19891x<AbstractC17373b> mo16227u(long j) {
        return new C19895z(this.f48564a, new C17342u(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: v */
    public AbstractC19891x<AbstractC17373b> mo16226v(int i) {
        return new C19895z(this.f48564a, new C17341t(new C19852e(), i, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: w */
    public AbstractC19891x<HistoryEvent> mo16225w(String str) {
        return new C19895z(this.f48564a, new C17331j(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: x */
    public AbstractC19891x<Boolean> mo16224x(Set<Long> set) {
        return new C19895z(this.f48564a, new C17346y(new C19852e(), set, null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: y */
    public void mo16223y() {
        this.f48564a.mo11835a(new C17322c0(new C19852e(), null));
    }

    @Override // p193e.p194a.p1041l0.AbstractC17348c
    /* renamed from: z */
    public AbstractC19891x<AbstractC17373b> mo16222z() {
        return new C19895z(this.f48564a, new C17343v(new C19852e(), null));
    }
}
