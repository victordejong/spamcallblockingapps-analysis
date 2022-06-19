package com.truecaller.insights.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import com.truecaller.log.UnmutedException;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.apache.avro.generic.GenericRecord;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p556d.AbstractC10315a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10435f;
import p193e.p194a.p437c.p577o.C10478a;
import s1.k;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� &2\u00020\u0001:\u0001\u0011BE\b\u0007\u0012\b\b\u0001\u0010!\u001a\u00020 \u0012\b\b\u0001\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0015\u001a\u00020\u00108\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u001b\u001a\u00020\u00168\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006'"}, d2 = {"Lcom/truecaller/insights/workers/InsightsOneOffEnrichmentWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/c/i/m/f;", "d", "Le/a/c/i/m/f;", "insightsSyncStatusManager", "Le/a/c/b/j;", "e", "Le/a/c/b/j;", "insightsStatusProvider", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "featuresRegistry", "Le/a/c/i/d/a;", AbstractC2405c.f7629a, "Le/a/c/i/d/a;", "enrichmentManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/i/d/a;Le/a/c/i/m/f;Le/a/c/b/j;)V", "f", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsOneOffEnrichmentWorker.class */
public final class InsightsOneOffEnrichmentWorker extends TrackedWorker {

    /* renamed from: f */
    public static final C4130a f12959f = new C4130a(null);

    /* renamed from: a */
    public final AbstractC19462a f12960a;

    /* renamed from: b */
    public final C20592g f12961b;

    /* renamed from: c */
    public final AbstractC10315a f12962c;

    /* renamed from: d */
    public final AbstractC10435f f12963d;

    /* renamed from: e */
    public final AbstractC9691j f12964e;

    /* renamed from: com.truecaller.insights.workers.InsightsOneOffEnrichmentWorker$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsOneOffEnrichmentWorker$a.class */
    public static final class C4130a implements AbstractC21763i {
        public C4130a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(InsightsOneOffEnrichmentWorker.class), i.c(6L));
            c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
            C26825d.C26826a c26826a = c21762h.f60602c;
            c26826a.f75069d = true;
            c26826a.f75067b = true;
            return c21762h;
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "InsightsEnrichmentWorkerOneOff";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsightsOneOffEnrichmentWorker(Context context, WorkerParameters workerParameters, AbstractC19462a abstractC19462a, C20592g c20592g, AbstractC10315a abstractC10315a, AbstractC10435f abstractC10435f, AbstractC9691j abstractC9691j) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC10315a, "enrichmentManager");
        l.e(abstractC10435f, "insightsSyncStatusManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f12960a = abstractC19462a;
        this.f12961b = c20592g;
        this.f12962c = abstractC10315a;
        this.f12963d = abstractC10435f;
        this.f12964e = abstractC9691j;
    }

    /* renamed from: s */
    public static final void m35143s() {
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C21762h c21762h = new C21762h(d0.a(InsightsOneOffEnrichmentWorker.class), i.d(5L));
        c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
        m1431n.m1287a("InsightsEnrichmentWorkerOneOff", enumC26832h, c21762h.m9113a()).mo1290a();
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        return this.f12960a;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        return this.f12961b;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        return this.f12963d.mo26146d() && this.f12962c.mo26379f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        ListenableWorker.AbstractC0414a abstractC0414a;
        Map<String, Object> m1303d;
        ?? r17;
        try {
            if (this.f12964e.mo27290E()) {
                long currentTimeMillis = System.currentTimeMillis();
                this.f12962c.mo26381d();
                r17 = System.currentTimeMillis() - currentTimeMillis;
            } else {
                r17 = false;
            }
            try {
                this.f12962c.mo26383b();
            } catch (Exception e) {
                String localizedMessage = e.getLocalizedMessage();
                CoroutineExceptionHandler coroutineExceptionHandler = C10478a.f31165a;
                C10263b.f30414d.m26508b(new UnmutedException.InsightsExceptions(UnmutedException.InsightsExceptions.Cause.ACCOUNT_MODEL_EXCEPTION), localizedMessage);
            }
            C26829f.C26830a c26830a = new C26829f.C26830a();
            c26830a.m1298b(getInputData().f75078a);
            l.d(c26830a, "Data.Builder().putAll(inputData)");
            c26830a.f75079a.put("linking_model_time", Long.valueOf(r17 == true ? 1L : 0L));
            C26829f m1299a = c26830a.m1299a();
            l.d(m1299a, "builder.apply {\n        …ngTime)\n        }.build()");
            abstractC0414a = new ListenableWorker.AbstractC0414a.C0417c(m1299a);
            l.d(abstractC0414a, "Result.success(outputData)");
        } catch (Exception e2) {
            e2.getLocalizedMessage();
            C26829f inputData = getInputData();
            l.d(inputData, "inputData");
            l.d(inputData.m1303d(), "inputData.keyValueMap");
            if (!m1303d.isEmpty()) {
                this.f12963d.mo26148b();
            }
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("rerun_sms_event");
            k kVar = new k("rerun_status", "true");
            k kVar2 = new k("enrichment_status", "false");
            String m1301f = getInputData().m1301f("re_run_context");
            if (m1301f == null) {
                m1301f = "UNKNOWN";
            }
            l.d(m1301f, "inputData.getString(Insi…RUN_CONTEXT) ?: \"UNKNOWN\"");
            m15852a.m15848d(s1.u.i.W(new k[]{kVar, kVar2, new k("re_run_context", m1301f)}));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(s1.u.i.W(new k[]{new k("parsed_message_count", Double.valueOf(s1.u.i.I0(s1.u.i.T(new Integer[]{C22128a.m8556w1(this, "rerun_catg_bank", 0), C22128a.m8556w1(this, "rerun_catg_bill", 0), C22128a.m8556w1(this, "rerun_catg_event", 0), C22128a.m8556w1(this, "rerun_catg_OTP", 0), C22128a.m8556w1(this, "rerun_catg_notif", 0), C22128a.m8556w1(this, "rerun_catg_travel", 0), C22128a.m8556w1(this, "rerun_catg_offers", 0), C22128a.m8556w1(this, "rerun_catg_delivery", 0)})))), new k("message_count", Double.valueOf(getInputData().m1304c("message_count", 0))), new k("parsing_time", Double.valueOf(getInputData().m1302e("parsing_time", 0L))), new k("rerun_exception_count", Double.valueOf(getInputData().m1304c("rerun_exception_count", 0)))}));
            m15852a.m15849c(linkedHashMap);
            GenericRecord build = m15852a.build();
            AbstractC19462a abstractC19462a = this.f12960a;
            l.d(build, "it");
            abstractC19462a.mo13275a(build);
            abstractC0414a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(abstractC0414a, "Result.failure()");
        }
        return abstractC0414a;
    }
}
