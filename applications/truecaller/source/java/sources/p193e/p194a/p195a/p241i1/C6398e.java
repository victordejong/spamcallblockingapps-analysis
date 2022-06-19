package p193e.p194a.p195a.p241i1;

import javax.inject.Inject;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.a.i1.e */
/* loaded from: classes11-dex2jar.jar:e/a/a/i1/e.class */
public final class C6398e implements AbstractC6397d {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC6233m> f21294a;

    /* renamed from: b */
    public final AbstractC6708t f21295b;

    /* renamed from: c */
    public final AbstractC14967y f21296c;

    /* renamed from: d */
    public final AbstractC7249d f21297d;

    /* renamed from: e */
    public final AbstractC8571b f21298e;

    /* renamed from: f */
    public final AbstractC14965w f21299f;

    @e(c = "com.truecaller.messaging.util.MessagingActionHelperImpl", f = "MessagingActionHelper.kt", l = {80, 85, 92, 97}, m = "deleteConversations")
    /* renamed from: e.a.a.i1.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/i1/e$a.class */
    public static final class C6399a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f21300d;

        /* renamed from: e */
        public int f21301e;

        /* renamed from: g */
        public Object f21303g;

        /* renamed from: h */
        public Object f21304h;

        /* renamed from: i */
        public Object f21305i;

        /* renamed from: j */
        public boolean f21306j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6399a(d dVar) {
            super(dVar);
            C6398e.this = r4;
        }

        /* renamed from: s */
        public final Object m31309s(Object obj) {
            this.f21300d = obj;
            this.f21301e |= Integer.MIN_VALUE;
            return C6398e.this.mo31313a(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.messaging.util.MessagingActionHelperImpl", f = "MessagingActionHelper.kt", l = {55, 60, 67}, m = "deleteMessages")
    /* renamed from: e.a.a.i1.e$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/i1/e$b.class */
    public static final class C6400b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f21307d;

        /* renamed from: e */
        public int f21308e;

        /* renamed from: g */
        public Object f21310g;

        /* renamed from: h */
        public Object f21311h;

        /* renamed from: i */
        public boolean f21312i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6400b(d dVar) {
            super(dVar);
            C6398e.this = r4;
        }

        /* renamed from: s */
        public final Object m31308s(Object obj) {
            this.f21307d = obj;
            this.f21308e |= Integer.MIN_VALUE;
            return C6398e.this.mo31311c(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.messaging.util.MessagingActionHelperImpl", f = "MessagingActionHelper.kt", l = {104}, m = "downloadMessageEntity")
    /* renamed from: e.a.a.i1.e$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/i1/e$c.class */
    public static final class C6401c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f21313d;

        /* renamed from: e */
        public int f21314e;

        /* renamed from: g */
        public Object f21316g;

        /* renamed from: h */
        public Object f21317h;

        /* renamed from: i */
        public Object f21318i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6401c(d dVar) {
            super(dVar);
            C6398e.this = r4;
        }

        /* renamed from: s */
        public final Object m31307s(Object obj) {
            this.f21313d = obj;
            this.f21314e |= Integer.MIN_VALUE;
            return C6398e.this.mo31312b(null, null, this);
        }
    }

    @e(c = "com.truecaller.messaging.util.MessagingActionHelperImpl", f = "MessagingActionHelper.kt", l = {118}, m = "requestStoragePermissions")
    /* renamed from: e.a.a.i1.e$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/i1/e$d.class */
    public static final class C6402d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f21319d;

        /* renamed from: e */
        public int f21320e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6402d(d dVar) {
            super(dVar);
            C6398e.this = r4;
        }

        /* renamed from: s */
        public final Object m31306s(Object obj) {
            this.f21319d = obj;
            this.f21320e |= Integer.MIN_VALUE;
            return C6398e.this.m31310d(this);
        }
    }

    @Inject
    public C6398e(AbstractC19854f<AbstractC6233m> abstractC19854f, AbstractC6708t abstractC6708t, AbstractC14967y abstractC14967y, AbstractC7249d abstractC7249d, AbstractC8571b abstractC8571b, AbstractC14965w abstractC14965w) {
        l.e(abstractC19854f, "messagesStorage");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC14967y, "permissionsView");
        l.e(abstractC7249d, "defaultSmsHelper");
        l.e(abstractC8571b, "attachmentStoreHelper");
        l.e(abstractC14965w, "permissionUtil");
        this.f21294a = abstractC19854f;
        this.f21295b = abstractC6708t;
        this.f21296c = abstractC14967y;
        this.f21297d = abstractC7249d;
        this.f21298e = abstractC8571b;
        this.f21299f = abstractC14965w;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02bc  */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6397d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo31313a(com.truecaller.messaging.data.types.Conversation[] r7, java.lang.String r8, boolean r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6398e.mo31313a(com.truecaller.messaging.data.types.Conversation[], java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c7  */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6397d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo31312b(com.truecaller.messaging.data.types.Message r6, com.truecaller.messaging.data.types.Entity r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6398e.mo31312b(com.truecaller.messaging.data.types.Message, com.truecaller.messaging.data.types.Entity, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0234 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02cc  */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6397d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo31311c(java.util.List<com.truecaller.messaging.data.types.Message> r9, java.lang.String r10, boolean r11, s1.w.d<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instructions count: 808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6398e.mo31311c(java.util.List, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m31310d(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p195a.p241i1.C6398e.C6402d
            if (r0 == 0) goto L25
            r0 = r6
            e.a.a.i1.e$d r0 = (p193e.p194a.p195a.p241i1.C6398e.C6402d) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f21320e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f21320e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.a.i1.e$d r0 = new e.a.a.i1.e$d
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f21319d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f21320e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L95
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.h5.y r0 = r0.f21296c
            r7 = r0
            r0 = r5
            e.a.h5.w r0 = r0.f21299f
            java.lang.String[] r0 = r0.mo19340q()
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f21320e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = r0.mo19334f(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L95
            r0 = r9
            return r0
        L95:
            r0 = r6
            e.a.h5.l r0 = (p193e.p194a.p851h5.C14945l) r0
            boolean r0 = r0.f42679a
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6398e.m31310d(s1.w.d):java.lang.Object");
    }
}
