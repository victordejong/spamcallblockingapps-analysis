package com.truecaller.videocallerid.worker;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p947k.p969c.AbstractC16020k0;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p969c.C16023l0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018��2\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0001\u0010)\u001a\u00020(\u0012\b\b\u0001\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8��@��X\u0081.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006."}, d2 = {"Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/k/c/r0;", "a", "Le/a/k/c/r0;", "getVideoCallerIdAvailability$video_caller_id_release", "()Le/a/k/c/r0;", "setVideoCallerIdAvailability$video_caller_id_release", "(Le/a/k/c/r0;)V", "videoCallerIdAvailability", "Le/a/q2/a;", AbstractC2405c.f7629a, "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/k/c/k0;", "d", "Le/a/k/c/k0;", "getShareVideoUpdateManager", "()Le/a/k/c/k0;", "setShareVideoUpdateManager", "(Le/a/k/c/k0;)V", "shareVideoUpdateManager", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/worker/ShareVideoUpdateWorker.class */
public final class ShareVideoUpdateWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public AbstractC16067r0 f16216a;
    @Inject

    /* renamed from: b */
    public C20592g f16217b;
    @Inject

    /* renamed from: c */
    public AbstractC19462a f16218c;
    @Inject

    /* renamed from: d */
    public AbstractC16020k0 f16219d;

    @e(c = "com.truecaller.videocallerid.worker.ShareVideoUpdateWorker$work$1", f = "ShareVideoUpdateWorker.kt", l = {57}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.worker.ShareVideoUpdateWorker$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/worker/ShareVideoUpdateWorker$a.class */
    public static final class C4778a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f16220e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4778a(d dVar) {
            super(2, dVar);
            ShareVideoUpdateWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34362i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4778a(dVar);
        }

        /* renamed from: k */
        public final Object m34361k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4778a(dVar).m34360s(s.a);
        }

        /* renamed from: s */
        public final Object m34360s(Object obj) {
            a aVar = a.a;
            int i = this.f16220e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16020k0 abstractC16020k0 = ShareVideoUpdateWorker.this.f16219d;
                if (abstractC16020k0 == null) {
                    l.l("shareVideoUpdateManager");
                    throw null;
                }
                this.f16220e = 1;
                Object m17989b = ((C16023l0) abstractC16020k0).m17989b(this);
                obj = m17989b;
                if (m17989b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                return new ListenableWorker.AbstractC0414a.C0417c();
            }
            return ShareVideoUpdateWorker.this.getRunAttemptCount() >= 2 ? new ListenableWorker.AbstractC0414a.C0415a() : new ListenableWorker.AbstractC0414a.C0416b();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVideoUpdateWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f16218c;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f16217b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        boolean z;
        AbstractC16067r0 abstractC16067r0 = this.f16216a;
        if (abstractC16067r0 == null) {
            l.l("videoCallerIdAvailability");
            throw null;
        }
        if (abstractC16067r0.isEnabled()) {
            AbstractC16067r0 abstractC16067r02 = this.f16216a;
            if (abstractC16067r02 == null) {
                l.l("videoCallerIdAvailability");
                throw null;
            } else if (abstractC16067r02.isAvailable()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C4778a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …}\n            }\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }
}
