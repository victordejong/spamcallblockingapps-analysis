package p193e.p194a.p1138q.p1144h;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1138q.p1142f.AbstractC19393a;
import p193e.p194a.p1138q.p1142f.AbstractC19404k;
import p193e.p194a.p1138q.p1143g.AbstractC19421e;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.q.h.g */
/* loaded from: classes5-dex2jar.jar:e/a/q/h/g.class */
public final class C19451g implements AbstractC19450f {

    /* renamed from: g */
    public static final long f54021g = TimeUnit.DAYS.toMillis(30);

    /* renamed from: a */
    public final g f54022a = C25225a.m3978P1(new C19452a());

    /* renamed from: b */
    public final AbstractC19421e f54023b;

    /* renamed from: c */
    public final AbstractC19404k f54024c;

    /* renamed from: d */
    public final AbstractC19393a f54025d;

    /* renamed from: e */
    public final AbstractC19222c f54026e;

    /* renamed from: f */
    public final AbstractC19230g f54027f;

    /* renamed from: e.a.q.h.g$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q/h/g$a.class */
    public static final class C19452a extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19452a() {
            super(0);
            C19451g.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(!C19451g.this.f54027f.mo13796a() ? 50 : 3);
        }
    }

    @e(c = "com.truecaller.contactfeedback.repo.ContactFeedbackRepositoryImpl", f = "ContactFeedbackRepository.kt", l = {74, 76, 77}, m = "syncCommentFeedback")
    /* renamed from: e.a.q.h.g$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q/h/g$b.class */
    public static final class C19453b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54029d;

        /* renamed from: e */
        public int f54030e;

        /* renamed from: g */
        public Object f54032g;

        /* renamed from: h */
        public Object f54033h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19453b(d dVar) {
            super(dVar);
            C19451g.this = r4;
        }

        /* renamed from: s */
        public final Object m13312s(Object obj) {
            this.f54029d = obj;
            this.f54030e |= Integer.MIN_VALUE;
            return C19451g.this.m13314a(this);
        }
    }

    @e(c = "com.truecaller.contactfeedback.repo.ContactFeedbackRepositoryImpl", f = "ContactFeedbackRepository.kt", l = {51, 53, 56, 88}, m = "syncContactFeedback")
    /* renamed from: e.a.q.h.g$c */
    /* loaded from: classes5-dex2jar.jar:e/a/q/h/g$c.class */
    public static final class C19454c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54034d;

        /* renamed from: e */
        public int f54035e;

        /* renamed from: g */
        public Object f54037g;

        /* renamed from: h */
        public Object f54038h;

        /* renamed from: i */
        public boolean f54039i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19454c(d dVar) {
            super(dVar);
            C19451g.this = r4;
        }

        /* renamed from: s */
        public final Object m13311s(Object obj) {
            this.f54034d = obj;
            this.f54035e |= Integer.MIN_VALUE;
            return C19451g.this.m13313b(this);
        }
    }

    @Inject
    public C19451g(AbstractC19421e abstractC19421e, AbstractC19404k abstractC19404k, AbstractC19393a abstractC19393a, AbstractC19222c abstractC19222c, AbstractC19230g abstractC19230g) {
        l.e(abstractC19421e, "dbManager");
        l.e(abstractC19404k, "contactFeedbackRestApiManager");
        l.e(abstractC19393a, "commentFeedbackGrpcApiManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f54023b = abstractC19421e;
        this.f54024c = abstractC19404k;
        this.f54025d = abstractC19393a;
        this.f54026e = abstractC19222c;
        this.f54027f = abstractC19230g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m13314a(s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1144h.C19451g.m13314a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x018d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m13313b(s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1144h.C19451g.m13313b(s1.w.d):java.lang.Object");
    }
}
