package p193e.p194a.p195a.p279r0;

import android.database.Cursor;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p751f4.p762g.C14030t;
import s1.e0.k;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.m;
/* renamed from: e.a.a.r0.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/d.class */
public final class C7204d implements AbstractC7203c {

    /* renamed from: a */
    public final a<AbstractC6248w> f23089a;

    /* renamed from: b */
    public final AbstractC19022f0 f23090b;

    /* renamed from: c */
    public final AbstractC14028r f23091c;

    /* renamed from: d */
    public final AbstractC19321u f23092d;

    /* renamed from: e */
    public final Provider<AbstractC6392i0> f23093e;

    /* renamed from: f */
    public final int f23094f;

    /* renamed from: e.a.a.r0.d$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$a.class */
    public static final class C7205a extends m implements s1.z.b.a<Conversation> {

        /* renamed from: b */
        public final /* synthetic */ Cursor f23095b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7205a(Cursor cursor) {
            super(0);
            this.f23095b = cursor;
        }

        public final Conversation invoke() {
            return this.f23095b.moveToNext() ? ((AbstractC6126a) this.f23095b).mo31752p() : null;
        }
    }

    @e(c = "com.truecaller.messaging.conversationlist.ConversationSpamSearcherImpl", f = "ConversationSpamSearcher.kt", l = {48}, m = "performSearch")
    /* renamed from: e.a.a.r0.d$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$b.class */
    public static final class C7206b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23096d;

        /* renamed from: e */
        public int f23097e;

        /* renamed from: g */
        public Object f23099g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7206b(d dVar) {
            super(dVar);
            C7204d.this = r4;
        }

