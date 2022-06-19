package com.truecaller.background_work;

import android.content.Context;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.persistence.WorkActionDatabase;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p1727n3.p1834m0.C26829f;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21766l;
import p193e.p194a.p1392y2.AbstractC21771o;
import p193e.p194a.p1392y2.C21759e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00100\u00148��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001d\u0010\u0017\u001a\u0004\b\u001e\u0010\u0019\"\u0004\b\u001f\u0010\u001bR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u00063"}, d2 = {"Lcom/truecaller/background_work/JointActionsWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/q2/a;", "n", "()Le/a/q2/a;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Lo3/a;", "Lcom/truecaller/background_work/persistence/WorkActionDatabase;", "d", "Lo3/a;", "getResultsDatabase", "()Lo3/a;", "setResultsDatabase", "(Lo3/a;)V", "resultsDatabase", "a", "getLazyAnalytics$background_work_release", "setLazyAnalytics$background_work_release", "lazyAnalytics", "Le/a/y2/e;", "e", "Le/a/y2/e;", "delegate", "Le/a/y2/l;", AbstractC2405c.f7629a, "Le/a/y2/l;", "getFactory", "()Le/a/y2/l;", "setFactory", "(Le/a/y2/l;)V", "factory", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "background-work_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/JointActionsWorker.class */
public final class JointActionsWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public a<AbstractC19462a> f10141a;
    @Inject

    /* renamed from: b */
    public C20592g f10142b;
    @Inject

    /* renamed from: c */
    public AbstractC21766l f10143c;
    @Inject

    /* renamed from: d */
    public a<WorkActionDatabase> f10144d;

    /* renamed from: e */
    public final C21759e f10145e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JointActionsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParams");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.background_work.WorkActionSchedulingApplication");
        ((AbstractC21771o) applicationContext).mo9098o().mo9096b5(this);
        C26829f inputData = getInputData();
        l.d(inputData, "inputData");
        int runAttemptCount = getRunAttemptCount();
        a<AbstractC19462a> aVar = this.f10141a;
        if (aVar == null) {
            l.l("lazyAnalytics");
            throw null;
        }
        C20592g c20592g = this.f10142b;
        if (c20592g == null) {
            l.l("featuresRegistry");
            throw null;
        }
        aVar = !c20592g.m10961i0().isEnabled() ? null : aVar;
        AbstractC19462a abstractC19462a = aVar != null ? (AbstractC19462a) aVar.get() : null;
        AbstractC21766l abstractC21766l = this.f10143c;
        if (abstractC21766l == null) {
            l.l("factory");
            throw null;
        }
        a<WorkActionDatabase> aVar2 = this.f10144d;
        if (aVar2 != null) {
            this.f10145e = new C21759e(inputData, runAttemptCount, abstractC19462a, abstractC21766l, aVar2);
        } else {
            l.l("resultsDatabase");
            throw null;
        }
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        a<AbstractC19462a> aVar = this.f10141a;
        if (aVar == null) {
            l.l("lazyAnalytics");
            throw null;
        }
        Object obj = aVar.get();
        l.d(obj, "lazyAnalytics.get()");
        return (AbstractC19462a) obj;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f10142b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        Objects.requireNonNull(this.f10145e);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.work.ListenableWorker.AbstractC0414a mo34356r() {
        /*
            Method dump skipped, instructions count: 1151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.background_work.JointActionsWorker.mo34356r():androidx.work.ListenableWorker$a");
    }
}
