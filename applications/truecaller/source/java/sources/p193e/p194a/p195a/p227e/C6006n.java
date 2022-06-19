package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.database.Cursor;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26794n;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p241i1.AbstractC6397d;
import p193e.p194a.p195a.p281t0.AbstractC7262a;
import p193e.p194a.p195a.p281t0.C7263b;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p613c0.C10912h;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.u.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.a.e.n */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/n.class */
public final class C6006n implements AbstractC6005m {

    /* renamed from: a */
    public final AbstractC6397d f19987a;

    /* renamed from: b */
    public final AbstractC6392i0 f19988b;

    /* renamed from: c */
    public final AbstractC19230g f19989c;

    /* renamed from: d */
    public final AbstractC14965w f19990d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC6233m> f19991e;

    /* renamed from: f */
    public final AbstractC6012o f19992f;

    /* renamed from: g */
    public final AbstractC21780a f19993g;

    /* renamed from: h */
    public final AbstractC19462a f19994h;

    /* renamed from: i */
    public final Context f19995i;

    /* renamed from: j */
    public final C20592g f19996j;

    /* renamed from: k */
    public final AbstractC7262a f19997k;

    /* renamed from: l */
    public final AbstractC18951b0 f19998l;

    /* renamed from: m */
    public final C10912h f19999m;

    /* renamed from: n */
    public final C8601l0 f20000n;

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanerImpl", f = "InboxCleaner.kt", l = {124}, m = "automaticCleanup")
    /* renamed from: e.a.a.e.n$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/n$a.class */
    public static final class C6007a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f20001d;

        /* renamed from: e */
        public int f20002e;

        /* renamed from: g */
        public Object f20004g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6007a(d dVar) {
            super(dVar);
            C6006n.this = r4;
        }