        /* renamed from: s */
        public final Object m29996s(Object obj) {
            this.f23096d = obj;
            this.f23097e |= Integer.MIN_VALUE;
            return C7204d.this.mo29998a(this);
        }
    }

    /* renamed from: e.a.a.r0.d$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$c.class */
    public static final class C7207c extends m implements l<Participant, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7207c() {
            super(1);
            C7204d.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
            if (((r0 & 2) == 0 && (r0 & 13) == 0) != false) goto L21;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m29995d(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                com.truecaller.data.entity.messaging.Participant r0 = (com.truecaller.data.entity.messaging.Participant) r0
                r4 = r0
                r0 = r4
                boolean r0 = r0.f11577j
                r5 = r0
                r0 = 1
                r6 = r0
                r0 = r5
                if (r0 != 0) goto L72
                r0 = r3
                e.a.a.r0.d r0 = p193e.p194a.p195a.p279r0.C7204d.this
                r7 = r0
                r0 = r4
                java.lang.String r1 = "participant"
                s1.z.c.l.d(r0, r1)
                r0 = r7
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r4
                int r0 = r0.f11569b
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L3c
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L36
                goto L3c
            L36:
                r0 = 0
                r8 = r0
                goto L3f
            L3c:
                r0 = 1
                r8 = r0
            L3f:
                r0 = r8
                if (r0 == 0) goto L72
                r0 = r3
                e.a.a.r0.d r0 = p193e.p194a.p195a.p279r0.C7204d.this
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r4
                int r0 = r0.f11581n
                r8 = r0
                r0 = r8
                r1 = 2
                r0 = r0 & r1
                if (r0 != 0) goto L67
                r0 = r8
                r1 = 13
                r0 = r0 & r1
                if (r0 != 0) goto L67
                r0 = 1
                r8 = r0
                goto L6a
            L67:
                r0 = 0
                r8 = r0
            L6a:
                r0 = r8
                if (r0 == 0) goto L72
                goto L74
            L72:
                r0 = 0
                r6 = r0
            L74:
                r0 = r6
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p279r0.C7204d.C7207c.m29995d(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.conversationlist.ConversationSpamSearcherImpl", f = "ConversationSpamSearcher.kt", l = {63}, m = "performSearchInternal")
    /* renamed from: e.a.a.r0.d$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$d.class */
    public static final class C7208d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23101d;

        /* renamed from: e */
        public int f23102e;

        /* renamed from: g */
        public Object f23104g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7208d(d dVar) {
            super(dVar);
            C7204d.this = r4;
        }

        /* renamed from: s */
        public final Object m29994s(Object obj) {
            this.f23101d = obj;
            this.f23102e |= Integer.MIN_VALUE;
            return C7204d.this.m29997b(this);
        }
    }

    /* renamed from: e.a.a.r0.d$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$e.class */
    public static final class C7209e extends m implements l<Conversation, k<? extends Participant>> {

        /* renamed from: b */
        public static final C7209e f23105b = new C7209e();

        public C7209e() {
            super(1);
        }

        /* renamed from: d */
        public Object m29993d(Object obj) {
            Conversation conversation = (Conversation) obj;
            s1.z.c.l.e(conversation, "it");
            Participant[] participantArr = conversation.f13211m;
            s1.z.c.l.d(participantArr, "it.participants");
            return C25225a.m3861p(participantArr);
        }
    }

    /* renamed from: e.a.a.r0.d$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$f.class */
    public static final /* synthetic */ class C7210f extends j implements l<Collection<? extends String>, Boolean> {
        public C7210f(C7204d c7204d) {
            super(1, c7204d, C7204d.class, "doSearch", "doSearch(Ljava/util/Collection;)Z", 0);
        }

        /* renamed from: d */
        public Object m29992d(Object obj) {
            Collection<String> collection = (Collection) obj;
            s1.z.c.l.e(collection, "p1");
            C7204d c7204d = (C7204d) ((b) this).b;
            boolean z = false;
            if (c7204d.f23092d.mo13429d()) {
                C14030t c14030t = null;
                try {
                    AbstractC14028r abstractC14028r = c7204d.f23091c;
                    UUID randomUUID = UUID.randomUUID();
                    s1.z.c.l.d(randomUUID, "UUID.randomUUID()");
                    C14012i mo20838c = abstractC14028r.mo20838c(randomUUID, "autoSpamInbox");
                    mo20838c.f40521g = 20;
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(collection, 10));
                    for (String str : collection) {
                        arrayList.add(new C14012i.C14014b(str, null, null));
                    }
                    mo20838c.f40518d.addAll(arrayList);
                    mo20838c.f40519e = true;
                    mo20838c.f40520f = true;
                    c14030t = mo20838c.mo20821a();
                } catch (IOException e) {
                }
                if (c14030t != null) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: e.a.a.r0.d$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/d$g.class */
    public static final class C7211g extends m implements l<Boolean, Boolean> {

        /* renamed from: b */
        public static final C7211g f23106b = new C7211g();

        public C7211g() {
            super(1);
        }

        /* renamed from: d */
        public Object m29991d(Object obj) {
            return Boolean.valueOf(((Boolean) obj).booleanValue());
        }
    }

    @Inject
    public C7204d(a<AbstractC6248w> aVar, AbstractC19022f0 abstractC19022f0, AbstractC14028r abstractC14028r, AbstractC19321u abstractC19321u, Provider<AbstractC6392i0> provider, @Named("conv_spam_s_b_s") int i) {
        s1.z.c.l.e(aVar, "readMessageStorage");
        s1.z.c.l.e(abstractC19022f0, "deviceManager");
        s1.z.c.l.e(abstractC14028r, "searchManager");
        s1.z.c.l.e(abstractC19321u, "networkUtil");
        s1.z.c.l.e(provider, "settings");
        this.f23089a = aVar;
        this.f23090b = abstractC19022f0;
        this.f23091c = abstractC14028r;
        this.f23092d = abstractC19321u;
        this.f23093e = provider;
        this.f23094f = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    @Override // p193e.p194a.p195a.p279r0.AbstractC7203c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29998a(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p279r0.C7204d.mo29998a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m29997b(s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p279r0.C7204d.m29997b(s1.w.d):java.lang.Object");
    }
}
