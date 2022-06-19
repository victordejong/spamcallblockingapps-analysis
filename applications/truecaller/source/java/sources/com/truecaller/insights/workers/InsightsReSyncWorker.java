package com.truecaller.insights.workers;

import android.app.Notification;
import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import com.truecaller.insights.C4030R;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import org.apache.avro.generic.GenericRecord;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p529e.AbstractC9981b;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p569m.AbstractC10424c;
import p193e.p194a.p437c.p552i.p569m.AbstractC10435f;
import p193e.p194a.p437c.p580r.p581d.C10528a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10553h;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.i0;
import s1.a.c;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.y;
import w3.b.a.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� /2\u00020\u0001:\u0001$BE\b\u0007\u0012\b\b\u0001\u0010&\u001a\u00020#\u0012\b\b\u0001\u0010,\u001a\u00020+\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010*\u001a\u00020'¢\u0006\u0004\b-\u0010.J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0014\u001a\u00020\u000f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001e\u001a\u00020\u00198\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u00060"}, d2 = {"Lcom/truecaller/insights/workers/InsightsReSyncWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "", "u", "()Ljava/lang/String;", "Le/a/c/i/m/f;", "e", "Le/a/c/i/m/f;", "insightsSyncStatusManager", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "n", "()Le/a/q2/a;", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/c/b/j;", "d", "Le/a/c/b/j;", "insightsStatusProvider", "Le/a/u3/g;", AbstractC2405c.f7629a, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "featuresRegistry", "Le/a/h4/n;", "t", "()Le/a/h4/n;", "notificationManager", "Landroid/content/Context;", "a", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Le/a/c/i/m/c;", "f", "Le/a/c/i/m/c;", "insightsSyncManager", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;Le/a/c/i/m/c;)V", "g", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsReSyncWorker.class */
public final class InsightsReSyncWorker extends TrackedWorker {

    /* renamed from: g */
    public static final C4131a f12965g = new C4131a(null);

    /* renamed from: a */
    public final Context f12966a;

    /* renamed from: b */
    public final AbstractC19462a f12967b;

    /* renamed from: c */
    public final C20592g f12968c;

    /* renamed from: d */
    public final AbstractC9691j f12969d;

    /* renamed from: e */
    public final AbstractC10435f f12970e;

    /* renamed from: f */
    public final AbstractC10424c f12971f;

    /* renamed from: com.truecaller.insights.workers.InsightsReSyncWorker$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsReSyncWorker$a.class */
    public static final class C4131a implements AbstractC21763i {
        public C4131a(f fVar) {
        }

