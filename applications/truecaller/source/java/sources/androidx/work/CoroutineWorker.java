package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.google.common.util.concurrent.ListenableFuture;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.C26838o;
import p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
import q3.a.g0;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0016\u001a\u00020\u000fH¦@ø\u0001��¢\u0006\u0002\u0010\u0017J\u0011\u0010\u0018\u001a\u00020\u0019H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0017J\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0019\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0019H\u0086@ø\u0001��¢\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0086@ø\u0001��¢\u0006\u0002\u0010$J\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001bR\u001c\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker;", "appContext", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "coroutineContext", "Lkotlinx/coroutines/CoroutineDispatcher;", "getCoroutineContext$annotations", "()V", "getCoroutineContext", "()Lkotlinx/coroutines/CoroutineDispatcher;", "future", "Landroidx/work/impl/utils/futures/SettableFuture;", "Landroidx/work/ListenableWorker$Result;", "getFuture$work_runtime_ktx_release", "()Landroidx/work/impl/utils/futures/SettableFuture;", "job", "Lkotlinx/coroutines/CompletableJob;", "getJob$work_runtime_ktx_release", "()Lkotlinx/coroutines/CompletableJob;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getForegroundInfo", "Landroidx/work/ForegroundInfo;", "getForegroundInfoAsync", "Lcom/google/common/util/concurrent/ListenableFuture;", "onStopped", "", "setForeground", "foregroundInfo", "(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setProgress", RemoteMessageConst.DATA, "Landroidx/work/Data;", "(Landroidx/work/Data;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startWork", "work-runtime-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:androidx/work/CoroutineWorker.class */
public abstract class CoroutineWorker extends ListenableWorker {

    /* renamed from: b */
    public final c<ListenableWorker.AbstractC0414a> f1550b;

    /* renamed from: a */
    public final y f1549a = d.j((p1) null, 1, (Object) null);

    /* renamed from: c */
    public final g0 f1551c = t0.b;

    @Metadata(d1 = {"��\u0006\n��\n\u0002\u0010\u0002\u0010��\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: androidx.work.CoroutineWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/CoroutineWorker$a.class */
    public static final class RunnableC0413a implements Runnable {
        public RunnableC0413a() {
            CoroutineWorker.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (CoroutineWorker.this.f1550b.f75026a instanceof AbstractC26809a.C26812c) {
                d.T(CoroutineWorker.this.f1549a, (CancellationException) null, 1, (Object) null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, "appContext");
        l.e(workerParameters, "params");
        c<ListenableWorker.AbstractC0414a> cVar = new c<>();
        l.d(cVar, "create()");
        this.f1550b = cVar;
        cVar.addListener(new RunnableC0413a(), ((C26822b) getTaskExecutor()).f75051a);
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<C26833i> getForegroundInfoAsync() {
        y j = d.j((p1) null, 1, (Object) null);
        i0 h = d.h(this.f1551c.plus(j));
        C26838o c26838o = new C26838o(j, null, 2);
        d.w2(h, (f) null, (j0) null, new b(c26838o, this, (s1.w.d) null), 3, (Object) null);
        return c26838o;
    }

    /* renamed from: n */
    public abstract Object mo34715n(s1.w.d<? super ListenableWorker.AbstractC0414a> dVar);

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        this.f1550b.cancel(false);
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ListenableWorker.AbstractC0414a> startWork() {
        d.w2(d.h(this.f1551c.plus(this.f1549a)), (f) null, (j0) null, new c(this, (s1.w.d) null), 3, (Object) null);
        return this.f1550b;
    }
}
