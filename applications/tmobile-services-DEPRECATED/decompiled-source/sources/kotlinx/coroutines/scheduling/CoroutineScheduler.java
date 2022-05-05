package kotlinx.coroutines.scheduling;

import android.support.p001v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.TimeSource;
import kotlinx.coroutines.TimeSourceKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018�� ^2\u00020\u00012\u00020\u0002:\u0003^_`B+\u0012\u0006\u0010L\u001a\u00020\n\u0012\u0006\u0010V\u001a\u00020\n\u0012\b\b\u0002\u0010S\u001a\u00020\b\u0012\b\b\u0002\u0010W\u001a\u00020A¢\u0006\u0004\b\\\u0010]J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0086\b¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0082\b¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u001a\u001a\u00020\u00032\n\u0010\u0015\u001a\u00060\u0013j\u0002`\u00142\u0006\u0010\u0017\u001a\u00020\u0016H��¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0082\b¢\u0006\u0004\b\u001b\u0010\fJ\u0015\u0010\u001d\u001a\b\u0018\u00010\u001cR\u00020��H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u000eH\u0082\b¢\u0006\u0004\b\u001f\u0010\u0010J\u0010\u0010 \u001a\u00020\nH\u0082\b¢\u0006\u0004\b \u0010\u0012J-\u0010\"\u001a\u00020\u000e2\n\u0010\u0015\u001a\u00060\u0013j\u0002`\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010!\u001a\u00020\u0005¢\u0006\u0004\b\"\u0010#J\u001b\u0010%\u001a\u00020\u000e2\n\u0010$\u001a\u00060\u0013j\u0002`\u0014H\u0016¢\u0006\u0004\b%\u0010&J\u0010\u0010'\u001a\u00020\bH\u0082\b¢\u0006\u0004\b'\u0010(J\u0010\u0010)\u001a\u00020\nH\u0082\b¢\u0006\u0004\b)\u0010\u0012J\u001b\u0010+\u001a\u00020\n2\n\u0010*\u001a\u00060\u001cR\u00020��H\u0002¢\u0006\u0004\b+\u0010,J\u0015\u0010-\u001a\b\u0018\u00010\u001cR\u00020��H\u0002¢\u0006\u0004\b-\u0010\u001eJ\u001b\u00100\u001a\u00020\u00052\n\u0010*\u001a\u00060\u001cR\u00020��H��¢\u0006\u0004\b.\u0010/J+\u00105\u001a\u00020\u000e2\n\u0010*\u001a\u00060\u001cR\u00020��2\u0006\u00101\u001a\u00020\n2\u0006\u00102\u001a\u00020\nH��¢\u0006\u0004\b3\u00104J\u0010\u00106\u001a\u00020\bH\u0082\b¢\u0006\u0004\b6\u0010(J\u0015\u00107\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b7\u00108J\u0015\u0010:\u001a\u00020\u000e2\u0006\u00109\u001a\u00020\b¢\u0006\u0004\b:\u0010;J\u0017\u0010=\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u0005H\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010@\u001a\u00020\u000eH��¢\u0006\u0004\b?\u0010\u0010J\u000f\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u00020\u0005H\u0082\b¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\u0005H\u0002¢\u0006\u0004\bH\u0010EJ+\u0010I\u001a\u0004\u0018\u00010\u0003*\b\u0018\u00010\u001cR\u00020��2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\bI\u0010JR\u0017\u0010\u000b\u001a\u00020\n8Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bK\u0010\u0012R\u0016\u0010L\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u0017\u0010\u001b\u001a\u00020\n8Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bN\u0010\u0012R\u0016\u0010P\u001a\u00020O8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010R\u001a\u00020O8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bR\u0010QR\u0016\u0010S\u001a\u00020\b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0013\u0010U\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\bU\u0010ER\u0016\u0010V\u001a\u00020\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bV\u0010MR\u0016\u0010W\u001a\u00020A8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bW\u0010XR\"\u0010Z\u001a\u000e\u0012\n\u0012\b\u0018\u00010\u001cR\u00020��0Y8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bZ\u0010[¨\u0006a"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/scheduling/Task;", "task", "", "addToGlobalQueue", "(Lkotlinx/coroutines/scheduling/Task;)Z", "", "state", "", "availableCpuPermits", "(J)I", "blockingTasks", "", "close", "()V", "createNewWorker", "()I", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "createTask$kotlinx_coroutines_core", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;", "createTask", "createdWorkers", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "currentWorker", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "decrementBlockingTasks", "decrementCreatedWorkers", "tailDispatch", "dispatch", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V", "command", "execute", "(Ljava/lang/Runnable;)V", "incrementBlockingTasks", "()J", "incrementCreatedWorkers", "worker", "parkedWorkersStackNextIndex", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I", "parkedWorkersStackPop", "parkedWorkersStackPush$kotlinx_coroutines_core", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z", "parkedWorkersStackPush", "oldIndex", "newIndex", "parkedWorkersStackTopUpdate$kotlinx_coroutines_core", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V", "parkedWorkersStackTopUpdate", "releaseCpuPermit", "runSafely", "(Lkotlinx/coroutines/scheduling/Task;)V", "timeout", "shutdown", "(J)V", "skipUnpark", "signalBlockingWork", "(Z)V", "signalCpuWork$kotlinx_coroutines_core", "signalCpuWork", "", "toString", "()Ljava/lang/String;", "tryAcquireCpuPermit", "()Z", "tryCreateWorker", "(J)Z", "tryUnpark", "submitToLocalQueue", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "getAvailableCpuPermits", "corePoolSize", "I", "getCreatedWorkers", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalBlockingQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "idleWorkerKeepAliveNs", "J", "isTerminated", "maxPoolSize", "schedulerName", "Ljava/lang/String;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "workers", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "<init>", "(IIJLjava/lang/String;)V", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/CoroutineScheduler.class */
public final class CoroutineScheduler implements Executor, Closeable {
    private volatile int _isTerminated;
    volatile long controlState;
    @JvmField
    @NotNull

