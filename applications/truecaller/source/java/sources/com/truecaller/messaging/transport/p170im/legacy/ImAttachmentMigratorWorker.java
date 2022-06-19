package com.truecaller.messaging.transport.p170im.legacy;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p195a.p244k.p245a.p247f2.AbstractC6551a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� &2\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006'"}, d2 = {"Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/u3/g;", AbstractC2405c.f7629a, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/a/k/a/f2/a;", "a", "Le/a/a/k/a/f2/a;", "getMigrator", "()Le/a/a/k/a/f2/a;", "setMigrator", "(Le/a/a/k/a/f2/a;)V", "migrator", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "d", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.legacy.ImAttachmentMigratorWorker */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker.class */
public final class ImAttachmentMigratorWorker extends TrackedWorker {

    /* renamed from: d */
    public static final C4259a f13775d = new C4259a(null);
    @Inject

    /* renamed from: a */
    public AbstractC6551a f13776a;
    @Inject

    /* renamed from: b */
    public AbstractC19462a f13777b;
    @Inject

    /* renamed from: c */
    public C20592g f13778c;

    /* renamed from: com.truecaller.messaging.transport.im.legacy.ImAttachmentMigratorWorker$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a.class */
    public static final class C4259a implements AbstractC21763i {
        public C4259a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(ImAttachmentMigratorWorker.class), null, 2);
            c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
            c21762h.f60602c.f75066a = true;
            return c21762h;
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "ImAttachmentMigratorWorker";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImAttachmentMigratorWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        AbstractC16444k2.f46188a.m17389a().mo11398D(this);
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f13777b;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f13778c;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        AbstractC6551a abstractC6551a = this.f13776a;
        if (abstractC6551a != null) {
            return abstractC6551a.mo30777a();
        }
        l.l("migrator");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        AbstractC6551a abstractC6551a = this.f13776a;
        if (abstractC6551a == null) {
            l.l("migrator");
            throw null;
        }
        abstractC6551a.mo30776b();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }
}
