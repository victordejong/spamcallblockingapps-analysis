package p193e.p194a.p195a.p231g;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.util.SparseBooleanArray;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import w3.b.a.b;
/* renamed from: e.a.a.g.l */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/l.class */
public final class C6163l implements AbstractC6233m {

    /* renamed from: a */
    public final AbstractC19890w f20759a;

    /* renamed from: e.a.a.g.l$a0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$a0.class */
    public static class C6165a0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20760b;

        public C6165a0(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20760b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31713L(this.f20760b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20760b, 2, C22128a.m8728C(".markMessageSeen("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$a1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$a1.class */
    public static class C6166a1 extends AbstractC19889v<AbstractC6233m, Void> {
        public C6166a1(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31693e0();
            return null;
        }

        public String toString() {
            return ".syncMessagesReadFlagIfIgnored()";
        }
    }

    /* renamed from: e.a.a.g.l$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$b.class */
    public static class C6167b extends AbstractC19889v<AbstractC6233m, Message> {

        /* renamed from: b */
        public final Message f20761b;

        public C6167b(C19852e c19852e, Message message, C6164a c6164a) {
            super(c19852e);
            this.f20761b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo31702Y = ((AbstractC6233m) obj).mo31702Y(this.f20761b);
            m11836c(mo31702Y);
            return mo31702Y;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addEditToWaitingQueue(");
            m8728C.append(AbstractC19889v.m11837b(this.f20761b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$b0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$b0.class */
    public static class C6168b0 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long[] f20762b;

        /* renamed from: c */
        public final boolean f20763c;

        public C6168b0(C19852e c19852e, long[] jArr, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20762b = jArr;
            this.f20763c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31668n = ((AbstractC6233m) obj).mo31668n(this.f20762b, this.f20763c);
            m11836c(mo31668n);
            return mo31668n;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markMessagesImportant(");
            m8728C.append(AbstractC19889v.m11837b(this.f20762b, 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f20763c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$b1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$b1.class */
    public static class C6169b1 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20764b;

        /* renamed from: c */
        public final int f20765c;

        public C6169b1(C19852e c19852e, long j, int i, C6164a c6164a) {
            super(c19852e);
            this.f20764b = j;
            this.f20765c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31666q = ((AbstractC6233m) obj).mo31666q(this.f20764b, this.f20765c);
            m11836c(mo31666q);
            return mo31666q;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateConversationLoadingMode(");
            C22128a.m8605k0(this.f20764b, 2, m8728C, ",");
            return C22128a.m8694K1(this.f20765c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$c.class */
    public static class C6170c extends AbstractC19889v<AbstractC6233m, Message> {

        /* renamed from: b */
        public final Message f20766b;

        /* renamed from: c */
        public final Participant[] f20767c;

        /* renamed from: d */
        public final int f20768d;

        public C6170c(C19852e c19852e, Message message, Participant[] participantArr, int i, C6164a c6164a) {
            super(c19852e);
            this.f20766b = message;
            this.f20767c = participantArr;
            this.f20768d = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo31696c = ((AbstractC6233m) obj).mo31696c(this.f20766b, this.f20767c, this.f20768d);
            m11836c(mo31696c);
            return mo31696c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".addToWaitingQueue(");
            m8728C.append(AbstractC19889v.m11837b(this.f20766b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20767c, 1));
            m8728C.append(",");
            return C22128a.m8694K1(this.f20768d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$c0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$c0.class */
    public static class C6171c0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final String f20769b;

        /* renamed from: c */
        public final boolean f20770c;

        /* renamed from: d */
        public final boolean f20771d;

        /* renamed from: e */
        public final long[] f20772e;

        /* renamed from: f */
        public final long[] f20773f;

        public C6171c0(C19852e c19852e, String str, boolean z, boolean z2, long[] jArr, long[] jArr2, C6164a c6164a) {
            super(c19852e);
            this.f20769b = str;
            this.f20770c = z;
            this.f20771d = z2;
            this.f20772e = jArr;
            this.f20773f = jArr2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31706U(this.f20769b, this.f20770c, this.f20771d, this.f20772e, this.f20773f);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markMessagesRead(");
            C22128a.m8719E0(this.f20769b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20770c), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20771d), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20772e, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20773f, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$c1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$c1.class */
    public static class C6172c1 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20774b;

        /* renamed from: c */
        public final ContentValues f20775c;

        public C6172c1(C19852e c19852e, long j, ContentValues contentValues, C6164a c6164a) {
            super(c19852e);
            this.f20774b = j;
            this.f20775c = contentValues;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31669l = ((AbstractC6233m) obj).mo31669l(this.f20774b, this.f20775c);
            m11836c(mo31669l);
            return mo31669l;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateConversation(");
            C22128a.m8605k0(this.f20774b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f20775c, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$d */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$d.class */
    public static class C6173d extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final Conversation[] f20776b;

        /* renamed from: c */
        public final boolean f20777c;

        public C6173d(C19852e c19852e, Conversation[] conversationArr, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20776b = conversationArr;
            this.f20777c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31670f = ((AbstractC6233m) obj).mo31670f(this.f20776b, this.f20777c);
            m11836c(mo31670f);
            return mo31670f;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".archiveConversations(");
            m8728C.append(AbstractC19889v.m11837b(this.f20776b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f20777c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$d0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$d0.class */
    public static class C6174d0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long[] f20778b;

        public C6174d0(C19852e c19852e, long[] jArr, C6164a c6164a) {
            super(c19852e);
            this.f20778b = jArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31690g0(this.f20778b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markMessagesSeen(");
            m8728C.append(AbstractC19889v.m11837b(this.f20778b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$d1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$d1.class */
    public static class C6175d1 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final Message f20779b;

        /* renamed from: c */
        public final long f20780c;

        public C6175d1(C19852e c19852e, Message message, long j, C6164a c6164a) {
            super(c19852e);
            this.f20779b = message;
            this.f20780c = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31717D = ((AbstractC6233m) obj).mo31717D(this.f20779b, this.f20780c);
            m11836c(mo31717D);
            return mo31717D;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateMessageDate(");
            m8728C.append(AbstractC19889v.m11837b(this.f20779b, 1));
            m8728C.append(",");
            return C22128a.m8665T1(this.f20780c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$e */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$e.class */
    public static class C6176e extends AbstractC19889v<AbstractC6233m, Void> {
        public C6176e(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31692f0();
            return null;
        }

        public String toString() {
            return ".classifyUnclassifiedIncomingMessages()";
        }
    }

    /* renamed from: e.a.a.g.l$e0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$e0.class */
    public static class C6177e0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final List<Long> f20781b;

        public C6177e0(C19852e c19852e, List list, C6164a c6164a) {
            super(c19852e);
            this.f20781b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31679E(this.f20781b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markMessagesToNudgeAsNotified(");
            m8728C.append(AbstractC19889v.m11837b(this.f20781b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$e1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$e1.class */
    public static class C6178e1 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20782b;

        /* renamed from: c */
        public final long f20783c;

        public C6178e1(C19852e c19852e, long j, long j2, C6164a c6164a) {
            super(c19852e);
            this.f20782b = j;
            this.f20783c = j2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31663u = ((AbstractC6233m) obj).mo31663u(this.f20782b, this.f20783c);
            m11836c(mo31663u);
            return mo31663u;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateMessageScheduleDate(");
            C22128a.m8605k0(this.f20782b, 2, m8728C, ",");
            return C22128a.m8665T1(this.f20783c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$f */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$f.class */
    public static class C6179f extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20784b;

        public C6179f(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20784b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31661y = ((AbstractC6233m) obj).mo31661y(this.f20784b);
            m11836c(mo31661y);
            return mo31661y;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20784b, 2, C22128a.m8728C(".clearEditState("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$f0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$f0.class */
    public static class C6180f0 extends AbstractC19889v<AbstractC6233m, Void> {
        public C6180f0(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31691g();
            return null;
        }

        public String toString() {
            return ".markPendingMessagesAsRead()";
        }
    }

    /* renamed from: e.a.a.g.l$f1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$f1.class */
    public static class C6181f1 extends AbstractC19889v<AbstractC6233m, Message> {

        /* renamed from: b */
        public final Message f20785b;

        public C6181f1(C19852e c19852e, Message message, C6164a c6164a) {
            super(c19852e);
            this.f20785b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo31681x = ((AbstractC6233m) obj).mo31681x(this.f20785b);
            m11836c(mo31681x);
            return mo31681x;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateMessageStatusToFailed(");
            m8728C.append(AbstractC19889v.m11837b(this.f20785b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$g */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$g.class */
    public static class C6182g extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final long f20786b;

        /* renamed from: c */
        public final int f20787c;

        /* renamed from: d */
        public final int f20788d;

        /* renamed from: e */
        public final boolean f20789e;

        /* renamed from: f */
        public final boolean f20790f;

        public C6182g(C19852e c19852e, long j, int i, int i2, boolean z, boolean z2, C6164a c6164a) {
            super(c19852e);
            this.f20786b = j;
            this.f20787c = i;
            this.f20788d = i2;
            this.f20789e = z;
            this.f20790f = z2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31683t = ((AbstractC6233m) obj).mo31683t(this.f20786b, this.f20787c, this.f20788d, this.f20789e, this.f20790f);
            m11836c(mo31683t);
            return mo31683t;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteConversation(");
            C22128a.m8605k0(this.f20786b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20787c), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20788d), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20789e), 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f20790f, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$g0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$g0.class */
    public static class C6183g0 extends AbstractC19889v<AbstractC6233m, Void> {
        public C6183g0(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31678G();
            return null;
        }

        public String toString() {
            return ".markPromotionalMessagesAsSpam()";
        }
    }

    /* renamed from: e.a.a.g.l$g1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$g1.class */
    public static class C6184g1 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final Message[] f20791b;

        /* renamed from: c */
        public final int f20792c;

        public C6184g1(C19852e c19852e, Message[] messageArr, int i, C6164a c6164a) {
            super(c19852e);
            this.f20791b = messageArr;
            this.f20792c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31710O(this.f20791b, this.f20792c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateMessagesCategory(");
            m8728C.append(AbstractC19889v.m11837b(this.f20791b, 1));
            m8728C.append(",");
            return C22128a.m8694K1(this.f20792c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$h */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$h.class */
    public static class C6185h extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final Conversation[] f20793b;

        /* renamed from: c */
        public final boolean f20794c;

        public C6185h(C19852e c19852e, Conversation[] conversationArr, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20793b = conversationArr;
            this.f20794c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31687j = ((AbstractC6233m) obj).mo31687j(this.f20793b, this.f20794c);
            m11836c(mo31687j);
            return mo31687j;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteConversations(");
            m8728C.append(AbstractC19889v.m11837b(this.f20793b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f20794c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$h0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$h0.class */
    public static class C6186h0 extends AbstractC19889v<AbstractC6233m, Void> {
        public C6186h0(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31611i();
            return null;
        }

        public String toString() {
            return ".notifyMessages()";
        }
    }

    /* renamed from: e.a.a.g.l$h1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$h1.class */
    public static class C6187h1 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final Message[] f20795b;

        /* renamed from: c */
        public final int f20796c;

        public C6187h1(C19852e c19852e, Message[] messageArr, int i, C6164a c6164a) {
            super(c19852e);
            this.f20795b = messageArr;
            this.f20796c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31716F(this.f20795b, this.f20796c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".updateMessagesSmsType(");
            m8728C.append(AbstractC19889v.m11837b(this.f20795b, 1));
            m8728C.append(",");
            return C22128a.m8694K1(this.f20796c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$i */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$i.class */
    public static class C6188i extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final boolean f20797b;

        /* renamed from: c */
        public final List<String> f20798c;

        public C6188i(C19852e c19852e, boolean z, List list, C6164a c6164a) {
            super(c19852e);
            this.f20797b = z;
            this.f20798c = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31676K = ((AbstractC6233m) obj).mo31676K(this.f20797b, this.f20798c);
            m11836c(mo31676K);
            return mo31676K;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteImMessages(");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20797b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20798c, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$i0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$i0.class */
    public static class C6189i0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final boolean f20799b;

        /* renamed from: c */
        public final Set<Integer> f20800c;

        public C6189i0(C19852e c19852e, boolean z, Set set, C6164a c6164a) {
            super(c19852e);
            this.f20799b = z;
            this.f20800c = set;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31705V(this.f20799b, this.f20800c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performFullSync(");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20799b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20800c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$i1 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$i1.class */
    public static class C6190i1 extends AbstractC19889v<AbstractC6233m, Boolean> {
        public C6190i1(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31671e = ((AbstractC6233m) obj).mo31671e();
            m11836c(mo31671e);
            return mo31671e;
        }

        public String toString() {
            return ".waitUntilMessagesProcessed()";
        }
    }

    /* renamed from: e.a.a.g.l$j */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$j.class */
    public static class C6191j extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final long f20801b;

        public C6191j(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20801b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31708Q = ((AbstractC6233m) obj).mo31708Q(this.f20801b);
            m11836c(mo31708Q);
            return mo31708Q;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20801b, 2, C22128a.m8728C(".deleteMessage("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$j0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$j0.class */
    public static class C6192j0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final boolean f20802b;

        public C6192j0(C19852e c19852e, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20802b = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31698b(this.f20802b);
            return null;
        }

        public String toString() {
            return C22128a.m8566u(this.f20802b, 2, C22128a.m8728C(".performFullSync("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$k */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$k.class */
    public static class C6193k extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final boolean f20803b;

        /* renamed from: c */
        public final List<Message> f20804c;

        public C6193k(C19852e c19852e, boolean z, List list, C6164a c6164a) {
            super(c19852e);
            this.f20803b = z;
            this.f20804c = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31660z = ((AbstractC6233m) obj).mo31660z(this.f20803b, this.f20804c);
            m11836c(mo31660z);
            return mo31660z;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".deleteMessages(");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20803b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20804c, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$k0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$k0.class */
    public static class C6194k0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final AbstractC6251z f20805b;

        /* renamed from: c */
        public final int f20806c;

        public C6194k0(C19852e c19852e, AbstractC6251z abstractC6251z, int i, C6164a c6164a) {
            super(c19852e);
            this.f20805b = abstractC6251z;
            this.f20806c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31709P(this.f20805b, this.f20806c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performNextSyncBatch(");
            m8728C.append(AbstractC19889v.m11837b(this.f20805b, 1));
            m8728C.append(",");
            return C22128a.m8694K1(this.f20806c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$l */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$l.class */
    public static class C6195l extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20807b;

        public C6195l(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20807b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31680A = ((AbstractC6233m) obj).mo31680A(this.f20807b);
            m11836c(mo31680A);
            return mo31680A;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20807b, 2, C22128a.m8728C(".deleteScheduledMessages("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$l0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$l0.class */
    public static class C6196l0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final boolean f20808b;

        /* renamed from: c */
        public final Set<Integer> f20809c;

        public C6196l0(C19852e c19852e, boolean z, Set set, C6164a c6164a) {
            super(c19852e);
            this.f20808b = z;
            this.f20809c = set;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31686k(this.f20808b, this.f20809c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performPartialSync(");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20808b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20809c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$m */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$m.class */
    public static class C6197m extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final String f20810b;

        public C6197m(C19852e c19852e, String str, C6164a c6164a) {
            super(c19852e);
            this.f20810b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31704W = ((AbstractC6233m) obj).mo31704W(this.f20810b);
            m11836c(mo31704W);
            return mo31704W;
        }

        public String toString() {
            return C22128a.m8587o2(this.f20810b, 2, C22128a.m8728C(".doesRawIdExist("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$m0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$m0.class */
    public static class C6198m0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final int f20811b;

        /* renamed from: c */
        public final b f20812c;

        /* renamed from: d */
        public final boolean f20813d;

        public C6198m0(C19852e c19852e, int i, b bVar, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20811b = i;
            this.f20812c = bVar;
            this.f20813d = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31695d(this.f20811b, this.f20812c, this.f20813d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".performPartialSync(");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20811b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20812c, 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f20813d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$n */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$n.class */
    public static class C6199n extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final Message f20814b;

        public C6199n(C19852e c19852e, Message message, C6164a c6164a) {
            super(c19852e);
            this.f20814b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31700a = ((AbstractC6233m) obj).mo31700a(this.f20814b);
            m11836c(mo31700a);
            return mo31700a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".enqueueFailedMessageForSending(");
            m8728C.append(AbstractC19889v.m11837b(this.f20814b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$n0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$n0.class */
    public static class C6200n0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final boolean f20815b;

        public C6200n0(C19852e c19852e, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20815b = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31707T(this.f20815b);
            return null;
        }

        public String toString() {
            return C22128a.m8566u(this.f20815b, 2, C22128a.m8728C(".performPartialSync("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$o */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$o.class */
    public static class C6201o extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final b f20816b;

        public C6201o(C19852e c19852e, b bVar, C6164a c6164a) {
            super(c19852e);
            this.f20816b = bVar;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31711N = ((AbstractC6233m) obj).mo31711N(this.f20816b);
            m11836c(mo31711N);
            return mo31711N;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".enqueueMessagesForSending(");
            m8728C.append(AbstractC19889v.m11837b(this.f20816b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$o0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$o0.class */
    public static class C6202o0 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final Conversation[] f20817b;

        /* renamed from: c */
        public final boolean f20818c;

        public C6202o0(C19852e c19852e, Conversation[] conversationArr, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20817b = conversationArr;
            this.f20818c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31674R = ((AbstractC6233m) obj).mo31674R(this.f20817b, this.f20818c);
            m11836c(mo31674R);
            return mo31674R;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".pinConversations(");
            m8728C.append(AbstractC19889v.m11837b(this.f20817b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f20818c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$p */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$p.class */
    public static class C6203p extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final ArrayList<ContentProviderOperation> f20819b;

        public C6203p(C19852e c19852e, ArrayList arrayList, C6164a c6164a) {
            super(c19852e);
            this.f20819b = arrayList;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31665r = ((AbstractC6233m) obj).mo31665r(this.f20819b);
            m11836c(mo31665r);
            return mo31665r;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".executeContentProviderOperations(");
            m8728C.append(AbstractC19889v.m11837b(this.f20819b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$p0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$p0.class */
    public static class C6204p0 extends AbstractC19889v<AbstractC6233m, Message> {

        /* renamed from: b */
        public final Message f20820b;

        /* renamed from: c */
        public final int f20821c;

        /* renamed from: d */
        public final String f20822d;

        public C6204p0(C19852e c19852e, Message message, int i, String str, C6164a c6164a) {
            super(c19852e);
            this.f20820b = message;
            this.f20821c = i;
            this.f20822d = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo31682w = ((AbstractC6233m) obj).mo31682w(this.f20820b, this.f20821c, this.f20822d);
            m11836c(mo31682w);
            return mo31682w;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".prepareMessageToResend(");
            m8728C.append(AbstractC19889v.m11837b(this.f20820b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20821c), 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f20822d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$q */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$q.class */
    public static class C6205q extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20823b;

        /* renamed from: c */
        public final int f20824c;

        public C6205q(C19852e c19852e, long j, int i, C6164a c6164a) {
            super(c19852e);
            this.f20823b = j;
            this.f20824c = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31677H = ((AbstractC6233m) obj).mo31677H(this.f20823b, this.f20824c);
            m11836c(mo31677H);
            return mo31677H;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".failScheduledMessage(");
            C22128a.m8605k0(this.f20823b, 2, m8728C, ",");
            return C22128a.m8694K1(this.f20824c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$q0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$q0.class */
    public static class C6206q0 extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final long f20825b;

        public C6206q0(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20825b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31689h = ((AbstractC6233m) obj).mo31689h(this.f20825b);
            m11836c(mo31689h);
            return mo31689h;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20825b, 2, C22128a.m8728C(".removeDraftMessage("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$r */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$r.class */
    public static class C6207r extends AbstractC19889v<AbstractC6233m, Conversation> {

        /* renamed from: b */
        public final b f20826b;

        public C6207r(C19852e c19852e, b bVar, C6164a c6164a) {
            super(c19852e);
            this.f20826b = bVar;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Conversation> mo31685m = ((AbstractC6233m) obj).mo31685m(this.f20826b);
            m11836c(mo31685m);
            return mo31685m;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".fetchLatestConversation(");
            m8728C.append(AbstractC19889v.m11837b(this.f20826b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$r0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$r0.class */
    public static class C6208r0 extends AbstractC19889v<AbstractC6233m, Draft> {

        /* renamed from: b */
        public final Message f20827b;

        public C6208r0(C19852e c19852e, Message message, C6164a c6164a) {
            super(c19852e);
            this.f20827b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Draft> mo31703X = ((AbstractC6233m) obj).mo31703X(this.f20827b);
            m11836c(mo31703X);
            return mo31703X;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".removeFromWaitingQueue(");
            m8728C.append(AbstractC19889v.m11837b(this.f20827b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$s */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$s.class */
    public static class C6209s extends AbstractC19889v<AbstractC6233m, Message> {

        /* renamed from: b */
        public final long f20828b;

        public C6209s(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20828b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo31715I = ((AbstractC6233m) obj).mo31715I(this.f20828b);
            m11836c(mo31715I);
            return mo31715I;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20828b, 2, C22128a.m8728C(".fetchMessage("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$s0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$s0.class */
    public static class C6210s0 extends AbstractC19889v<AbstractC6233m, Void> {
        public C6210s0(C19852e c19852e, C6164a c6164a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31697b0();
            return null;
        }

        public String toString() {
            return ".resetMessageGroupIds()";
        }
    }

    /* renamed from: e.a.a.g.l$t */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$t.class */
    public static class C6211t extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20829b;

        public C6211t(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20829b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31699a0(this.f20829b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20829b, 2, C22128a.m8728C(".markConversationActionsDismissed("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$t0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$t0.class */
    public static class C6212t0 extends AbstractC19889v<AbstractC6233m, Message> {

        /* renamed from: b */
        public final Message f20830b;

        /* renamed from: c */
        public final long f20831c;

        /* renamed from: d */
        public final boolean f20832d;

        public C6212t0(C19852e c19852e, Message message, long j, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20830b = message;
            this.f20831c = j;
            this.f20832d = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Message> mo31714J = ((AbstractC6233m) obj).mo31714J(this.f20830b, this.f20831c, this.f20832d);
            m11836c(mo31714J);
            return mo31714J;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".retryMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f20830b, 1));
            m8728C.append(",");
            C22128a.m8605k0(this.f20831c, 2, m8728C, ",");
            return C22128a.m8566u(this.f20832d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$u */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$u.class */
    public static class C6213u extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20833b;

        /* renamed from: c */
        public final long[] f20834c;

        /* renamed from: d */
        public final String f20835d;

        public C6213u(C19852e c19852e, long j, long[] jArr, String str, C6164a c6164a) {
            super(c19852e);
            this.f20833b = j;
            this.f20834c = jArr;
            this.f20835d = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31664s(this.f20833b, this.f20834c, this.f20835d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markConversationAsReplied(");
            C22128a.m8605k0(this.f20833b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f20834c, 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f20835d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$u0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$u0.class */
    public static class C6214u0 extends AbstractC19889v<AbstractC6233m, Draft> {

        /* renamed from: b */
        public final Draft f20836b;

        /* renamed from: c */
        public final String f20837c;

        public C6214u0(C19852e c19852e, Draft draft, String str, C6164a c6164a) {
            super(c19852e);
            this.f20836b = draft;
            this.f20837c = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Draft> mo31719B = ((AbstractC6233m) obj).mo31719B(this.f20836b, this.f20837c);
            m11836c(mo31719B);
            return mo31719B;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".saveDraft(");
            m8728C.append(AbstractC19889v.m11837b(this.f20836b, 1));
            m8728C.append(",");
            return C22128a.m8587o2(this.f20837c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$v */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$v.class */
    public static class C6215v extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20838b;

        /* renamed from: c */
        public final int f20839c;

        /* renamed from: d */
        public final int f20840d;

        /* renamed from: e */
        public final boolean f20841e;

        /* renamed from: f */
        public final String f20842f;

        public C6215v(C19852e c19852e, long j, int i, int i2, boolean z, String str, C6164a c6164a) {
            super(c19852e);
            this.f20838b = j;
            this.f20839c = i;
            this.f20840d = i2;
            this.f20841e = z;
            this.f20842f = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31688h0(this.f20838b, this.f20839c, this.f20840d, this.f20841e, this.f20842f);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markConversationRead(");
            C22128a.m8605k0(this.f20838b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20839c), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20840d), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f20841e), 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f20842f, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$v0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$v0.class */
    public static class C6216v0 extends AbstractC19889v<AbstractC6233m, Long> {

        /* renamed from: b */
        public final Message f20843b;

        /* renamed from: c */
        public final Participant[] f20844c;

        /* renamed from: d */
        public final long f20845d;

        public C6216v0(C19852e c19852e, Message message, Participant[] participantArr, long j, C6164a c6164a) {
            super(c19852e);
            this.f20843b = message;
            this.f20844c = participantArr;
            this.f20845d = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Long> mo31662v = ((AbstractC6233m) obj).mo31662v(this.f20843b, this.f20844c, this.f20845d);
            m11836c(mo31662v);
            return mo31662v;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".saveScheduledMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f20843b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20844c, 2));
            m8728C.append(",");
            return C22128a.m8665T1(this.f20845d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$w */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$w.class */
    public static class C6217w extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20846b;

        /* renamed from: c */
        public final int f20847c;

        /* renamed from: d */
        public final int f20848d;

        public C6217w(C19852e c19852e, long j, int i, int i2, C6164a c6164a) {
            super(c19852e);
            this.f20846b = j;
            this.f20847c = i;
            this.f20848d = i2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31672c0(this.f20846b, this.f20847c, this.f20848d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markConversationUnread(");
            C22128a.m8605k0(this.f20846b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20847c), 2));
            m8728C.append(",");
            return C22128a.m8694K1(this.f20848d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$w0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$w0.class */
    public static class C6218w0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final int f20849b;

        /* renamed from: c */
        public final b f20850c;

        public C6218w0(C19852e c19852e, int i, b bVar, C6164a c6164a) {
            super(c19852e);
            this.f20849b = i;
            this.f20850c = bVar;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31684p(this.f20849b, this.f20850c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendNextPendingMessage(");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f20849b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20850c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.g.l$x */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$x.class */
    public static class C6219x extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final Conversation[] f20851b;

        /* renamed from: c */
        public final Long f20852c;

        /* renamed from: d */
        public final String f20853d;

        public C6219x(C19852e c19852e, Conversation[] conversationArr, Long l, String str, C6164a c6164a) {
            super(c19852e);
            this.f20851b = conversationArr;
            this.f20852c = l;
            this.f20853d = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31701Z = ((AbstractC6233m) obj).mo31701Z(this.f20851b, this.f20852c, this.f20853d);
            m11836c(mo31701Z);
            return mo31701Z;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markConversationsRead(");
            m8728C.append(AbstractC19889v.m11837b(this.f20851b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f20852c, 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f20853d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$x0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$x0.class */
    public static class C6220x0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20854b;

        public C6220x0(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20854b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31667o(this.f20854b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20854b, 2, C22128a.m8728C(".setNudgeToSendDone("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$y */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$y.class */
    public static class C6221y extends AbstractC19889v<AbstractC6233m, SparseBooleanArray> {

        /* renamed from: b */
        public final long[] f20855b;

        /* renamed from: c */
        public final String f20856c;

        /* renamed from: d */
        public final boolean f20857d;

        public C6221y(C19852e c19852e, long[] jArr, String str, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20855b = jArr;
            this.f20856c = str;
            this.f20857d = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<SparseBooleanArray> mo31712M = ((AbstractC6233m) obj).mo31712M(this.f20855b, this.f20856c, this.f20857d);
            m11836c(mo31712M);
            return mo31712M;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".markConversationsRead(");
            m8728C.append(AbstractC19889v.m11837b(this.f20855b, 2));
            m8728C.append(",");
            C22128a.m8719E0(this.f20856c, 2, m8728C, ",");
            return C22128a.m8566u(this.f20857d, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.g.l$y0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$y0.class */
    public static class C6222y0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final long f20858b;

        public C6222y0(C19852e c19852e, long j, C6164a c6164a) {
            super(c19852e);
            this.f20858b = j;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31673S(this.f20858b);
            return null;
        }

        public String toString() {
            return C22128a.m8665T1(this.f20858b, 2, C22128a.m8728C(".setQuickActionSent("), ")");
        }
    }

    /* renamed from: e.a.a.g.l$z */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$z.class */
    public static class C6223z extends AbstractC19889v<AbstractC6233m, Boolean> {

        /* renamed from: b */
        public final Conversation[] f20859b;

        public C6223z(C19852e c19852e, Conversation[] conversationArr, C6164a c6164a) {
            super(c19852e);
            this.f20859b = conversationArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo31718C = ((AbstractC6233m) obj).mo31718C(this.f20859b);
            m11836c(mo31718C);
            return mo31718C;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C(".markConversationsUnread("), AbstractC19889v.m11837b(this.f20859b, 1), ")");
        }
    }

    /* renamed from: e.a.a.g.l$z0 */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/l$z0.class */
    public static class C6224z0 extends AbstractC19889v<AbstractC6233m, Void> {

        /* renamed from: b */
        public final Message f20860b;

        /* renamed from: c */
        public final boolean f20861c;

        public C6224z0(C19852e c19852e, Message message, boolean z, C6164a c6164a) {
            super(c19852e);
            this.f20860b = message;
            this.f20861c = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6233m) obj).mo31694d0(this.f20860b, this.f20861c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".storeMessage(");
            m8728C.append(AbstractC19889v.m11837b(this.f20860b, 1));
            m8728C.append(",");
            return C22128a.m8566u(this.f20861c, 2, m8728C, ")");
        }
    }

    public C6163l(AbstractC19890w abstractC19890w) {
        this.f20759a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: A */
    public AbstractC19891x<Boolean> mo31680A(long j) {
        return new C19895z(this.f20759a, new C6195l(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: B */
    public AbstractC19891x<Draft> mo31719B(Draft draft, String str) {
        return new C19895z(this.f20759a, new C6214u0(new C19852e(), draft, str, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: C */
    public AbstractC19891x<Boolean> mo31718C(Conversation[] conversationArr) {
        return new C19895z(this.f20759a, new C6223z(new C19852e(), conversationArr, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: D */
    public AbstractC19891x<Boolean> mo31717D(Message message, long j) {
        return new C19895z(this.f20759a, new C6175d1(new C19852e(), message, j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: E */
    public void mo31679E(List<Long> list) {
        this.f20759a.mo11835a(new C6177e0(new C19852e(), list, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: F */
    public void mo31716F(Message[] messageArr, int i) {
        this.f20759a.mo11835a(new C6187h1(new C19852e(), messageArr, i, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: G */
    public void mo31678G() {
        this.f20759a.mo11835a(new C6183g0(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: H */
    public AbstractC19891x<Boolean> mo31677H(long j, int i) {
        return new C19895z(this.f20759a, new C6205q(new C19852e(), j, i, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: I */
    public AbstractC19891x<Message> mo31715I(long j) {
        return new C19895z(this.f20759a, new C6209s(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: J */
    public AbstractC19891x<Message> mo31714J(Message message, long j, boolean z) {
        return new C19895z(this.f20759a, new C6212t0(new C19852e(), message, j, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: K */
    public AbstractC19891x<SparseBooleanArray> mo31676K(boolean z, List<String> list) {
        return new C19895z(this.f20759a, new C6188i(new C19852e(), z, list, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: L */
    public void mo31713L(long j) {
        this.f20759a.mo11835a(new C6165a0(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: M */
    public AbstractC19891x<SparseBooleanArray> mo31712M(long[] jArr, String str, boolean z) {
        return new C19895z(this.f20759a, new C6221y(new C19852e(), jArr, str, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: N */
    public AbstractC19891x<Boolean> mo31711N(b bVar) {
        return new C19895z(this.f20759a, new C6201o(new C19852e(), bVar, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: O */
    public void mo31710O(Message[] messageArr, int i) {
        this.f20759a.mo11835a(new C6184g1(new C19852e(), messageArr, i, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: P */
    public void mo31709P(AbstractC6251z abstractC6251z, int i) {
        this.f20759a.mo11835a(new C6194k0(new C19852e(), abstractC6251z, i, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: Q */
    public AbstractC19891x<SparseBooleanArray> mo31708Q(long j) {
        return new C19895z(this.f20759a, new C6191j(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: R */
    public AbstractC19891x<Boolean> mo31674R(Conversation[] conversationArr, boolean z) {
        return new C19895z(this.f20759a, new C6202o0(new C19852e(), conversationArr, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: S */
    public void mo31673S(long j) {
        this.f20759a.mo11835a(new C6222y0(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: T */
    public void mo31707T(boolean z) {
        this.f20759a.mo11835a(new C6200n0(new C19852e(), z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: U */
    public void mo31706U(String str, boolean z, boolean z2, long[] jArr, long[] jArr2) {
        this.f20759a.mo11835a(new C6171c0(new C19852e(), str, z, z2, jArr, jArr2, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: V */
    public void mo31705V(boolean z, Set<Integer> set) {
        this.f20759a.mo11835a(new C6189i0(new C19852e(), z, set, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: W */
    public AbstractC19891x<Boolean> mo31704W(String str) {
        return new C19895z(this.f20759a, new C6197m(new C19852e(), str, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: X */
    public AbstractC19891x<Draft> mo31703X(Message message) {
        return new C19895z(this.f20759a, new C6208r0(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: Y */
    public AbstractC19891x<Message> mo31702Y(Message message) {
        return new C19895z(this.f20759a, new C6167b(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: Z */
    public AbstractC19891x<SparseBooleanArray> mo31701Z(Conversation[] conversationArr, Long l, String str) {
        return new C19895z(this.f20759a, new C6219x(new C19852e(), conversationArr, l, str, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo31700a(Message message) {
        return new C19895z(this.f20759a, new C6199n(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: a0 */
    public void mo31699a0(long j) {
        this.f20759a.mo11835a(new C6211t(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: b */
    public void mo31698b(boolean z) {
        this.f20759a.mo11835a(new C6192j0(new C19852e(), z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: b0 */
    public void mo31697b0() {
        this.f20759a.mo11835a(new C6210s0(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: c */
    public AbstractC19891x<Message> mo31696c(Message message, Participant[] participantArr, int i) {
        return new C19895z(this.f20759a, new C6170c(new C19852e(), message, participantArr, i, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: c0 */
    public void mo31672c0(long j, int i, int i2) {
        this.f20759a.mo11835a(new C6217w(new C19852e(), j, i, i2, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: d */
    public void mo31695d(int i, b bVar, boolean z) {
        this.f20759a.mo11835a(new C6198m0(new C19852e(), i, bVar, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: d0 */
    public void mo31694d0(Message message, boolean z) {
        this.f20759a.mo11835a(new C6224z0(new C19852e(), message, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo31671e() {
        return new C19895z(this.f20759a, new C6190i1(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: e0 */
    public void mo31693e0() {
        this.f20759a.mo11835a(new C6166a1(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo31670f(Conversation[] conversationArr, boolean z) {
        return new C19895z(this.f20759a, new C6173d(new C19852e(), conversationArr, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: f0 */
    public void mo31692f0() {
        this.f20759a.mo11835a(new C6176e(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: g */
    public void mo31691g() {
        this.f20759a.mo11835a(new C6180f0(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: g0 */
    public void mo31690g0(long[] jArr) {
        this.f20759a.mo11835a(new C6174d0(new C19852e(), jArr, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: h */
    public AbstractC19891x<Boolean> mo31689h(long j) {
        return new C19895z(this.f20759a, new C6206q0(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: h0 */
    public void mo31688h0(long j, int i, int i2, boolean z, String str) {
        this.f20759a.mo11835a(new C6215v(new C19852e(), j, i, i2, z, str, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: i */
    public void mo31611i() {
        this.f20759a.mo11835a(new C6186h0(new C19852e(), null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: j */
    public AbstractC19891x<SparseBooleanArray> mo31687j(Conversation[] conversationArr, boolean z) {
        return new C19895z(this.f20759a, new C6185h(new C19852e(), conversationArr, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: k */
    public void mo31686k(boolean z, Set<Integer> set) {
        this.f20759a.mo11835a(new C6196l0(new C19852e(), z, set, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: l */
    public AbstractC19891x<Boolean> mo31669l(long j, ContentValues contentValues) {
        return new C19895z(this.f20759a, new C6172c1(new C19852e(), j, contentValues, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: m */
    public AbstractC19891x<Conversation> mo31685m(b bVar) {
        return new C19895z(this.f20759a, new C6207r(new C19852e(), bVar, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: n */
    public AbstractC19891x<Boolean> mo31668n(long[] jArr, boolean z) {
        return new C19895z(this.f20759a, new C6168b0(new C19852e(), jArr, z, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: o */
    public void mo31667o(long j) {
        this.f20759a.mo11835a(new C6220x0(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: p */
    public void mo31684p(int i, b bVar) {
        this.f20759a.mo11835a(new C6218w0(new C19852e(), i, bVar, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: q */
    public AbstractC19891x<Boolean> mo31666q(long j, int i) {
        return new C19895z(this.f20759a, new C6169b1(new C19852e(), j, i, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: r */
    public AbstractC19891x<Boolean> mo31665r(ArrayList<ContentProviderOperation> arrayList) {
        return new C19895z(this.f20759a, new C6203p(new C19852e(), arrayList, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: s */
    public void mo31664s(long j, long[] jArr, String str) {
        this.f20759a.mo11835a(new C6213u(new C19852e(), j, jArr, str, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: t */
    public AbstractC19891x<SparseBooleanArray> mo31683t(long j, int i, int i2, boolean z, boolean z2) {
        return new C19895z(this.f20759a, new C6182g(new C19852e(), j, i, i2, z, z2, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: u */
    public AbstractC19891x<Boolean> mo31663u(long j, long j2) {
        return new C19895z(this.f20759a, new C6178e1(new C19852e(), j, j2, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: v */
    public AbstractC19891x<Long> mo31662v(Message message, Participant[] participantArr, long j) {
        return new C19895z(this.f20759a, new C6216v0(new C19852e(), message, participantArr, j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: w */
    public AbstractC19891x<Message> mo31682w(Message message, int i, String str) {
        return new C19895z(this.f20759a, new C6204p0(new C19852e(), message, i, str, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: x */
    public AbstractC19891x<Message> mo31681x(Message message) {
        return new C19895z(this.f20759a, new C6181f1(new C19852e(), message, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: y */
    public AbstractC19891x<Boolean> mo31661y(long j) {
        return new C19895z(this.f20759a, new C6179f(new C19852e(), j, null));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: z */
    public AbstractC19891x<SparseBooleanArray> mo31660z(boolean z, List<Message> list) {
        return new C19895z(this.f20759a, new C6193k(new C19852e(), z, list, null));
    }
}
