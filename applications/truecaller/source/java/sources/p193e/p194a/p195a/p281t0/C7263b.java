package p193e.p194a.p195a.p281t0;

import android.content.ContentResolver;
import android.net.Uri;
import com.truecaller.messaging.data.types.InboxTab;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6249x;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p612z.C10901d;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.a.t0.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/t0/b.class */
public final class C7263b implements AbstractC7262a {

    /* renamed from: a */
    public final ContentResolver f23205a;

    /* renamed from: b */
    public final AbstractC6115g f23206b;

    /* renamed from: c */
    public final AbstractC6249x f23207c;

    /* renamed from: d */
    public final C10901d f23208d;

    @e(c = "com.truecaller.messaging.inboxcleaner.InboxCleanerDataFetcherImpl", f = "InboxCleanerDataFetcher.kt", l = {47}, m = "fetchOtpCountInConversationOlderThan")
    /* renamed from: e.a.a.t0.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/t0/b$a.class */
    public static final class C7264a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23209d;

        /* renamed from: e */
        public int f23210e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7264a(d dVar) {
            super(dVar);
            C7263b.this = r4;
        }

        /* renamed from: s */
        public final Object m29871s(Object obj) {
            this.f23209d = obj;
            this.f23210e |= Integer.MIN_VALUE;
            return C7263b.this.m29876a(0L, 0L, this);
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleaner.InboxCleanerDataFetcherImpl", f = "InboxCleanerDataFetcher.kt", l = {34}, m = "fetchOtpMessagesCountOlderThan")
    /* renamed from: e.a.a.t0.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/t0/b$b.class */
    public static final class C7265b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23212d;

        /* renamed from: e */
        public int f23213e;

        /* renamed from: g */
        public Object f23215g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7265b(d dVar) {
            super(dVar);
            C7263b.this = r4;
        }

        /* renamed from: s */
        public final Object m29870s(Object obj) {
            this.f23212d = obj;
            this.f23213e |= Integer.MIN_VALUE;
            return C7263b.this.m29875b(0L, this);
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleaner.InboxCleanerDataFetcherImpl", f = "InboxCleanerDataFetcher.kt", l = {70}, m = "fetchOtpMessagesOlderThan")
    /* renamed from: e.a.a.t0.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/t0/b$c.class */
    public static final class C7266c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23216d;

        /* renamed from: e */
        public int f23217e;

        /* renamed from: g */
        public Object f23219g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7266c(d dVar) {
            super(dVar);
            C7263b.this = r4;
        }

        /* renamed from: s */
        public final Object m29869s(Object obj) {
            this.f23216d = obj;
            this.f23217e |= Integer.MIN_VALUE;
            return C7263b.this.m29874c(0L, this);
        }
    }

    @Inject
    public C7263b(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6249x abstractC6249x, C10901d c10901d) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC6249x, "selectionProvider");
        l.e(c10901d, "otpUseCases");
        this.f23205a = contentResolver;
        this.f23206b = abstractC6115g;
        this.f23207c = abstractC6249x;
        this.f23208d = c10901d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m29876a(long r7, long r9, s1.w.d<? super java.lang.Integer> r11) {
        /*
            r6 = this;
            r0 = r11
            boolean r0 = r0 instanceof p193e.p194a.p195a.p281t0.C7263b.C7264a
            if (r0 == 0) goto L2f
            r0 = r11
            e.a.a.t0.b$a r0 = (p193e.p194a.p195a.p281t0.C7263b.C7264a) r0
            r12 = r0
            r0 = r12
            int r0 = r0.f23210e
            r13 = r0
            r0 = r13
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r12
            r1 = r13
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23210e = r1
            r0 = r12
            r11 = r0
            goto L3b
        L2f:
            e.a.a.t0.b$a r0 = new e.a.a.t0.b$a
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r3)
            r11 = r0
        L3b:
            r0 = r11
            java.lang.Object r0 = r0.f23209d
            r12 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r14 = r0
            r0 = r11
            int r0 = r0.f23210e
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L6f
            r0 = r13
            r1 = 1
            if (r0 != r1) goto L65
            r0 = r12
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r12
            r11 = r0
            goto La3
        L65:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6f:
            r0 = r12
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            e.a.c.z.d r0 = r0.f23208d
            r12 = r0
            r0 = r11
            r1 = 1
            r0.f23210e = r1
            r0 = r12
            e.a.c.c.d.d0 r0 = r0.f32372a
            java.util.Date r1 = new java.util.Date
            r2 = r1
            r3 = r7
            r2.<init>(r3)
            r2 = r9
            r3 = r11
            java.lang.Object r0 = r0.mo27148A(r1, r2, r3)
            r12 = r0
            r0 = r12
            r11 = r0
            r0 = r12
            r1 = r14
            if (r0 != r1) goto La3
            r0 = r14
            return r0
        La3:
            java.lang.Integer r0 = new java.lang.Integer
            r1 = r0
            r2 = r11
            java.util.List r2 = (java.util.List) r2
            int r2 = r2.size()
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p281t0.C7263b.m29876a(long, long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ba  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m29875b(long r7, s1.w.d<? super java.lang.Integer> r9) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p281t0.C7263b.m29875b(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b9  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m29874c(long r8, s1.w.d<? super java.util.List<com.truecaller.messaging.data.types.Message>> r10) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p281t0.C7263b.m29874c(long, s1.w.d):java.lang.Object");
    }

    /* renamed from: d */
    public Object m29873d(long j, d<? super Integer> dVar) {
        ContentResolver contentResolver = this.f23205a;
        Uri m28311i = C8582g0.m28311i(0L, j);
        l.d(m28311i, "TruecallerContract.Inbox…tContentUri(0, timestamp)");
        Integer m13700D = C19286f.m13700D(contentResolver, m28311i, "COUNT()", this.f23207c.mo31549a(InboxTab.PROMOTIONAL), null);
        return new Integer(m13700D != null ? m13700D.intValue() : 0);
    }

    /* renamed from: e */
    public Object m29872e(long j, d<? super Integer> dVar) {
        ContentResolver contentResolver = this.f23205a;
        Uri m28304p = C8582g0.m28304p(0L, j);
        l.d(m28304p, "TruecallerContract.Inbox…tContentUri(0, timestamp)");
        Integer m13700D = C19286f.m13700D(contentResolver, m28304p, "COUNT()", this.f23207c.mo31549a(InboxTab.SPAM), null);
        return new Integer(m13700D != null ? m13700D.intValue() : 0);
    }
}