    /* renamed from: f */
    public final GlobalQueue f23973f;
    @JvmField
    @NotNull

    /* renamed from: g */
    public final GlobalQueue f23974g;
    @JvmField
    @NotNull

    /* renamed from: h */
    public final AtomicReferenceArray<Worker> f23975h;
    @JvmField

    /* renamed from: i */
    public final int f23976i;
    @JvmField

    /* renamed from: j */
    public final int f23977j;
    @JvmField

    /* renamed from: k */
    public final long f23978k;
    @JvmField
    @NotNull

    /* renamed from: l */
    public final String f23979l;
    private volatile long parkedWorkersStack;
    @JvmField
    @NotNull

    /* renamed from: p */
    public static final Symbol f23972p = new Symbol("NOT_IN_STACK");

    /* renamed from: m */
    private static final AtomicLongFieldUpdater f23969m = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");

    /* renamed from: n */
    static final AtomicLongFieldUpdater f23970n = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");

    /* renamed from: o */
    private static final AtomicIntegerFieldUpdater f23971o = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0003R\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0003R\u0016\u0010\u000b\u001a\u00020\u00048��@��X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0006R\u0016\u0010\f\u001a\u00020\u00048��@��X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0006R\u0016\u0010\u000e\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0006R\u0016\u0010\u0011\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0003R\u0016\u0010\u0012\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0003R\u0016\u0010\u0013\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0003R\u0016\u0010\u0014\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0006¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;", "", "BLOCKING_MASK", "J", "", "BLOCKING_SHIFT", "I", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "Lkotlinx/coroutines/internal/Symbol;", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/Symbol;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/CoroutineScheduler$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f23980a;

