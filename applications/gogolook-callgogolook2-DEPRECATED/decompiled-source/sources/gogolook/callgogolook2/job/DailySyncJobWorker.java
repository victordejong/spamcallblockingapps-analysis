package gogolook.callgogolook2.job;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.Operation;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.util.control.VersionManager;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p569u0.C13666e;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C13987e3;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14172t3;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p596x.p599m.C14427a;
import p459j.p460a.p603y.C14447a;
import p626l.C14978j;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p631e0.C14966w;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0016\u0018�� \"2\u00020\u0001:\u0001\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J'\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082\bJ\b\u0010\u0011\u001a\u00020\nH\u0003J\u0011\u0010\u0012\u001a\u00020\u0013H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\nH\u0002J!\u0010\u0016\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000e\u0012\u0004\u0012\u00020\u00100\u00180\u0017H\u0082\bJ!\u0010\u0019\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000e\u0012\u0004\u0012\u00020\u00100\u00180\u0017H\u0082\bJ\b\u0010\u001a\u001a\u00020\u001bH\u0003J\b\u0010\u001c\u001a\u00020\nH\u0003J\u0011\u0010\u001d\u001a\u00020\u0013H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0014J\b\u0010\u001e\u001a\u00020\nH\u0003J\b\u0010\u001f\u001a\u00020\nH\u0003J\b\u0010 \u001a\u00020\nH\u0003J\b\u0010!\u001a\u00020\nH\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/job/DailySyncJobWorker;", "Landroidx/work/CoroutineWorker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "getContext", "()Landroid/content/Context;", "catchTaskException", "", NotificationCompat.CATEGORY_EVENT, "Lgogolook/callgogolook2/job/DailySyncJobEvent;", "task", "Lkotlin/Function0;", "taskDescription", "", "checkNotificationTemplate", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "downloadModelAndCheckShouldInfer", "generateIoThreadJobList", "", "Lkotlin/Pair;", "generateMainThreadJobList", "notifyPremiumOfflineDbExpire", "", "reportSimNumber", "runDailyWorks", "sendNotificationIfNeed", "sendTrackingEvent", "updateGgpStatus", "updateIapStatus", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker.class */
public class DailySyncJobWorker extends CoroutineWorker {

    /* renamed from: b */
    public static final C4556a f10979b = new C4556a(null);

    /* renamed from: a */
    public final Context f10980a;

    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$a.class */
    public static final class C4556a {
        public C4556a() {
        }

        public /* synthetic */ C4556a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m27916a(C4556a aVar, Context context, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            aVar.m27921a(context, z);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public static /* synthetic */ void m27915a(C4556a aVar, Context context, boolean z, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, Class cls, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                j = AdUtils.ONE_DAY;
            }
            if ((i & 8) != 0) {
                timeUnit = TimeUnit.MILLISECONDS;
            }
            if ((i & 16) != 0) {
                j2 = AdUtils.TRACK_INSTALL_PERIOD;
            }
            if ((i & 32) != 0) {
                timeUnit2 = TimeUnit.MILLISECONDS;
            }
            if ((i & 64) != 0) {
                existingPeriodicWorkPolicy = ExistingPeriodicWorkPolicy.KEEP;
            }
            if ((i & 128) != 0) {
                cls = DailySyncJobWorker.class;
            }
            aVar.m27920a(context, z, j, timeUnit, j2, timeUnit2, existingPeriodicWorkPolicy, cls);
        }

        /* renamed from: a */
        public final Constraints m27924a() {
            Constraints build = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
            C15149k.m383a((Object) build, "Constraints.Builder()\n  …\n                .build()");
            return build;
        }

        /* renamed from: a */
        public final Data m27914a(boolean z) {
            Data build = new Data.Builder().putBoolean("reset_dau", z).build();
            C15149k.m383a((Object) build, "Data.Builder()\n         …\n                .build()");
            return build;
        }

