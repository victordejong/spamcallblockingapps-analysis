package com.truecaller.callrecording.worker;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import com.truecaller.callrecording.CallRecordingManager;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� &2\u00020\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006'"}, d2 = {"Lcom/truecaller/callrecording/worker/CallRecordingsMigrationWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Lcom/truecaller/callrecording/CallRecordingManager;", AbstractC2405c.f7629a, "Lcom/truecaller/callrecording/CallRecordingManager;", "getCallRecordingManager", "()Lcom/truecaller/callrecording/CallRecordingManager;", "setCallRecordingManager", "(Lcom/truecaller/callrecording/CallRecordingManager;)V", "callRecordingManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "d", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/worker/CallRecordingsMigrationWorker.class */
public final class CallRecordingsMigrationWorker extends TrackedWorker {

    /* renamed from: d */
    public static final C3644a f10825d = new C3644a(null);
    @Inject

    /* renamed from: a */
    public AbstractC19462a f10826a;
    @Inject

    /* renamed from: b */
    public C20592g f10827b;
    @Inject

    /* renamed from: c */
    public CallRecordingManager f10828c;

    /* renamed from: com.truecaller.callrecording.worker.CallRecordingsMigrationWorker$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/worker/CallRecordingsMigrationWorker$a.class */
    public static final class C3644a implements AbstractC21763i {
        public C3644a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(CallRecordingsMigrationWorker.class), null, 2);
            c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
            return c21762h;
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "CallRecordingsMigrationWorker";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallRecordingsMigrationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        C18334g0.m15203t(context).mo11164b(this);
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f10826a;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f10827b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        CallRecordingManager callRecordingManager = this.f10828c;
        if (callRecordingManager != null) {
            return callRecordingManager.mo17390x();
        }
        l.l("callRecordingManager");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        CallRecordingManager callRecordingManager = this.f10828c;
        if (callRecordingManager == null) {
            l.l("callRecordingManager");
            throw null;
        }
        callRecordingManager.mo17392g();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }
}
