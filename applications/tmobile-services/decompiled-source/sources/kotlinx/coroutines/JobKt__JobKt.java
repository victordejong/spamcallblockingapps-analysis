package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0014\u001a \u0010\u0004\u001a\u00020\u00032\u000e\b\u0004\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010��H\u0087\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n\u001a\u001b\u0010\f\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\u000b\u001a\u0013\u0010\u000e\u001a\u00020\u0001*\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001f\u0010\u000e\u001a\u00020\u0012*\u00020\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u000e\u0010\u0013\u001a#\u0010\u000e\u001a\u00020\u0001*\u00020\r2\u0010\b\u0002\u0010\u0011\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015¢\u0006\u0004\b\u000e\u0010\u0016\u001a%\u0010\u000e\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u000e\u0010\u0019\u001a\u0017\u0010\u001a\u001a\u00020\u0001*\u00020\u0006H\u0086@ø\u0001��¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0013\u0010\u001c\u001a\u00020\u0001*\u00020\rH\u0007¢\u0006\u0004\b\u001c\u0010\u000f\u001a\u001f\u0010\u001c\u001a\u00020\u0001*\u00020\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u001c\u0010\u001d\u001a#\u0010\u001c\u001a\u00020\u0001*\u00020\r2\u0010\b\u0002\u0010\u0011\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015¢\u0006\u0004\b\u001c\u0010\u0016\u001a\u0013\u0010\u001c\u001a\u00020\u0001*\u00020\u0006H\u0007¢\u0006\u0004\b\u001c\u0010\u001e\u001a\u001f\u0010\u001c\u001a\u00020\u0001*\u00020\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007¢\u0006\u0004\b\u001c\u0010\u001f\u001a#\u0010\u001c\u001a\u00020\u0001*\u00020\u00062\u0010\b\u0002\u0010\u0011\u001a\n\u0018\u00010\u0014j\u0004\u0018\u0001`\u0015¢\u0006\u0004\b\u001c\u0010 \u001a\u001b\u0010\"\u001a\u00020\u0003*\u00020\u00062\u0006\u0010!\u001a\u00020\u0003H��¢\u0006\u0004\b\"\u0010#\u001a\u0011\u0010$\u001a\u00020\u0001*\u00020\r¢\u0006\u0004\b$\u0010\u000f\u001a\u0011\u0010$\u001a\u00020\u0001*\u00020\u0006¢\u0006\u0004\b$\u0010\u001e\u001a\u001d\u0010(\u001a\u00020\u0010*\u0004\u0018\u00010\u00102\u0006\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b&\u0010'\"\u0017\u0010)\u001a\u00020\u0012*\u00020\r8F@\u0006¢\u0006\u0006\u001a\u0004\b)\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lkotlin/Function0;", "", "block", "Lkotlinx/coroutines/DisposableHandle;", "DisposableHandle", "(Lkotlin/Function0;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/Job;", "parent", "Lkotlinx/coroutines/CompletableJob;", "Job", "(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;", "(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;", "Job0", "Lkotlin/coroutines/CoroutineContext;", "cancel", "(Lkotlin/coroutines/CoroutineContext;)V", "", "cause", "", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V", "", "message", "(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;)V", "cancelAndJoin", "(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelChildren", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V", "(Lkotlinx/coroutines/Job;)V", "(Lkotlinx/coroutines/Job;Ljava/lang/Throwable;)V", "(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;)V", "handle", "disposeOnCompletion", "(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;", "ensureActive", "job", "orCancellation$JobKt__JobKt", "(Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "orCancellation", "isActive", "(Lkotlin/coroutines/CoroutineContext;)Z", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/JobKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobKt__JobKt.class */
public final /* synthetic */ class JobKt__JobKt {
    @NotNull
    /* renamed from: a */
    public static final CompletableJob m1209a(@Nullable Job job) {
        return new JobImpl(job);
    }

    /* renamed from: b */
    public static /* synthetic */ CompletableJob m1208b(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return JobKt.m1218a(job);
    }

    /* renamed from: c */
    public static final void m1207c(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.f21198d);
        if (job != null) {
            job.mo1002a(cancellationException);
        }
    }

    /* renamed from: d */
    public static /* synthetic */ void m1206d(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.m1216c(coroutineContext, cancellationException);
    }

    @NotNull
    /* renamed from: e */
    public static final DisposableHandle m1205e(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return job.mo1123B(new DisposeOnCompletion(job, disposableHandle));
    }

    /* renamed from: f */
    public static final void m1204f(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.f21198d);
        if (job != null) {
            JobKt.m1211h(job);
        }
    }

    /* renamed from: g */
    public static final void m1203g(@NotNull Job job) {
        if (!job.isActive()) {
            throw job.mo1119m();
        }
    }
}