        /* renamed from: a */
        public final OneTimeWorkRequest m27918a(Data data, Constraints constraints, Class<? extends ListenableWorker> cls) {
            OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(cls).setInputData(data).setConstraints(constraints).setBackoffCriteria(BackoffPolicy.LINEAR, 10000L, TimeUnit.MILLISECONDS).build();
            C15149k.m383a((Object) build, "OneTimeWorkRequest.Build…\n                .build()");
            return build;
        }

        /* renamed from: a */
        public final PeriodicWorkRequest m27923a(long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2, Data data, Constraints constraints, Class<? extends ListenableWorker> cls) {
            PeriodicWorkRequest build = new PeriodicWorkRequest.Builder(cls, j, timeUnit, j2, timeUnit2).setInputData(data).setConstraints(constraints).setBackoffCriteria(BackoffPolicy.LINEAR, 10000L, TimeUnit.MILLISECONDS).build();
            C15149k.m383a((Object) build, "PeriodicWorkRequest.Buil…\n                .build()");
            return build;
        }

        /* renamed from: a */
        public final void m27922a(Context context) {
            C15149k.m377b(context, "context");
            m27909c(context);
            m27912b(context);
        }

        /* renamed from: a */
        public final void m27921a(Context context, boolean z) {
            C15149k.m377b(context, "context");
            m27915a(this, context, z, 0L, null, 0L, null, null, null, C14427a.f32275e, null);
        }

        /* renamed from: a */
        public final void m27920a(Context context, boolean z, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, Class<? extends ListenableWorker> cls) {
            C15149k.m377b(context, "context");
            C15149k.m377b(timeUnit, "repeatIntervalTimeUnit");
            C15149k.m377b(timeUnit2, "flexIntervalTimeUnit");
            C15149k.m377b(existingPeriodicWorkPolicy, "existingPeriodicWorkPolicy");
            C15149k.m377b(cls, "workerClass");
            WorkManager.getInstance(context).enqueueUniquePeriodicWork("wc_periodic_request", existingPeriodicWorkPolicy, m27923a(j, timeUnit, j2, timeUnit2, m27914a(z), m27924a(), cls));
        }

        /* renamed from: a */
        public final void m27919a(Context context, boolean z, Class<? extends ListenableWorker> cls) {
            C15149k.m377b(context, "context");
            C15149k.m377b(cls, "workerClass");
            WorkManager.getInstance(context).enqueueUniqueWork("wc_one_time_request", ExistingWorkPolicy.REPLACE, m27918a(m27914a(z), m27924a(), cls));
        }

        /* renamed from: b */
        public final long m27913b() {
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            boolean b = g.m23335b();
            long j = AdUtils.TRACK_INSTALL_PERIOD;
            if (b) {
                j = C13915b3.m3065a("daily_sync_min_gap", (long) AdUtils.TRACK_INSTALL_PERIOD);
            }
            return j;
        }

        /* renamed from: b */
        public final Operation m27912b(Context context) {
            C15149k.m377b(context, "context");
            Operation cancelUniqueWork = WorkManager.getInstance(context).cancelUniqueWork("wc_one_time_request");
            C15149k.m383a((Object) cancelUniqueWork, "WorkManager.getInstance(…rk(WORK_ONE_TIME_REQUEST)");
            return cancelUniqueWork;
        }

        /* renamed from: c */
        public final long m27910c() {
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            long j = 604800000;
            if (g.m23335b()) {
                j = C13915b3.m3065a("report_sim_num_gap", 604800000L);
            }
            return j;
        }

