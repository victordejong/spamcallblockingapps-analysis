package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.a.c;
import androidx.work.impl.utils.b.a;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.af;
import kotlinx.coroutines.az;
import kotlinx.coroutines.bx;
import kotlinx.coroutines.x;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b&\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0016\u001a\u00020\u000fH¦@ø\u0001��¢\u0006\u0002\u0010\u0017J\u0006\u0010\u0018\u001a\u00020\u0019J\u0019\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@ø\u0001��¢\u0006\u0002\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0086@ø\u0001��¢\u0006\u0002\u0010!J\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000f0#R\u001c\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker;", "appContext", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "coroutineContext", "Lkotlinx/coroutines/CoroutineDispatcher;", "getCoroutineContext$annotations", "()V", "getCoroutineContext", "()Lkotlinx/coroutines/CoroutineDispatcher;", "future", "Landroidx/work/impl/utils/futures/SettableFuture;", "Landroidx/work/ListenableWorker$Result;", "getFuture$work_runtime_ktx_release", "()Landroidx/work/impl/utils/futures/SettableFuture;", "job", "Lkotlinx/coroutines/CompletableJob;", "getJob$work_runtime_ktx_release", "()Lkotlinx/coroutines/CompletableJob;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onStopped", "", "setForeground", "foregroundInfo", "Landroidx/work/ForegroundInfo;", "(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setProgress", "data", "Landroidx/work/Data;", "(Landroidx/work/Data;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startWork", "Lcom/google/common/util/concurrent/ListenableFuture;", "work-runtime-ktx_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes-dex2jar.jar:androidx/work/CoroutineWorker.class */
public abstract class CoroutineWorker extends ListenableWorker {

    /* renamed from: b  reason: collision with root package name */
    final c<ListenableWorker.a> f5952b;

    /* renamed from: a  reason: collision with root package name */
    final x f5951a = new bx(null);

    /* renamed from: c  reason: collision with root package name */
    private final af f5953c = az.a();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context appContext, WorkerParameters params) {
        super(appContext, params);
        p.d(appContext, "appContext");
        p.d(params, "params");
        c<ListenableWorker.a> a2 = c.a();
        p.b(a2, "SettableFuture.create()");
        this.f5952b = a2;
        Runnable runnable = new Runnable() { // from class: androidx.work.CoroutineWorker.1
            @Override // java.lang.Runnable
            public final void run() {
                if (CoroutineWorker.this.f5952b.isCancelled()) {
                    CoroutineWorker.this.f5951a.a((CancellationException) null);
                }
            }
        };
        a taskExecutor = getTaskExecutor();
        p.b(taskExecutor, "taskExecutor");
        a2.a(runnable, taskExecutor.b());
    }
}
