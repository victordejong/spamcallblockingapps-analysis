package com.truecaller.insights.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import org.apache.avro.generic.GenericRecord;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.EnumC26674a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p569m.AbstractC10435f;
import s1.k;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\r\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� ,2\u00020\u0001:\u0001\u001dB=\b\u0007\u0012\b\b\u0001\u0010'\u001a\u00020&\u0012\b\b\u0001\u0010)\u001a\u00020(\u0012\u0006\u0010%\u001a\u00020 \u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nR\u001c\u0010\u0011\u001a\u00020\f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001c\u0010%\u001a\u00020 8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006-"}, d2 = {"Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Ls1/s;", "t", "()V", "s", "Le/a/u3/g;", AbstractC2405c.f7629a, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "featuresRegistry", "Le/a/c/b/j;", "d", "Le/a/c/b/j;", "insightsStatusProvider", "Le/a/c/i/m/f;", "e", "Le/a/c/i/m/f;", "insightsSyncStatusManager", "", "", "", "a", "Ljava/util/Map;", "measuresMap", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "n", "()Le/a/q2/a;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;)V", "f", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsResyncEventLogWorker.class */
public final class InsightsResyncEventLogWorker extends TrackedWorker {

    /* renamed from: f */
    public static final C4133a f12976f = new C4133a(null);

    /* renamed from: a */
    public final Map<CharSequence, Double> f12977a = new LinkedHashMap();

    /* renamed from: b */
    public final AbstractC19462a f12978b;

    /* renamed from: c */
    public final C20592g f12979c;

    /* renamed from: d */
    public final AbstractC9691j f12980d;

    /* renamed from: e */
    public final AbstractC10435f f12981e;

    /* renamed from: com.truecaller.insights.workers.InsightsResyncEventLogWorker$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsResyncEventLogWorker$a.class */
    public static final class C4133a implements AbstractC21763i {
        public C4133a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(InsightsResyncEventLogWorker.class), i.c(6L));
            i a = i.a(1L);
            l.d(a, "Duration.standardDays(1)");
            l.e(a, "interval");
            c21762h.f60600a = a;
            EnumC26674a enumC26674a = EnumC26674a.EXPONENTIAL;
            i c = i.c(1L);
            l.d(c, "Duration.standardHours(1)");
            c21762h.m9110d(enumC26674a, c);
            C26825d.C26826a c26826a = c21762h.f60602c;
            c26826a.f75066a = true;
            c26826a.f75069d = true;
            return c21762h;
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "InsightsResyncEventLogWorker";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsightsResyncEventLogWorker(Context context, WorkerParameters workerParameters, AbstractC19462a abstractC19462a, C20592g c20592g, AbstractC9691j abstractC9691j, AbstractC10435f abstractC10435f) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10435f, "insightsSyncStatusManager");
        this.f12978b = abstractC19462a;
        this.f12979c = c20592g;
        this.f12980d = abstractC9691j;
        this.f12981e = abstractC10435f;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        return this.f12978b;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        return this.f12979c;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        return this.f12980d.mo27246n();
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        try {
            m35134s();
            this.f12977a.put("linking_model_time", Double.valueOf(getInputData().m1302e("linking_model_time", 0L)));
            m35133t();
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        } catch (Exception e) {
            C10263b.f30414d.m26508b(e, null);
            this.f12981e.mo26148b();
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("rerun_sms_event");
            m15852a.m15848d(s1.u.i.W(new k[]{new k("rerun_status", "true"), new k("enrichment_status", "true"), new k("pay_pdo_link_status", "true"), new k("status_message", "EVENT_LOGGER_FAILED")}));
            GenericRecord build = m15852a.build();
            AbstractC19462a abstractC19462a = this.f12978b;
            l.d(build, "it");
            abstractC19462a.mo13275a(build);
            ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
            return c0415a;
        }
    }

    /* renamed from: s */
    public final void m35134s() {
        this.f12977a.putAll(s1.u.i.W(new k[]{new k("parsed_message_count", Double.valueOf(s1.u.i.I0(s1.u.i.T(new Integer[]{Integer.valueOf(getInputData().m1304c("rerun_catg_bank", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_bill", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_event", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_OTP", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_notif", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_travel", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_offers", 0)), Integer.valueOf(getInputData().m1304c("rerun_catg_delivery", 0))})))), new k("message_count", Double.valueOf(getInputData().m1304c("message_count", 0))), new k("parsing_time", Double.valueOf(getInputData().m1302e("parsing_time", 0L))), new k("rerun_exception_count", Double.valueOf(getInputData().m1304c("rerun_exception_count", 0)))}));
    }

    /* renamed from: t */
    public final void m35133t() {
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("rerun_sms_event");
        k kVar = new k("rerun_status", "true");
        k kVar2 = new k("enrichment_status", "true");
        String m1301f = getInputData().m1301f("re_run_context");
        if (m1301f == null) {
            m1301f = "UNKNOWN";
        }
        l.d(m1301f, "inputData.getString(Insi…RUN_CONTEXT) ?: \"UNKNOWN\"");
        m15852a.m15848d(s1.u.i.W(new k[]{kVar, kVar2, new k("re_run_context", m1301f)}));
        m15852a.m15849c(s1.u.i.W0(this.f12977a));
        GenericRecord build = m15852a.build();
        AbstractC19462a abstractC19462a = this.f12978b;
        l.d(build, "it");
        abstractC19462a.mo13275a(build);
    }
}