        /* renamed from: c */
        public static /* synthetic */ void m35138c(C4131a c4131a, String str, boolean z, boolean z2, int i) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                z2 = false;
            }
            c4131a.m35139b(str, z, z2);
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(InsightsReSyncWorker.class), i.c(6L));
            c21762h.m9108f(EnumC26841q.NOT_REQUIRED);
            C26825d.C26826a c26826a = c21762h.f60602c;
            c26826a.f75069d = true;
            c26826a.f75067b = true;
            return c21762h;
        }

        /* renamed from: b */
        public final void m35139b(String str, boolean z, boolean z2) {
            EnumC26841q enumC26841q = EnumC26841q.NOT_REQUIRED;
            l.e(str, AnalyticsConstants.CONTEXT);
            C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
            l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
            EnumC26832h enumC26832h = EnumC26832h.REPLACE;
            c a = d0.a(InsightsReSyncWorker.class);
            i.d(5L);
            l.e(a, "workerClass");
            C26825d.C26826a c26826a = new C26825d.C26826a();
            HashMap hashMap = new HashMap();
            hashMap.put("re_run_param_clean", Boolean.valueOf(z2));
            hashMap.put("re_run_param_notify", Boolean.valueOf(z));
            hashMap.put("re_run_context", str);
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            l.d(c26829f, "data.build()");
            l.e(c26829f, RemoteMessageConst.DATA);
            l.e(enumC26841q, "networkType");
            c26826a.f75068c = enumC26841q;
            C26842r.C26843a c26843a = new C26842r.C26843a(C25225a.m3983O0(a));
            Objects.requireNonNull(c26826a);
            c26843a.f75127c.f74911j = new C26825d(c26826a);
            c26843a.f75127c.f74906e = c26829f;
            C26842r m1272b = c26843a.m1272b();
            l.d(m1272b, "OneTimeWorkRequest.Build…t) }\n            .build()");
            AbstractC26854w m1287a = m1431n.m1287a("InsightsReSyncWorkerOneOff", enumC26832h, m1272b);
            C21762h c21762h = new C21762h(d0.a(InsightsOneOffEnrichmentWorker.class), i.c(6L));
            c21762h.m9108f(enumC26841q);
            C26825d.C26826a c26826a2 = c21762h.f60602c;
            c26826a2.f75069d = true;
            c26826a2.f75067b = true;
            AbstractC26854w m1289b = m1287a.m1289b(c21762h.m9113a());
            C21762h c21762h2 = new C21762h(d0.a(InsightsResyncEventLogWorker.class), i.c(6L));
            i a2 = i.a(1L);
            l.d(a2, "Duration.standardDays(1)");
            l.e(a2, "interval");
            c21762h2.f60600a = a2;
            EnumC26674a enumC26674a = EnumC26674a.EXPONENTIAL;
            i c = i.c(1L);
            l.d(c, "Duration.standardHours(1)");
            c21762h2.m9110d(enumC26674a, c);
            C26825d.C26826a c26826a3 = c21762h2.f60602c;
            c26826a3.f75066a = true;
            c26826a3.f75069d = true;
            m1289b.m1289b(c21762h2.m9113a()).mo1290a();
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "InsightsReSyncWorkerOneOff";
        }
    }

    @e(c = "com.truecaller.insights.workers.InsightsReSyncWorker$work$1", f = "InsightsReSyncWorker.kt", l = {136}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.workers.InsightsReSyncWorker$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/workers/InsightsReSyncWorker$b.class */
    public static final class C4132b extends s1.w.k.a.i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f12972e;

        /* renamed from: g */
        public final /* synthetic */ y f12974g;

        /* renamed from: h */
        public final /* synthetic */ y f12975h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4132b(y yVar, y yVar2, d dVar) {
            super(2, dVar);
            InsightsReSyncWorker.this = r5;
            this.f12974g = yVar;
            this.f12975h = yVar2;
        }

        /* renamed from: i */
        public final d<s> m35137i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4132b(this.f12974g, this.f12975h, dVar);
        }

        /* renamed from: k */
        public final Object m35136k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4132b(this.f12974g, this.f12975h, dVar).m35135s(s.a);
        }

        /* renamed from: s */
        public final Object m35135s(Object obj) {
            a aVar = a.a;
            int i = this.f12972e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10424c abstractC10424c = InsightsReSyncWorker.this.f12971f;
                boolean z = this.f12974g.a;
                boolean z2 = this.f12975h.a;
                this.f12972e = 1;
                Object mo26170b = abstractC10424c.mo26170b(z, z2, this);
                obj = mo26170b;
                if (mo26170b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            k kVar = (k) obj;
            long longValue = ((Number) kVar.a).longValue();
            AbstractC9981b.C9982a c9982a = (AbstractC9981b.C9982a) kVar.b;
            InsightsReSyncWorker.this.f12970e.mo26147c();
            if (this.f12974g.a) {
                InsightsReSyncWorker insightsReSyncWorker = InsightsReSyncWorker.this;
                C26450q c26450q = new C26450q(insightsReSyncWorker.f12966a, insightsReSyncWorker.m35141t().mo19425a("non_spam_sms_v2"));
                c26450q.m1855n("Finished processing the messages");
                c26450q.m1856m("Please open the threads and check whether you have smart notifications");
                c26450q.f74137R.icon = C4030R.C4031drawable.ic_tcx_messages_24dp;
                c26450q.f74152l = 2;
                l.d(c26450q, "NotificationCompat.Build…ationCompat.PRIORITY_MAX)");
                AbstractC14920n m35141t = insightsReSyncWorker.m35141t();
                int currentTimeMillis = (int) System.currentTimeMillis();
                Notification m1865d = c26450q.m1865d();
                l.d(m1865d, "builder.build()");
                m35141t.mo19419g(currentTimeMillis, m1865d);
            }
            InsightsReSyncWorker insightsReSyncWorker2 = InsightsReSyncWorker.this;
            Objects.requireNonNull(insightsReSyncWorker2);
            HashMap hashMap = new HashMap();
            Map<AbstractC10553h, Integer> map = c9982a.f29753b;
            C10528a c10528a = C10528a.f31414b;
            for (Map.Entry<AbstractC10553h, String> entry : C10528a.f31413a.entrySet()) {
                AbstractC10553h key = entry.getKey();
                String value = entry.getValue();
                Integer num = map.get(key);
                if (num == null) {
                    num = 0;
                }
                hashMap.put(value, Integer.valueOf(num.intValue()));
            }
            hashMap.put("message_count", Integer.valueOf(c9982a.f29752a));
            hashMap.put("rerun_exception_count", Integer.valueOf(c9982a.f29754c.size()));
            hashMap.put("parsing_time", Long.valueOf(longValue));
            hashMap.put("re_run_context", insightsReSyncWorker2.m35140u());
            C26829f c26829f = new C26829f(hashMap);
            C26829f.m1300g(c26829f);
            l.d(c26829f, "builder.build()");
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c(c26829f);
            l.d(c0417c, "Result.success(createOut…elapsedTime, parseStats))");
            return c0417c;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsightsReSyncWorker(Context context, WorkerParameters workerParameters, AbstractC19462a abstractC19462a, C20592g c20592g, AbstractC9691j abstractC9691j, AbstractC10435f abstractC10435f, AbstractC10424c abstractC10424c) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10435f, "insightsSyncStatusManager");
        l.e(abstractC10424c, "insightsSyncManager");
        this.f12966a = context;
        this.f12967b = abstractC19462a;
        this.f12968c = c20592g;
        this.f12969d = abstractC9691j;
        this.f12970e = abstractC10435f;
        this.f12971f = abstractC10424c;
    }

    /* renamed from: s */
    public static final void m35142s(String str, boolean z, boolean z2) {
        f12965g.m35139b(str, z, z2);
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        return this.f12967b;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        return this.f12968c;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        return this.f12969d.mo27246n();
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        ListenableWorker.AbstractC0414a.C0415a c0415a;
        try {
            y yVar = new y();
            yVar.a = getInputData().m1305b("re_run_param_clean", false);
            y yVar2 = new y();
            yVar2.a = getInputData().m1305b("re_run_param_notify", false);
            this.f12970e.mo26142h();
            c0415a = (ListenableWorker.AbstractC0414a) s1.a.a.a.v0.f.d.c3((s1.w.f) null, new C4132b(yVar2, yVar, null), 1, (Object) null);
        } catch (Exception e) {
            e.getLocalizedMessage();
            this.f12970e.mo26148b();
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("rerun_sms_event");
            m15852a.m15848d(s1.u.i.W(new k[]{new k("rerun_status", "false"), new k("enrichment_status", "false"), new k("re_run_context", m35140u())}));
            GenericRecord build = m15852a.build();
            AbstractC19462a abstractC19462a = this.f12967b;
            l.d(build, "it");
            abstractC19462a.mo13275a(build);
            C10263b.f30414d.m26508b(e, null);
            c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
        }
        return c0415a;
    }

    /* renamed from: t */
    public final AbstractC14920n m35141t() {
        Context applicationContext = this.f12966a.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            return abstractC14932g.mo19403n();
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }

    /* renamed from: u */
    public final String m35140u() {
        String m1301f = getInputData().m1301f("re_run_context");
        if (m1301f == null) {
            m1301f = "UNKNOWN";
        }
        l.d(m1301f, "inputData.getString(RE_RUN_CONTEXT) ?: \"UNKNOWN\"");
        return m1301f;
    }
}