        static {
            int[] iArr = new int[WorkerState.values().length];
            f23980a = iArr;
            iArr[WorkerState.PARKING.ordinal()] = 1;
            f23980a[WorkerState.BLOCKING.ordinal()] = 2;
            f23980a[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            f23980a[WorkerState.DORMANT.ordinal()] = 4;
            f23980a[WorkerState.TERMINATED.ordinal()] = 5;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0080\u0004\u0018��2\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010)\u001a\u00020\u0002¢\u0006\u0004\bF\u0010GB\t\b\u0002¢\u0006\u0004\bF\u0010HJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H��¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001e\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001f\u0010\u0014J\u000f\u0010 \u001a\u00020\u0004H\u0002¢\u0006\u0004\b \u0010\u001aJ\u0017\u0010%\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!H��¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u0004\u0018\u00010\b2\u0006\u0010&\u001a\u00020\fH\u0002¢\u0006\u0004\b'\u0010\u000fJ\u000f\u0010(\u001a\u00020\u0004H\u0002¢\u0006\u0004\b(\u0010\u001aR*\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\u0006R\u0016\u00100\u001a\u00020/8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010+R\u0014\u0010B\u001a\u00020?8Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0016\u0010C\u001a\u00020!8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00106¨\u0006I"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "", "taskMode", "", "afterTask", "(I)V", "beforeTask", "Lkotlinx/coroutines/scheduling/Task;", "task", "executeTask", "(Lkotlinx/coroutines/scheduling/Task;)V", "", "scanLocalQueue", "findAnyTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "findTask", "mode", "idleReset", "inStack", "()Z", "upperBound", "nextInt$kotlinx_coroutines_core", "(I)I", "nextInt", "park", "()V", "pollGlobalQueues", "()Lkotlinx/coroutines/scheduling/Task;", "run", "runWorker", "tryAcquireCpuPermit", "tryPark", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu$kotlinx_coroutines_core", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "tryReleaseCpu", "blockingOnly", "trySteal", "tryTerminateWorker", FirebaseAnalytics.Param.INDEX, "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "Lkotlinx/coroutines/scheduling/WorkQueue;", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "mayHaveLocalTasks", "Z", "", "minDelayUntilStealableTaskNs", "J", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "rngState", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "terminationDeadline", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/CoroutineScheduler$Worker.class */
    public final class Worker extends Thread {

        /* renamed from: m */
        static final AtomicIntegerFieldUpdater f23981m = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl");
        @JvmField
        @NotNull

        /* renamed from: f */
        public final WorkQueue f23982f;
        @JvmField
        @NotNull

        /* renamed from: g */
        public WorkerState f23983g;

        /* renamed from: h */
        private long f23984h;

        /* renamed from: i */
        private long f23985i;
        private volatile int indexInArray;

        /* renamed from: j */
        private int f23986j;
        @JvmField

        /* renamed from: k */
        public boolean f23987k;
        @Nullable
        private volatile Object nextParkedWorker;
        @NotNull
        volatile int workerCtl;

        private Worker() {
            setDaemon(true);
            this.f23982f = new WorkQueue();
            this.f23983g = WorkerState.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = CoroutineScheduler.f23972p;
            this.f23986j = Random.f20774b.mo1754h();
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            m359n(i);
        }

        /* renamed from: a */
        private final void m372a(int i) {
            if (i != 0) {
                CoroutineScheduler.f23970n.addAndGet(CoroutineScheduler.this, -2097152L);
                WorkerState workerState = this.f23983g;
                if (workerState != WorkerState.TERMINATED) {
                    if (DebugKt.m1308a()) {
                        if (!(workerState == WorkerState.BLOCKING)) {
                            throw new AssertionError();
                        }
                    }
                    this.f23983g = WorkerState.DORMANT;
                }
            }
        }

        /* renamed from: b */
        private final void m371b(int i) {
            if (i != 0 && m355r(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.m390J();
            }
        }

        /* renamed from: c */
        private final void m370c(Task task) {
            int p = task.f24006g.mo345p();
            m365h(p);
            m371b(p);
            CoroutineScheduler.this.m373t(task);
            m372a(p);
        }

        /* renamed from: d */
        private final Task m369d(boolean z) {
            Task l;
            Task l2;
            if (z) {
                boolean z2 = m363j(CoroutineScheduler.this.f23976i * 2) == 0;
                if (z2 && (l2 = m361l()) != null) {
                    return l2;
                }
                Task h = this.f23982f.m336h();
                if (h != null) {
                    return h;
                }
                if (!z2 && (l = m361l()) != null) {
                    return l;
                }
            } else {
                Task l3 = m361l();
                if (l3 != null) {
                    return l3;
                }
            }
            return m354s(false);
        }

        /* renamed from: h */
        private final void m365h(int i) {
            this.f23984h = 0L;
            if (this.f23983g == WorkerState.PARKING) {
                if (DebugKt.m1308a()) {
                    boolean z = true;
                    if (i != 1) {
                        z = false;
                    }
                    if (!z) {
                        throw new AssertionError();
                    }
                }
                this.f23983g = WorkerState.BLOCKING;
            }
        }

        /* renamed from: i */
        private final boolean m364i() {
            return this.nextParkedWorker != CoroutineScheduler.f23972p;
        }

        /* renamed from: k */
        private final void m362k() {
            if (this.f23984h == 0) {
                this.f23984h = System.nanoTime() + CoroutineScheduler.this.f23978k;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f23978k);
            if (System.nanoTime() - this.f23984h >= 0) {
                this.f23984h = 0L;
                m353t();
            }
        }

        /* renamed from: l */
        private final Task m361l() {
            if (m363j(2) == 0) {
                Task d = CoroutineScheduler.this.f23973f.m500d();
                return d != null ? d : CoroutineScheduler.this.f23974g.m500d();
            }
            Task d2 = CoroutineScheduler.this.f23974g.m500d();
            return d2 != null ? d2 : CoroutineScheduler.this.f23973f.m500d();
        }

        /* renamed from: m */
        private final void m360m() {
            loop0: while (true) {
                boolean z = false;
                while (!CoroutineScheduler.this.isTerminated() && this.f23983g != WorkerState.TERMINATED) {
                    Task e = m368e(this.f23987k);
                    if (e != null) {
                        this.f23985i = 0L;
                        m370c(e);
                    } else {
                        this.f23987k = false;
                        if (this.f23985i == 0) {
                            m356q();
                        } else if (!z) {
                            z = true;
                        } else {
                            m355r(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f23985i);
                            this.f23985i = 0L;
                        }
                    }
                }
            }
            m355r(WorkerState.TERMINATED);
        }

        /* renamed from: p */
        private final boolean m357p() {
            boolean z;
            boolean z2 = false;
            if (this.f23983g != WorkerState.CPU_ACQUIRED) {
                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                while (true) {
                    long j = coroutineScheduler.controlState;
                    if (((int) ((9223367638808264704L & j) >> 42)) != 0) {
                        if (CoroutineScheduler.f23970n.compareAndSet(coroutineScheduler, j, j - 4398046511104L)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    this.f23983g = WorkerState.CPU_ACQUIRED;
                }
                return z2;
            }
            z2 = true;
            return z2;
        }

        /* renamed from: q */
        private final void m356q() {
            if (!m364i()) {
                CoroutineScheduler.this.m375p(this);
                return;
            }
            if (DebugKt.m1308a()) {
                if (!(this.f23982f.m338f() == 0)) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (m364i() && !CoroutineScheduler.this.isTerminated() && this.f23983g != WorkerState.TERMINATED) {
                m355r(WorkerState.PARKING);
                Thread.interrupted();
                m362k();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r14v4, types: [long] */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Type inference failed for: r9v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlinx.coroutines.scheduling.Task m354s(boolean r6) {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.m354s(boolean):kotlinx.coroutines.scheduling.Task");
        }

        /* renamed from: t */
        private final void m353t() {
            synchronized (CoroutineScheduler.this.f23975h) {
                if (!CoroutineScheduler.this.isTerminated()) {
                    if (CoroutineScheduler.this.m378l() > CoroutineScheduler.this.f23976i) {
                        if (f23981m.compareAndSet(this, -1, 1)) {
                            int i = this.indexInArray;
                            m359n(0);
                            CoroutineScheduler.this.m374q(this, i, 0);
                            int andDecrement = (int) (CoroutineScheduler.f23970n.getAndDecrement(CoroutineScheduler.this) & 2097151);
                            if (andDecrement != i) {
                                Worker worker = CoroutineScheduler.this.f23975h.get(andDecrement);
                                Intrinsics.m1832c(worker);
                                Worker worker2 = worker;
                                CoroutineScheduler.this.f23975h.set(i, worker2);
                                worker2.m359n(i);
                                CoroutineScheduler.this.m374q(worker2, andDecrement, i);
                            }
                            CoroutineScheduler.this.f23975h.set(andDecrement, null);
                            Unit unit = Unit.f20447a;
                            this.f23983g = WorkerState.TERMINATED;
                        }
                    }
                }
            }
        }

        @Nullable
        /* renamed from: e */
        public final Task m368e(boolean z) {
            Task task;
            if (m357p()) {
                return m369d(z);
            }
            if (z) {
                task = this.f23982f.m336h();
                if (task == null) {
                    task = CoroutineScheduler.this.f23974g.m500d();
                }
            } else {
                task = CoroutineScheduler.this.f23974g.m500d();
            }
            if (task == null) {
                task = m354s(true);
            }
            return task;
        }

        /* renamed from: f */
        public final int m367f() {
            return this.indexInArray;
        }

        @Nullable
        /* renamed from: g */
        public final Object m366g() {
            return this.nextParkedWorker;
        }

        /* renamed from: j */
        public final int m363j(int i) {
            int i2 = this.f23986j;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.f23986j = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Api.BaseClientBuilder.API_PRIORITY_OTHER) % i;
        }

        /* renamed from: n */
        public final void m359n(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.f23979l);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        /* renamed from: o */
        public final void m358o(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        /* renamed from: r */
        public final boolean m355r(@NotNull WorkerState workerState) {
            WorkerState workerState2 = this.f23983g;
            boolean z = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.f23970n.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f23983g = workerState;
            }
            return z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            m360m();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState.class */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public CoroutineScheduler(int i, int i2, long j, @NotNull String str) {
        this.f23976i = i;
        this.f23977j = i2;
        this.f23978k = j;
        this.f23979l = str;
        if (i >= 1) {
            if (this.f23977j >= this.f23976i) {
                if (this.f23977j <= 2097150) {
                    if (this.f23978k > 0) {
                        this.f23973f = new GlobalQueue();
                        this.f23974g = new GlobalQueue();
                        this.parkedWorkersStack = 0L;
                        this.f23975h = new AtomicReferenceArray<>(this.f23977j + 1);
                        this.controlState = this.f23976i << 42;
                        this._isTerminated = 0;
                        return;
                    }
                    throw new IllegalArgumentException(("Idle worker keep alive time " + this.f23978k + " must be positive").toString());
                }
                throw new IllegalArgumentException(("Max pool size " + this.f23977j + " should not exceed maximal supported number of threads 2097150").toString());
            }
            throw new IllegalArgumentException(("Max pool size " + this.f23977j + " should be greater than or equals to core pool size " + this.f23976i).toString());
        }
        throw new IllegalArgumentException(("Core pool size " + this.f23976i + " should be at least 1").toString());
    }

    /* renamed from: I */
    private final void m391I(boolean z) {
        long addAndGet = f23970n.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        if (!z && !m386V() && !m388L(addAndGet)) {
            m386V();
        }
    }

    /* renamed from: K */
    private final Task m389K(Worker worker, Task task, boolean z) {
        if (!(worker == null || worker.f23983g == WorkerState.TERMINATED)) {
            if (task.f24006g.mo345p() == 0 && worker.f23983g == WorkerState.BLOCKING) {
                return task;
            }
            worker.f23987k = true;
            return worker.f23982f.m343a(task, z);
        }
        return task;
    }

    /* renamed from: L */
    private final boolean m388L(long j) {
        int b;
        b = RangesKt___RangesKt.m1713b(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0);
        if (b >= this.f23976i) {
            return false;
        }
        int d = m383d();
        if (d == 1 && this.f23976i > 1) {
            m383d();
        }
        return d > 0;
    }

    /* renamed from: N */
    static /* synthetic */ boolean m387N(CoroutineScheduler coroutineScheduler, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = coroutineScheduler.controlState;
        }
        return coroutineScheduler.m388L(j);
    }

    /* renamed from: V */
    private final boolean m386V() {
        Worker o;
        do {
            o = m376o();
            if (o == null) {
                return false;
            }
        } while (!Worker.f23981m.compareAndSet(o, -1, 0));
        LockSupport.unpark(o);
        return true;
    }

    /* renamed from: b */
    private final boolean m384b(Task task) {
        boolean z = true;
        if (task.f24006g.mo345p() != 1) {
            z = false;
        }
        return z ? this.f23974g.m503a(task) : this.f23973f.m503a(task);
    }

    /* renamed from: d */
    private final int m383d() {
        int b;
        synchronized (this.f23975h) {
            if (isTerminated()) {
                return -1;
            }
            long j = this.controlState;
            int i = (int) (j & 2097151);
            boolean z = false;
            b = RangesKt___RangesKt.m1713b(i - ((int) ((j & 4398044413952L) >> 21)), 0);
            if (b >= this.f23976i) {
                return 0;
            }
            if (i >= this.f23977j) {
                return 0;
            }
            int i2 = ((int) (this.controlState & 2097151)) + 1;
            if (i2 > 0 && this.f23975h.get(i2) == null) {
                Worker worker = new Worker(this, i2);
                this.f23975h.set(i2, worker);
                if (i2 == ((int) (2097151 & f23970n.incrementAndGet(this)))) {
                    z = true;
                }
                if (z) {
                    worker.start();
                    return b + 1;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    /* renamed from: h */
    private final Worker m381h() {
        Thread currentThread = Thread.currentThread();
        if (!(currentThread instanceof Worker)) {
            currentThread = null;
        }
        Worker worker = (Worker) currentThread;
        Worker worker2 = null;
        if (worker != null) {
            worker2 = null;
            if (Intrinsics.m1834a(CoroutineScheduler.this, this)) {
                worker2 = worker;
            }
        }
        return worker2;
    }

    /* renamed from: k */
    public static /* synthetic */ void m379k(CoroutineScheduler coroutineScheduler, Runnable runnable, TaskContext taskContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            taskContext = NonBlockingContext.f24004g;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        coroutineScheduler.m380i(runnable, taskContext, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public final int m378l() {
        return (int) (this.controlState & 2097151);
    }

    /* renamed from: m */
    private final int m377m(Worker worker) {
        Object g = worker.m366g();
        while (g != f23972p) {
            if (g == null) {
                return 0;
            }
            Worker worker2 = (Worker) g;
            int f = worker2.m367f();
            if (f != 0) {
                return f;
            }
            g = worker2.m366g();
        }
        return -1;
    }

    /* renamed from: o */
    private final Worker m376o() {
        while (true) {
            long j = this.parkedWorkersStack;
            Worker worker = this.f23975h.get((int) (2097151 & j));
            if (worker == null) {
                return null;
            }
            int m = m377m(worker);
            if (m >= 0 && f23969m.compareAndSet(this, j, m | ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152)))) {
                worker.m358o(f23972p);
                return worker;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ca, code lost:
        if (r8 != null) goto L_0x00db;
     */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m392B(long r6) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.m392B(long):void");
    }

    /* renamed from: J */
    public final void m390J() {
        if (!m386V() && !m387N(this, 0L, 1, null)) {
            m386V();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m392B(10000L);
    }

    @NotNull
    /* renamed from: e */
    public final Task m382e(@NotNull Runnable runnable, @NotNull TaskContext taskContext) {
        long a = TasksKt.f24012e.mo344a();
        if (!(runnable instanceof Task)) {
            return new TaskImpl(runnable, a, taskContext);
        }
        Task task = (Task) runnable;
        task.f24005f = a;
        task.f24006g = taskContext;
        return task;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        m379k(this, runnable, null, false, 6, null);
    }

    /* renamed from: i */
    public final void m380i(@NotNull Runnable runnable, @NotNull TaskContext taskContext, boolean z) {
        TimeSource a = TimeSourceKt.m1093a();
        if (a != null) {
            a.m1094g();
        }
        Task e = m382e(runnable, taskContext);
        Worker h = m381h();
        Task K = m389K(h, e, z);
        if (K == null || m384b(K)) {
            boolean z2 = z && h != null;
            if (e.f24006g.mo345p() != 0) {
                m391I(z2);
            } else if (!z2) {
                m390J();
            }
        } else {
            throw new RejectedExecutionException(this.f23979l + " was terminated");
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    /* renamed from: p */
    public final boolean m375p(@NotNull Worker worker) {
        long j;
        int f;
        if (worker.m366g() != f23972p) {
            return false;
        }
        do {
            j = this.parkedWorkersStack;
            int i = (int) (2097151 & j);
            f = worker.m367f();
            if (DebugKt.m1308a()) {
                if (!(f != 0)) {
                    throw new AssertionError();
                }
            }
            worker.m358o(this.f23975h.get(i));
        } while (!f23969m.compareAndSet(this, j, f | ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152))));
        return true;
    }

    /* renamed from: q */
    public final void m374q(@NotNull Worker worker, int i, int i2) {
        while (true) {
            long j = this.parkedWorkersStack;
            int i3 = (int) (2097151 & j);
            int i4 = i3;
            if (i3 == i) {
                i4 = i2 == 0 ? m377m(worker) : i2;
            }
            if (i4 >= 0 && f23969m.compareAndSet(this, j, ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152)) | i4)) {
                return;
            }
        }
    }

    /* renamed from: t */
    public final void m373t(@NotNull Task task) {
        TimeSource a;
        TimeSource a2;
        try {
            task.run();
            if (a == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                a2 = TimeSourceKt.m1093a();
                if (a2 == null) {
                    return;
                }
            } finally {
                a = TimeSourceKt.m1093a();
                if (a != null) {
                    a.m1098c();
                }
            }
        }
        a2.m1098c();
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int length = this.f23975h.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < length; i6++) {
            Worker worker = this.f23975h.get(i6);
            i = i;
            i2 = i2;
            i3 = i3;
            i4 = i4;
            i5 = i5;
            if (worker != null) {
                int f = worker.f23982f.m338f();
                int i7 = WhenMappings.f23980a[worker.f23983g.ordinal()];
                if (i7 == 1) {
                    i3++;
                    i5 = i5;
                    i4 = i4;
                    i2 = i2;
                    i = i;
                } else if (i7 == 2) {
                    i2++;
                    arrayList.add(String.valueOf(f) + "b");
                    i = i;
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                } else if (i7 == 3) {
                    i++;
                    arrayList.add(String.valueOf(f) + "c");
                    i2 = i2;
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                } else if (i7 == 4) {
                    int i8 = i4 + 1;
                    i = i;
                    i2 = i2;
                    i3 = i3;
                    i4 = i8;
                    i5 = i5;
                    if (f > 0) {
                        arrayList.add(String.valueOf(f) + "d");
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i8;
                        i5 = i5;
                    }
                } else if (i7 != 5) {
                    i = i;
                    i2 = i2;
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                } else {
                    i5++;
                    i = i;
                    i2 = i2;
                    i3 = i3;
                    i4 = i4;
                }
            }
        }
        long j = this.controlState;
        return this.f23979l + '@' + DebugStringsKt.m1303b(this) + "[Pool Size {core = " + this.f23976i + ", max = " + this.f23977j + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f23973f.m501c() + ", global blocking queue size = " + this.f23974g.m501c() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.f23976i - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }
}
