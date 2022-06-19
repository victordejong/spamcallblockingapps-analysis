package com.truecaller.videocallerid.worker;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24485f;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p947k.AbstractC16107d;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p981q.AbstractC16262b;
import p193e.p194a.p947k.p981q.AbstractC16268e;
import p193e.p194a.p947k.p981q.C16261a;
import p193e.p194a.p947k.p981q.C16266c;
import p193e.p194a.p947k.p981q.C16267d;
import q3.a.i0;
import q3.a.j;
import q3.a.o;
import q3.a.x2.i1;
import q3.a.x2.u0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0001\u0010>\u001a\u00020=\u0012\b\b\u0001\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8��@��X\u0081.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010<\u001a\u0002058��@��X\u0081.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;¨\u0006C"}, d2 = {"Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/k/d;", "e", "Le/a/k/d;", "getBusinessVideoCallerIDAnalytics$video_caller_id_release", "()Le/a/k/d;", "setBusinessVideoCallerIDAnalytics$video_caller_id_release", "(Le/a/k/d;)V", "businessVideoCallerIDAnalytics", "Le/a/k/q/e;", "f", "Le/a/k/q/e;", "getVideoCallerIdDownloadManager", "()Le/a/k/q/e;", "setVideoCallerIdDownloadManager", "(Le/a/k/q/e;)V", "videoCallerIdDownloadManager", "", "Le/m/a/c/j1/f;", "g", "Ljava/util/List;", "downloadEntry", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/k/h;", "d", "Le/a/k/h;", "getVideoCallerId", "()Le/a/k/h;", "setVideoCallerId", "(Le/a/k/h;)V", "videoCallerId", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/k/c/q;", AbstractC2405c.f7629a, "Le/a/k/c/q;", "getExoPlayerUtil$video_caller_id_release", "()Le/a/k/c/q;", "setExoPlayerUtil$video_caller_id_release", "(Le/a/k/c/q;)V", "exoPlayerUtil", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/worker/VideoCallerIdCachingWorker.class */
public final class VideoCallerIdCachingWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public AbstractC19462a f16222a;
    @Inject

    /* renamed from: b */
    public C20592g f16223b;
    @Inject

    /* renamed from: c */
    public AbstractC16044q f16224c;
    @Inject

    /* renamed from: d */
    public AbstractC16111h f16225d;
    @Inject

    /* renamed from: e */
    public AbstractC16107d f16226e;
    @Inject

    /* renamed from: f */
    public AbstractC16268e f16227f;

    /* renamed from: g */
    public final List<C24485f> f16228g = new ArrayList();

    @e(c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$work$1", f = "VideoCallerIdCachingWorker.kt", l = {101}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a.class */
    public static final class C4779a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f16229e;

        /* renamed from: g */
        public final /* synthetic */ String f16231g;

        /* renamed from: h */
        public final /* synthetic */ String f16232h;

        /* renamed from: i */
        public final /* synthetic */ long f16233i;

        /* renamed from: j */
        public final /* synthetic */ boolean f16234j;

        /* renamed from: k */
        public final /* synthetic */ c0 f16235k;

        /* renamed from: l */
        public final /* synthetic */ c0 f16236l;

        @e(c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$work$1$downloaded$1", f = "VideoCallerIdCachingWorker.kt", l = {102}, m = "invokeSuspend")
        /* renamed from: com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$a$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/worker/VideoCallerIdCachingWorker$a$a.class */
        public static final class C4780a extends i implements p<i0, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f16237e;

            /* renamed from: f */
            public int f16238f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4780a(d dVar) {
                super(2, dVar);
                C4779a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m34352i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C4780a c4780a = new C4780a(dVar);
                c4780a.f16237e = obj;
                return c4780a;
            }

            /* renamed from: k */
            public final Object m34351k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C4780a c4780a = new C4780a(dVar);
                c4780a.f16237e = obj;
                return c4780a.m34350s(s.a);
            }

            /* renamed from: s */
            public final Object m34350s(Object obj) {
                a aVar = a.a;
                int i = this.f16238f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    i0 i0Var = (i0) this.f16237e;
                    C4779a c4779a = C4779a.this;
                    VideoCallerIdCachingWorker videoCallerIdCachingWorker = VideoCallerIdCachingWorker.this;
                    String str = c4779a.f16231g;
                    String str2 = c4779a.f16232h;
                    long j = c4779a.f16233i;
                    boolean z = c4779a.f16234j;
                    this.f16238f = 1;
                    Objects.requireNonNull(videoCallerIdCachingWorker);
                    o oVar = new o(C25225a.m3844s1(this), 1);
                    oVar.z();
                    AbstractC16268e abstractC16268e = videoCallerIdCachingWorker.f16227f;
                    if (abstractC16268e == null) {
                        l.l("videoCallerIdDownloadManager");
                        throw null;
                    }
                    i1<AbstractC16262b> mo17655a = abstractC16268e.mo17655a(new C16261a(str, str2, j));
                    if (mo17655a != null) {
                        s1.a.a.a.v0.f.d.x2(s1.a.a.a.v0.f.d.Q3(new u0(mo17655a, new C16266c(oVar, null, videoCallerIdCachingWorker, str, str2, j, z, i0Var)), new C16267d(oVar, null)), i0Var);
                    } else {
                        C19291g.m13552f1(oVar, Boolean.FALSE);
                    }
                    Object y = oVar.y();
                    if (y == aVar) {
                        l.e(this, "frame");
                    }
                    obj = y;
                    if (y == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4779a(String str, String str2, long j, boolean z, c0 c0Var, c0 c0Var2, d dVar) {
            super(2, dVar);
            VideoCallerIdCachingWorker.this = r5;
            this.f16231g = str;
            this.f16232h = str2;
            this.f16233i = j;
            this.f16234j = z;
            this.f16235k = c0Var;
            this.f16236l = c0Var2;
        }

        /* renamed from: i */
        public final d<s> m34355i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4779a(this.f16231g, this.f16232h, this.f16233i, this.f16234j, this.f16235k, this.f16236l, dVar);
        }

        /* renamed from: k */
        public final Object m34354k(Object obj, Object obj2) {
            return m34355i(obj, (d) obj2).m34353s(s.a);
        }

        /* renamed from: s */
        public final Object m34353s(Object obj) {
            ListenableWorker.AbstractC0414a.C0417c c0417c;
            a aVar = a.a;
            int i = this.f16229e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C4780a c4780a = new C4780a(null);
                this.f16229e = 1;
                Object c = j.c((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, c4780a, this);
                obj = c;
                if (c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Boolean bool = (Boolean) obj;
            boolean booleanValue = bool != null ? bool.booleanValue() : false;
            AbstractC16268e abstractC16268e = VideoCallerIdCachingWorker.this.f16227f;
            if (abstractC16268e == null) {
                l.l("videoCallerIdDownloadManager");
                throw null;
            }
            abstractC16268e.mo17654b(this.f16232h);
            if (booleanValue) {
                if (this.f16234j) {
                    VideoCallerIdCachingWorker videoCallerIdCachingWorker = VideoCallerIdCachingWorker.this;
                    AbstractC16107d abstractC16107d = videoCallerIdCachingWorker.f16226e;
                    if (abstractC16107d == null) {
                        l.l("businessVideoCallerIDAnalytics");
                        throw null;
                    }
                    abstractC16107d.mo17874c(videoCallerIdCachingWorker.f16228g, (String) this.f16235k.a, (String) this.f16236l.a, videoCallerIdCachingWorker.getRunAttemptCount());
                    VideoCallerIdCachingWorker.this.f16228g.clear();
                }
                c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            } else if (VideoCallerIdCachingWorker.this.getRunAttemptCount() < 2) {
                c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            } else {
                if (this.f16234j) {
                    VideoCallerIdCachingWorker videoCallerIdCachingWorker2 = VideoCallerIdCachingWorker.this;
                    AbstractC16107d abstractC16107d2 = videoCallerIdCachingWorker2.f16226e;
                    if (abstractC16107d2 == null) {
                        l.l("businessVideoCallerIDAnalytics");
                        throw null;
                    }
                    abstractC16107d2.mo17871f(videoCallerIdCachingWorker2.f16228g, (String) this.f16235k.a, (String) this.f16236l.a, videoCallerIdCachingWorker2.getRunAttemptCount());
                    VideoCallerIdCachingWorker.this.f16228g.clear();
                }
                c0417c = new ListenableWorker.AbstractC0414a.C0415a();
            }
            return c0417c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCallerIdCachingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f16222a;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f16223b;
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
        if (!mo34358o().m10999F().isEnabled()) {
            C20592g mo34358o = mo34358o();
            if (!mo34358o.f57855W4.m10941a(mo34358o, C20592g.f57695p6[314]).isEnabled()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        String m1301f = getInputData().m1301f("url_data");
        if (m1301f == null) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        l.d(m1301f, "inputData.getString(URL_…: return Result.success()");
        String m1301f2 = getInputData().m1301f("id_data");
        long m1302e = getInputData().m1302e("podp_data", 0L);
        c0 c0Var = new c0();
        String m1301f3 = getInputData().m1301f("context_data");
        if (m1301f3 == null) {
            m1301f3 = "";
        }
        l.d(m1301f3, "inputData.getString(CONTEXT_DATA) ?: \"\"");
        c0Var.a = m1301f3;
        boolean m1305b = getInputData().m1305b("is_business", false);
        c0 c0Var2 = new c0();
        c0Var2.a = getInputData().m1301f("business_number");
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C4779a(m1301f, m1301f2, m1302e, m1305b, c0Var2, c0Var, null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …}\n            }\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }
}
