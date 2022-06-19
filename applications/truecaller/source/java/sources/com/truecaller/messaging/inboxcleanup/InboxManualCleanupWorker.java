package com.truecaller.messaging.inboxcleanup;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.background_work.TrackedWorker;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p227e.AbstractC6012o;
import p193e.p194a.p851h5.AbstractC14965w;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� M2\u00020\u0001:\u0001&B\u0019\b\u0007\u0012\u0006\u0010H\u001a\u00020E\u0012\u0006\u0010J\u001a\u00020I¢\u0006\u0004\bK\u0010LJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8��@��X\u0081.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010<\u001a\u0002058\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010D\u001a\u00020=8��@��X\u0081.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006N"}, d2 = {"Lcom/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "period", "", "x", "(I)Ljava/lang/String;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/p5/g;", "d", "Le/a/p5/g;", "t", "()Le/a/p5/g;", "setDeviceInfoUtil$truecaller_googlePlayRelease", "(Le/a/p5/g;)V", "deviceInfoUtil", "Le/a/a/e/m;", C22021b.f61237c, "Le/a/a/e/m;", "u", "()Le/a/a/e/m;", "setInboxCleaner$truecaller_googlePlayRelease", "(Le/a/a/e/m;)V", "inboxCleaner", "Le/a/h5/w;", "e", "Le/a/h5/w;", "w", "()Le/a/h5/w;", "setTcPermissionUtil$truecaller_googlePlayRelease", "(Le/a/h5/w;)V", "tcPermissionUtil", "Le/a/a/i0;", "a", "Le/a/a/i0;", "v", "()Le/a/a/i0;", "setMessageSettings$truecaller_googlePlayRelease", "(Le/a/a/i0;)V", "messageSettings", "Le/a/q2/a;", "f", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/u3/g;", "g", "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/a/e/o;", AbstractC2405c.f7629a, "Le/a/a/e/o;", "getNotificationHelper$truecaller_googlePlayRelease", "()Le/a/a/e/o;", "setNotificationHelper$truecaller_googlePlayRelease", "(Le/a/a/e/o;)V", "notificationHelper", "Landroid/content/Context;", "h", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "j", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker.class */
public final class InboxManualCleanupWorker extends TrackedWorker {

    /* renamed from: i */
    public static boolean f13500i;

    /* renamed from: j */
    public static final C4222a f13501j = new C4222a(null);
    @Inject

    /* renamed from: a */
    public AbstractC6392i0 f13502a;
    @Inject

    /* renamed from: b */
    public AbstractC6005m f13503b;
    @Inject

    /* renamed from: c */
    public AbstractC6012o f13504c;
    @Inject

    /* renamed from: d */
    public AbstractC19230g f13505d;
    @Inject

    /* renamed from: e */
    public AbstractC14965w f13506e;
    @Inject

    /* renamed from: f */
    public AbstractC19462a f13507f;
    @Inject

    /* renamed from: g */
    public C20592g f13508g;

    /* renamed from: h */
    public final Context f13509h;

    /* renamed from: com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$a.class */
    public static final class C4222a implements AbstractC21763i {
        public C4222a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(InboxManualCleanupWorker.class), null, 2);
            c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
            return c21762h;
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "InboxManualCleanupWorker";
        }
    }

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker$work$1", f = "InboxManualCleanupWorker.kt", l = {100, 106, 112, 124, 136, 148, 159}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/inboxcleanup/InboxManualCleanupWorker$b.class */
    public static final class C4223b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f13510e;

        /* renamed from: f */
        public Object f13511f;

        /* renamed from: g */
        public Object f13512g;

        /* renamed from: h */
        public Object f13513h;

        /* renamed from: i */
        public Object f13514i;

        /* renamed from: j */
        public Object f13515j;

        /* renamed from: k */
        public Object f13516k;

        /* renamed from: l */
        public Object f13517l;

        /* renamed from: m */
        public Object f13518m;

        /* renamed from: n */
        public int f13519n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4223b(d dVar) {
            super(2, dVar);
            InboxManualCleanupWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34978i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4223b(dVar);
        }

        /* renamed from: k */
        public final Object m34977k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4223b(dVar).m34976s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0996  */
        /* JADX WARN: Removed duplicated region for block: B:102:0x0999  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x09d3  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x09f4  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0a04  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x0a37  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x0cb5  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x03fd  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x04d6  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x05f5  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0679  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x06c7  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x078f  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x082f  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0900  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0508 -> B:61:0x0653). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x053b -> B:61:0x0653). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x054e -> B:61:0x0653). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x05d7 -> B:57:0x05db). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x075f -> B:76:0x0775). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x08bc -> B:94:0x08e6). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34976s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 3269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.inboxcleanup.InboxManualCleanupWorker.C4223b.m34976s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public InboxManualCleanupWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        this.f13509h = context;
        AbstractC16444k2.f46188a.m17389a().mo11397E(this);
        f13500i = false;
    }

    /* renamed from: s */
    public static final void m34984s(InboxManualCleanupWorker inboxManualCleanupWorker, C26450q c26450q, int i, int i2) {
        Objects.requireNonNull(inboxManualCleanupWorker);
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append('/');
        sb.append(i2);
        c26450q.m1856m(sb.toString());
        c26450q.m1848u(100, (int) ((i / i2) * 100), false);
        Notification m1865d = c26450q.m1865d();
        l.d(m1865d, "notificationBuilder.build()");
        inboxManualCleanupWorker.setForegroundAsync(new C26833i(C2752R.C2754id.inbox_cleaner_manual_cleanup_notification_id, m1865d)).get();
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f13507f;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f13508g;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        AbstractC6005m abstractC6005m = this.f13503b;
        if (abstractC6005m != null) {
            return abstractC6005m.mo32047j();
        }
        l.l("inboxCleaner");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        C27062a.m968b(this.f13509h).m966d(new Intent("com.truecaller.inboxcleanup.CLEANUP_IN_PROGRESS"));
        s1.a.a.a.v0.f.d.c3((s1.w.f) null, new C4223b(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    /* renamed from: t */
    public final AbstractC19230g m34983t() {
        AbstractC19230g abstractC19230g = this.f13505d;
        if (abstractC19230g != null) {
            return abstractC19230g;
        }
        l.l("deviceInfoUtil");
        throw null;
    }

    /* renamed from: u */
    public final AbstractC6005m m34982u() {
        AbstractC6005m abstractC6005m = this.f13503b;
        if (abstractC6005m != null) {
            return abstractC6005m;
        }
        l.l("inboxCleaner");
        throw null;
    }

    /* renamed from: v */
    public final AbstractC6392i0 m34981v() {
        AbstractC6392i0 abstractC6392i0 = this.f13502a;
        if (abstractC6392i0 != null) {
            return abstractC6392i0;
        }
        l.l("messageSettings");
        throw null;
    }

    /* renamed from: w */
    public final AbstractC14965w m34980w() {
        AbstractC14965w abstractC14965w = this.f13506e;
        if (abstractC14965w != null) {
            return abstractC14965w;
        }
        l.l("tcPermissionUtil");
        throw null;
    }

    /* renamed from: x */
    public final String m34979x(int i) {
        return i != -1 ? i != 7 ? i != 15 ? i != 30 ? "none" : "30 days" : "15 days" : "7 days" : "all";
    }
}
