package gogolook.callgogolook2.job;

import android.content.Context;
import android.widget.Toast;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import p459j.p460a.p582w0.C13915b3;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \n2\u00020\u0001:\u0001\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\bH\u0096@ø\u0001��¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, m815d2 = {"Lgogolook/callgogolook2/job/TestDailySyncJobWorker;", "Lgogolook/callgogolook2/job/DailySyncJobWorker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/TestDailySyncJobWorker.class */
public final class TestDailySyncJobWorker extends DailySyncJobWorker {

    /* renamed from: d */
    public static final C4564a f11010d = new C4564a(null);

    /* renamed from: c */
    public static final String f11009c = f11009c;

    /* renamed from: c */
    public static final String f11009c = f11009c;

    /* renamed from: gogolook.callgogolook2.job.TestDailySyncJobWorker$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/TestDailySyncJobWorker$a.class */
    public static final class C4564a {
        public C4564a() {
        }

        public /* synthetic */ C4564a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m27904a(C4564a aVar, Context context, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            aVar.m27903b(context, z);
        }

        /* renamed from: a */
        public final void m27905a(Context context, boolean z) {
            C15149k.m377b(context, "context");
            String unused = TestDailySyncJobWorker.f11009c;
            String str = "start [executeWorkNowTest]], resetDau = " + z;
            DailySyncJobWorker.f10979b.m27919a(context, z, TestDailySyncJobWorker.class);
        }

        /* renamed from: b */
        public final void m27903b(Context context, boolean z) {
            C15149k.m377b(context, "context");
            String unused = TestDailySyncJobWorker.f11009c;
            String str = "start [schedulePeriodicTest], resetDau = " + z;
            DailySyncJobWorker.f10979b.m27920a(context, z, C13915b3.m3065a("daily_sync_gap", (long) AdUtils.ONE_DAY), TimeUnit.MILLISECONDS, C13915b3.m3065a("daily_sync_min_gap", (long) AdUtils.TRACK_INSTALL_PERIOD), TimeUnit.MILLISECONDS, ExistingPeriodicWorkPolicy.REPLACE, TestDailySyncJobWorker.class);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/TestDailySyncJobWorker", m472f = "TestDailySyncJobWorker.kt", m471l = {43, 45, 51}, m470m = "doWork")
    /* renamed from: gogolook.callgogolook2.job.TestDailySyncJobWorker$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/TestDailySyncJobWorker$b.class */
    public static final class C4565b extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f11011a;

        /* renamed from: b */
        public int f11012b;

        /* renamed from: d */
        public Object f11014d;

        /* renamed from: e */
        public Object f11015e;

        public C4565b(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f11011a = obj;
            this.f11012b |= Integer.MIN_VALUE;
            return TestDailySyncJobWorker.this.doWork(this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/job/TestDailySyncJobWorker$doWork$2", m472f = "TestDailySyncJobWorker.kt", m471l = {47}, m470m = "invokeSuspend")
    /* renamed from: gogolook.callgogolook2.job.TestDailySyncJobWorker$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/job/TestDailySyncJobWorker$c.class */
    public static final class C4566c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f11016a;

        /* renamed from: b */
        public int f11017b;

        /* renamed from: d */
        public final /* synthetic */ ListenableWorker.Result f11019d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4566c(ListenableWorker.Result result, AbstractC15044d dVar) {
            super(2, dVar);
            this.f11019d = result;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4566c cVar = new C4566c(this.f11019d, dVar);
            cVar.f11016a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C4566c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f11017b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                Context c = TestDailySyncJobWorker.this.m27935c();
                Toast.makeText(c, "TestDailySyncJob result: " + this.f11019d, 1).show();
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestDailySyncJobWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        C15149k.m377b(context, "context");
        C15149k.m377b(workerParameters, "params");
    }

    /* renamed from: a */
    public static final void m27908a(Context context, boolean z) {
        f11010d.m27905a(context, z);
    }

    /* renamed from: c */
    public static final void m27907c(Context context) {
        C4564a.m27904a(f11010d, context, false, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0114  */
    @Override // gogolook.callgogolook2.job.DailySyncJobWorker, androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(p626l.p634w.AbstractC15044d<? super androidx.work.ListenableWorker.Result> r7) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.job.TestDailySyncJobWorker.doWork(l.w.d):java.lang.Object");
    }
}