        /* renamed from: s */
        public final Object m32038s(Object obj) {
            this.f20001d = obj;
            this.f20002e |= Integer.MIN_VALUE;
            return C6006n.this.mo32046k(this);
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanerImpl", f = "InboxCleaner.kt", l = {192, 199, 205, 213}, m = "automaticCleanupInternal")
    /* renamed from: e.a.a.e.n$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/n$b.class */
    public static final class C6008b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f20005d;

        /* renamed from: e */
        public int f20006e;

        /* renamed from: g */
        public Object f20008g;

        /* renamed from: h */
        public Object f20009h;

        /* renamed from: i */
        public int f20010i;

        /* renamed from: j */
        public int f20011j;

        /* renamed from: k */
        public int f20012k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6008b(d dVar) {
            super(dVar);
            C6006n.this = r4;
        }

        /* renamed from: s */
        public final Object m32037s(Object obj) {
            this.f20005d = obj;
            this.f20006e |= Integer.MIN_VALUE;
            return C6006n.this.m32041p(this);
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanerImpl", f = "InboxCleaner.kt", l = {113}, m = "shouldShowPromotionalTabPromo")
    /* renamed from: e.a.a.e.n$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/n$c.class */
    public static final class C6009c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f20013d;

        /* renamed from: e */
        public int f20014e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6009c(d dVar) {
            super(dVar);
            C6006n.this = r4;
        }

        /* renamed from: s */
        public final Object m32036s(Object obj) {
            this.f20013d = obj;
            this.f20014e |= Integer.MIN_VALUE;
            return C6006n.this.mo32055b(this);
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanerImpl", f = "InboxCleaner.kt", l = {119, 119}, m = "shouldShowSpamTabPromo")
    /* renamed from: e.a.a.e.n$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/n$d.class */
    public static final class C6010d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f20016d;

        /* renamed from: e */
        public int f20017e;

        /* renamed from: g */
        public Object f20019g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6010d(d dVar) {
            super(dVar);
            C6006n.this = r4;
        }

        /* renamed from: s */
        public final Object m32035s(Object obj) {
            this.f20016d = obj;
            this.f20017e |= Integer.MIN_VALUE;
            return C6006n.this.mo32056a(this);
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanerImpl", f = "InboxCleaner.kt", l = {142, 143, 144}, m = "showDMANotification")
    /* renamed from: e.a.a.e.n$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/n$e.class */
    public static final class C6011e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f20020d;

        /* renamed from: e */
        public int f20021e;

        /* renamed from: g */
        public Object f20023g;

        /* renamed from: h */
        public long f20024h;

        /* renamed from: i */
        public int f20025i;

        /* renamed from: j */
        public int f20026j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6011e(d dVar) {
            super(dVar);
            C6006n.this = r4;
        }

        /* renamed from: s */
        public final Object m32034s(Object obj) {
            this.f20020d = obj;
            this.f20021e |= Integer.MIN_VALUE;
            return C6006n.this.mo32049h(this);
        }
    }

    @Inject
    public C6006n(AbstractC6397d abstractC6397d, AbstractC6392i0 abstractC6392i0, AbstractC19230g abstractC19230g, AbstractC14965w abstractC14965w, AbstractC19854f<AbstractC6233m> abstractC19854f, AbstractC6012o abstractC6012o, AbstractC21780a abstractC21780a, AbstractC19462a abstractC19462a, Context context, C20592g c20592g, AbstractC7262a abstractC7262a, AbstractC18951b0 abstractC18951b0, C10912h c10912h, C8601l0 c8601l0) {
        l.e(abstractC6397d, "messageActionHelper");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC14965w, "tcPermissionUtil");
        l.e(abstractC19854f, "messagesStorage");
        l.e(abstractC6012o, "inboxCleanerNotificationHelper");
        l.e(abstractC21780a, "backgroundWorkTrigger");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC7262a, "inboxCleanerDataFetcher");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c10912h, "experimentRegistry");
        l.e(c8601l0, "timestampUtil");
        this.f19987a = abstractC6397d;
        this.f19988b = abstractC6392i0;
        this.f19989c = abstractC19230g;
        this.f19990d = abstractC14965w;
        this.f19991e = abstractC19854f;
        this.f19992f = abstractC6012o;
        this.f19993g = abstractC21780a;
        this.f19994h = abstractC19462a;
        this.f19995i = context;
        this.f19996j = c20592g;
        this.f19997k = abstractC7262a;
        this.f19998l = abstractC18951b0;
        this.f19999m = c10912h;
        this.f20000n = c8601l0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0116, code lost:
        if (((java.lang.Boolean) r9).booleanValue() != false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f2  */
    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo32056a(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6006n.mo32056a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e0, code lost:
        if (((java.lang.Number) r6).intValue() <= 99) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo32055b(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6006n.mo32055b(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: c */
    public void mo32054c() {
        this.f19993g.mo9086b(InboxManualCleanupWorker.f13501j);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: d */
    public Object mo32053d(long j, d<? super List<Message>> dVar) {
        return ((C7263b) this.f19997k).m29874c(j, dVar);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: e */
    public boolean mo32052e() {
        Context context = this.f19995i;
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        Objects.requireNonNull(m1431n);
        C26794n c26794n = new C26794n(m1431n, "OneOff_InboxManualCleanupWorker");
        ((C26822b) m1431n.f74726d).f75051a.execute(c26794n);
        Object obj = c26794n.f74980a.get();
        l.d(obj, "WorkManager.getInstance(…E_OFF_PREFIX$name\").get()");
        Iterable<C26855x> iterable = (Iterable) obj;
        boolean z = true;
        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
            for (C26855x c26855x : iterable) {
                l.d(c26855x, "it");
                C26855x.EnumC26856a enumC26856a = c26855x.f75110b;
                if (enumC26856a == C26855x.EnumC26856a.RUNNING || enumC26856a == C26855x.EnumC26856a.ENQUEUED) {
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: f */
    public Object mo32051f(long j, d<? super Integer> dVar) {
        return ((C7263b) this.f19997k).m29872e(j, dVar);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: g */
    public Object mo32050g(long j, d<? super List<Message>> dVar) {
        ArrayList arrayList;
        AbstractC6149q mo31783i;
        C7263b c7263b = (C7263b) this.f19997k;
        Cursor query = c7263b.f23205a.query(C8582g0.m28304p(0L, j), null, c7263b.f23207c.mo31549a(InboxTab.SPAM), null, null);
        if (query == null || (mo31783i = c7263b.f23206b.mo31783i(query)) == null) {
            arrayList = s.a;
        } else {
            try {
                arrayList = new ArrayList();
                while (mo31783i.moveToNext()) {
                    Message message = mo31783i.getMessage();
                    l.d(message, "message");
                    arrayList.add(message);
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0384  */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v196, types: [long] */
    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo32049h(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6006n.mo32049h(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: i */
    public Object mo32048i(long j, d<? super Integer> dVar) {
        return ((C7263b) this.f19997k).m29875b(j, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c3, code lost:
        if (r13 == false) goto L25;
     */
    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo32047j() {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6006n.mo32047j():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011c  */
    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo32046k(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6006n.mo32046k(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: l */
    public Object mo32045l(long j, long j2, d<? super Integer> dVar) {
        return ((C7263b) this.f19997k).m29876a(j, j2, dVar);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: m */
    public Object mo32044m(List<Message> list, d<? super Boolean> dVar) {
        return this.f19987a.mo31311c(list, "cleanInbox-confirmCleanupManually", false, dVar);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: n */
    public Object mo32043n(long j, d<? super List<Message>> dVar) {
        ArrayList arrayList;
        AbstractC6149q mo31783i;
        C7263b c7263b = (C7263b) this.f19997k;
        Cursor query = c7263b.f23205a.query(C8582g0.m28311i(0L, j), null, c7263b.f23207c.mo31549a(InboxTab.PROMOTIONAL), null, null);
        if (query == null || (mo31783i = c7263b.f23206b.mo31783i(query)) == null) {
            arrayList = s.a;
        } else {
            try {
                arrayList = new ArrayList();
                while (mo31783i.moveToNext()) {
                    Message message = mo31783i.getMessage();
                    l.d(message, "message");
                    arrayList.add(message);
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6005m
    /* renamed from: o */
    public Object mo32042o(long j, d<? super Integer> dVar) {
        return ((C7263b) this.f19997k).m29873d(j, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0393  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32041p(s1.w.d<? super com.truecaller.messaging.inboxcleanup.CleanupResult> r7) {
        /*
            Method dump skipped, instructions count: 929
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C6006n.m32041p(s1.w.d):java.lang.Object");
    }

    /* renamed from: q */
    public final void m32040q(int i, int i2, int i3) {
        String m32039r = m32039r(this.f19988b.mo31158Q());
        String m32039r2 = m32039r(this.f19988b.mo31130V2());
        String m32039r3 = m32039r(this.f19988b.mo31132V0());
        AbstractC19462a abstractC19462a = this.f19994h;
        C19497e0 c19497e0 = new C19497e0("CiCleanup");
        c19497e0.m13279c("cleanupType", "auto");
        c19497e0.m13279c("otpFreq", m32039r);
        c19497e0.m13279c("promotionalFreq", m32039r2);
        c19497e0.m13279c("spamFreq", m32039r3);
        if (this.f19988b.mo31158Q() != 0) {
            c19497e0.m13280b("numOtp", i);
        }
        if (this.f19996j.m10969e0().isEnabled() && this.f19988b.mo31130V2() != 0) {
            c19497e0.m13280b("numPromotional", i2);
        }
        if (this.f19988b.mo31132V0() != 0) {
            c19497e0.m13280b("numSpam", i3);
        }
        c19497e0.m13280b("lifetimeSuccess", this.f19988b.mo31163P());
        c19497e0.m13280b("lifetimeFailure", this.f19988b.mo31174M3());
        abstractC19462a.mo13275a(c19497e0.m13281a());
    }

    /* renamed from: r */
    public final String m32039r(int i) {
        return i != -1 ? i != 7 ? i != 15 ? i != 30 ? "none" : "30 days" : "15 days" : "7 days" : "all";
    }
}