        /* renamed from: c */
        public final Operation m27909c(Context context) {
            C15149k.m377b(context, "context");
            Operation cancelUniqueWork = WorkManager.getInstance(context).cancelUniqueWork("wc_periodic_request");
            C15149k.m383a((Object) cancelUniqueWork, "WorkManager.getInstance(…rk(WORK_PERIODIC_REQUEST)");
            return cancelUniqueWork;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/DailySyncJobWorker", m472f = "DailySyncJobWorker.kt", m471l = {338, 345}, m470m = "doWork$suspendImpl")
    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$b.class */
    public static final class C4557b extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f10981a;

        /* renamed from: b */
        public int f10982b;

        /* renamed from: d */
        public Object f10984d;

        public C4557b(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f10981a = obj;
            this.f10982b |= Integer.MIN_VALUE;
            return DailySyncJobWorker.m27940a(DailySyncJobWorker.this, this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/DailySyncJobWorker$doWork$2", m472f = "DailySyncJobWorker.kt", m471l = {338, 341}, m470m = "invokeSuspend")
    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$c.class */
    public static final class C4558c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a */
        public CoroutineScope f10985a;

        /* renamed from: b */
        public int f10986b;

        public C4558c(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4558c cVar = new C4558c(dVar);
            cVar.f10985a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super ListenableWorker.Result> dVar) {
            return ((C4558c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            ListenableWorker.Result result;
            Object a = C15064c.m478a();
            int i = this.f10986b;
            try {
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    DailySyncJobWorker dailySyncJobWorker = DailySyncJobWorker.this;
                    this.f10986b = 1;
                    Object a2 = dailySyncJobWorker.m27939a(this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                result = (ListenableWorker.Result) obj;
            } catch (Throwable th) {
                C13973d4.m2952a(new Exception("Unknown reason exception: " + th));
                result = ListenableWorker.Result.retry();
            }
            return result;
        }
    }

    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$d.class */
    public static final class C4559d implements C11876e.AbstractC11878b {

        /* renamed from: b */
        public final /* synthetic */ C11876e f10989b;

        public C4559d(C11876e eVar) {
            this.f10989b = eVar;
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.C11876e.AbstractC11878b
        /* renamed from: a */
        public void mo7999a() {
            if (this.f10989b.m8004b()) {
                this.f10989b.m8014a(DailySyncJobWorker.this.m27935c());
            }
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.C11876e.AbstractC11878b
        /* renamed from: b */
        public void mo7998b() {
            if (this.f10989b.m8004b()) {
                this.f10989b.m8014a(DailySyncJobWorker.this.m27935c());
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/DailySyncJobWorker", m472f = "DailySyncJobWorker.kt", m471l = {347, 375, 381}, m470m = "runDailyWorks")
    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$e.class */
    public static final class C4560e extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f10990a;

        /* renamed from: b */
        public int f10991b;

        /* renamed from: d */
        public Object f10993d;

        /* renamed from: e */
        public Object f10994e;

        /* renamed from: f */
        public Object f10995f;

        /* renamed from: g */
        public Object f10996g;

        /* renamed from: h */
        public boolean f10997h;

        /* renamed from: i */
        public int f10998i;

        public C4560e(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f10990a = obj;
            this.f10991b |= Integer.MIN_VALUE;
            return DailySyncJobWorker.this.m27939a(this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/DailySyncJobWorker$runDailyWorks$2", m472f = "DailySyncJobWorker.kt", m471l = {366}, m470m = "invokeSuspend")
    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$f.class */
    public static final class C4561f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f10999a;

        /* renamed from: b */
        public int f11000b;

        /* renamed from: d */
        public final /* synthetic */ List f11002d;

        /* renamed from: e */
        public final /* synthetic */ C14447a f11003e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4561f(List list, C14447a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f11002d = list;
            this.f11003e = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4561f fVar = new C4561f(this.f11002d, this.f11003e, dVar);
            fVar.f10999a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C4561f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f11000b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13978e.f31386a.m9459a("prefs_last_online_task", (String) C15066b.m475a(System.currentTimeMillis()));
                for (C14978j jVar : this.f11002d) {
                    AbstractC15107a aVar = (AbstractC15107a) jVar.m661a();
                    String str = (String) jVar.m660b();
                    C14447a aVar2 = this.f11003e;
                    try {
                        aVar.invoke();
                        aVar2.m1276g();
                    } catch (Throwable th) {
                        C13973d4.m2952a(new Exception(str + ": " + th));
                        aVar2.m1277f();
                    }
                }
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/DailySyncJobWorker$runDailyWorks$3", m472f = "DailySyncJobWorker.kt", m471l = {375}, m470m = "invokeSuspend")
    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$g.class */
    public static final class C4562g extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f11004a;

        /* renamed from: b */
        public int f11005b;

        /* renamed from: d */
        public final /* synthetic */ List f11007d;

        /* renamed from: e */
        public final /* synthetic */ C14447a f11008e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4562g(List list, C14447a aVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f11007d = list;
            this.f11008e = aVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4562g gVar = new C4562g(this.f11007d, this.f11008e, dVar);
            gVar.f11004a = (CoroutineScope) obj;
            return gVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C4562g) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f11005b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                for (C14978j jVar : this.f11007d) {
                    AbstractC15107a aVar = (AbstractC15107a) jVar.m661a();
                    String str = (String) jVar.m660b();
                    C14447a aVar2 = this.f11008e;
                    try {
                        aVar.invoke();
                        aVar2.m1276g();
                    } catch (Throwable th) {
                        C13973d4.m2952a(new Exception(str + ": " + th));
                        aVar2.m1277f();
                    }
                }
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.job.DailySyncJobWorker$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/DailySyncJobWorker$h.class */
    public static final class C4563h implements C13760c.AbstractC13762b {
        @Override // p459j.p460a.p576w.p577n.C13760c.AbstractC13762b
        /* renamed from: a */
        public void mo1469a(boolean z) {
            C14063l4.m2661e();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DailySyncJobWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        C15149k.m377b(context, "context");
        C15149k.m377b(workerParameters, "params");
        this.f10980a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object m27940a(gogolook.callgogolook2.job.DailySyncJobWorker r5, p626l.p634w.AbstractC15044d r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof gogolook.callgogolook2.job.DailySyncJobWorker.C4557b
            if (r0 == 0) goto L_0x0025
            r0 = r6
            gogolook.callgogolook2.job.DailySyncJobWorker$b r0 = (gogolook.callgogolook2.job.DailySyncJobWorker.C4557b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f10982b
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f10982b = r1
            r0 = r7
            r6 = r0
            goto L_0x002f
        L_0x0025:
            gogolook.callgogolook2.job.DailySyncJobWorker$b r0 = new gogolook.callgogolook2.job.DailySyncJobWorker$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L_0x002f:
            r0 = r6
            java.lang.Object r0 = r0.f10981a
            r7 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r9 = r0
            r0 = r6
            int r0 = r0.f10982b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r6
            java.lang.Object r0 = r0.f10984d
            gogolook.callgogolook2.job.DailySyncJobWorker r0 = (gogolook.callgogolook2.job.DailySyncJobWorker) r0
            r5 = r0
            r0 = r7
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x005b
            r0 = r7
            r5 = r0
            goto L_0x0099
        L_0x005b:
            r0 = r7
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r7
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x00a1
            gogolook.callgogolook2.job.DailySyncJobWorker$c r0 = new gogolook.callgogolook2.job.DailySyncJobWorker$c
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = r5
            r0.f10984d = r1
            r0 = r6
            r1 = 1
            r0.f10982b = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r0, r1)
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = r9
            if (r0 != r1) goto L_0x0099
            r0 = r9
            return r0
        L_0x0099:
            r0 = r5
            java.lang.String r1 = "coroutineScope {\n       …t.retry()\n        }\n    }"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r5
            return r0
        L_0x00a1:
            r0 = r7
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.job.DailySyncJobWorker.m27940a(gogolook.callgogolook2.job.DailySyncJobWorker, l.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public static final void m27942a(Context context) {
        f10979b.m27922a(context);
    }

    /* renamed from: b */
    public static final void m27937b(Context context) {
        C4556a.m27916a(f10979b, context, false, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0327  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27939a(p626l.p634w.AbstractC15044d<? super androidx.work.ListenableWorker.Result> r9) {
        /*
            Method dump skipped, instructions count: 951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.job.DailySyncJobWorker.m27939a(l.w.d):java.lang.Object");
    }

    @MainThread
    /* renamed from: a */
    public final void m27943a() {
        new C13666e(MyApplication.m29013o()).m3705a(MyApplication.m29013o());
    }

    /* renamed from: b */
    public final void m27938b() {
        C11876e eVar = new C11876e();
        if (C12758e.m5408h()) {
            eVar.m8013a(this.f10980a, new C4559d(eVar));
        } else if (C12758e.m5409g() && eVar.m8004b()) {
            eVar.m8014a(this.f10980a);
        }
    }

    /* renamed from: c */
    public final Context m27935c() {
        return this.f10980a;
    }

    @WorkerThread
    /* renamed from: d */
    public final boolean m27933d() {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        int i = 3;
        if (!C14217x3.m2197a(currentTimeMillis, C13915b3.m3058b("pref_premiumdb_expire_time", 3))) {
            i = C14217x3.m2197a(currentTimeMillis, C13915b3.m3058b("pref_premiumdb_expire_time", 1)) ? 1 : C14217x3.m2197a(currentTimeMillis, C13915b3.m3058b("pref_premiumdb_expire_time", 0)) ? 0 : -1;
        }
        if (i < 0 || C13915b3.m3065a("pref_premiumdb_expire_last_shown_time", 0L) + AdUtils.ONE_DAY >= currentTimeMillis || C14021h2.m2779g()) {
            return false;
        }
        C13915b3.m3057b("pref_premiumdb_expire_last_shown_time", currentTimeMillis);
        Intent a = OfflineDbActivity.m26782a(this.f10980a, "notification");
        a.putExtra("intent_expire", true);
        PendingIntent activity = PendingIntent.getActivity(this.f10980a, 1992, a, 134217728);
        String string = i == 0 ? this.f10980a.getString(R$string.offline_db_expired_notification_title) : this.f10980a.getString(R$string.offline_db_expiring_notification_title);
        if (i == 0) {
            str = this.f10980a.getString(R$string.offline_db_expired_notification_content);
        } else {
            C15136c0 c0Var = C15136c0.f33133a;
            String string2 = this.f10980a.getString(R$string.offline_db_expiring_notification_content);
            C15149k.m383a((Object) string2, "context.getString(R.stri…ing_notification_content)");
            Object[] objArr = {String.valueOf(i)};
            str = String.format(string2, Arrays.copyOf(objArr, objArr.length));
            C15149k.m383a((Object) str, "java.lang.String.format(format, *args)");
        }
        NotificationCompat.Builder priority = C14173t4.m2307a(this.f10980a).setContentTitle(string).setContentText(str).setStyle(new NotificationCompat.BigTextStyle().bigText(str)).setContentIntent(activity).setPriority(Integer.MAX_VALUE);
        Object systemService = this.f10980a.getSystemService("notification");
        if (systemService != null) {
            ((NotificationManager) systemService).notify(1992, priority.build());
            return true;
        }
        throw new C14986p("null cannot be cast to non-null type android.app.NotificationManager");
    }

    @Override // androidx.work.CoroutineWorker
    public Object doWork(AbstractC15044d<? super ListenableWorker.Result> dVar) {
        return m27940a(this, dVar);
    }

    @WorkerThread
    /* renamed from: e */
    public final void m27931e() {
        String str = "";
        if (C13891a.m3141u() && System.currentTimeMillis() - C13978e.f31386a.m9460a("last_report_sim_num_time", (Long) 0L) > f10979b.m27910c()) {
            Object systemService = this.f10980a.getSystemService("phone");
            if (systemService != null) {
                TelephonyManager telephonyManager = (TelephonyManager) systemService;
                try {
                    String line1Number = telephonyManager.getLine1Number();
                    if (line1Number != null) {
                        str = line1Number;
                    }
                } catch (SecurityException e) {
                }
                C14289m.m1882a(str.length() > 0, telephonyManager.getSimOperatorName());
                if (str.length() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    JSONObject jSONObject = new JSONObject();
                    String l = C14108o4.m2474l(str);
                    C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(simNumber)");
                    jSONArray.put(jSONObject.put("number", C14966w.m718a(l, "+", "", false, 4, (Object) null)).put("owner", 1).put("reporttime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(System.currentTimeMillis()))));
                    C14261f.m1974a("telecom_report_api_called", (Bundle) null);
                    C12378a.C12380b c = C12378a.m6276a(C12378a.EnumC12382d.POST_REPORT_TELECOM, new JSONObject().put("reportnumbers", jSONArray), new String[0]).m6261c();
                    if (c != null && c.f27921b == 200) {
                        C13978e.f31386a.m9459a("last_report_sim_num_time", (String) Long.valueOf(System.currentTimeMillis()));
                        return;
                    }
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.telephony.TelephonyManager");
        }
    }

    @MainThread
    /* renamed from: f */
    public final void m27929f() {
        if (!VersionManager.m25992e()) {
            m27943a();
        }
    }

    @WorkerThread
    /* renamed from: g */
    public final void m27927g() {
        try {
            C14289m.m1880b();
        } catch (Throwable th) {
            C13973d4.m2952a(new Exception("OfflineWorks: Track active daily: " + th));
        }
        try {
            C14289m.m1843l();
        } catch (Throwable th2) {
            C13973d4.m2952a(new Exception("OfflineWorks: Track GF dau: " + th2));
        }
        try {
            C13987e3.m2928c();
        } catch (Throwable th3) {
            C13973d4.m2952a(new Exception("OfflineWorks: Upload setting info: " + th3));
        }
        try {
            C6357a.m23041a();
        } catch (Throwable th4) {
            C13973d4.m2952a(new Exception("OfflineWorks: Check key store status: " + th4));
        }
        try {
            C14356f.m1485a(5);
        } catch (Exception e) {
            C13973d4.m2952a(new Exception("OfflineWorks: Aggregate call logs: " + e));
        }
        try {
            SyncMessagesAction.m27654z();
        } catch (Exception e2) {
            C13973d4.m2952a(new Exception("OfflineWorks: Aggregate sms logs: " + e2));
        }
        try {
            if (C14217x3.m2137h(this.f10980a)) {
                C6334a.m23211s().m23213q();
                C14261f.m1974a("gga_flush", (Bundle) null);
            }
        } catch (Throwable th5) {
            C13973d4.m2952a(new Exception("OfflineWorks: Send API queue task: " + th5));
        }
        try {
            m27933d();
        } catch (Throwable th6) {
            C13973d4.m2952a(new Exception("OfflineWorks: Remind premium DB expired: " + th6));
        }
    }

    @WorkerThread
    /* renamed from: h */
    public final void m27926h() {
        if (!C14137r4.m2372f()) {
            C13760c.f30875d.m3487a().m3492a(Dispatchers.getIO());
        }
    }

    @WorkerThread
    /* renamed from: i */
    public final void m27925i() {
        if (C14137r4.m2372f()) {
            try {
                C13760c.m3495a(C13760c.f30875d.m3487a(), new C14172t3(Dispatchers.getUnconfined()), new C4563h(), null, 4, null);
            } catch (Throwable th) {
                C13973d4.m2952a(new Exception("DailySyncJobWorker: Get user IAP status: " + th));
            }
            try {
                C13760c.m3496a(C13760c.f30875d.m3487a(), Dispatchers.getUnconfined(), (AbstractC12402b) null, 2, (Object) null);
            } catch (Throwable th2) {
                C13973d4.m2952a(new Exception("DailySyncJobWorker: Get user subscription status: " + th2));
            }
        }
    }
}
