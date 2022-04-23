package kotlinx.coroutines.b;

import android.support.v4.media.session.PlaybackStateCompat;
import com.appsflyer.share.Constants;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.e.c;
import kotlin.f.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.ao;
import kotlinx.coroutines.internal.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b��\u0018�� X2\u00020\\2\u00020]:\u0003XYZB+\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001d\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b\u001f\u0010\u0011J\u0015\u0010!\u001a\b\u0018\u00010 R\u00020��H\u0002¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0013H\u0082\b¢\u0006\u0004\b#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0001H\u0082\b¢\u0006\u0004\b$\u0010\u0017J-\u0010&\u001a\u00020\u00132\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010%\u001a\u00020\f¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u00020\u00132\n\u0010(\u001a\u00060\u0018j\u0002`\u0019H\u0016¢\u0006\u0004\b)\u0010*J\u0010\u0010+\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b+\u0010,J\u0010\u0010-\u001a\u00020\u0001H\u0082\b¢\u0006\u0004\b-\u0010\u0017J\u001b\u0010/\u001a\u00020\u00012\n\u0010.\u001a\u00060 R\u00020��H\u0002¢\u0006\u0004\b/\u00100J\u0015\u00101\u001a\b\u0018\u00010 R\u00020��H\u0002¢\u0006\u0004\b1\u0010\"J\u0019\u00102\u001a\u00020\f2\n\u0010.\u001a\u00060 R\u00020��¢\u0006\u0004\b2\u00103J)\u00106\u001a\u00020\u00132\n\u0010.\u001a\u00060 R\u00020��2\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001¢\u0006\u0004\b6\u00107J\u0010\u00108\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b8\u0010,J\u0015\u00109\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b9\u0010:J\u0015\u0010<\u001a\u00020\u00132\u0006\u0010;\u001a\u00020\u0004¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\fH\u0002¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\u0013¢\u0006\u0004\bA\u0010\u0015J\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u00020\fH\u0082\b¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\fH\u0002¢\u0006\u0004\bH\u0010EJ+\u0010I\u001a\u0004\u0018\u00010\n*\b\u0018\u00010 R\u00020��2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\bI\u0010JR\u0017\u0010\u0010\u001a\u00020\u00018Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bK\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010LR\u0017\u0010\u001f\u001a\u00020\u00018Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010\u0017R\u0016\u0010O\u001a\u00020N8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010Q\u001a\u00020N8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bQ\u0010PR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010RR\u0013\u0010S\u001a\u00020\f8F@\u0006¢\u0006\u0006\u001a\u0004\bS\u0010ER\u0016\u0010\u0003\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010LR\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010TR\"\u0010V\u001a\u000e\u0012\n\u0012\b\u0018\u00010 R\u00020��0U8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bV\u0010W¨\u0006["}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "", "corePoolSize", "maxPoolSize", "", "idleWorkerKeepAliveNs", "", "schedulerName", "<init>", "(IIJLjava/lang/String;)V", "Lkotlinx/coroutines/scheduling/Task;", "task", "", "addToGlobalQueue", "(Lkotlinx/coroutines/scheduling/Task;)Z", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "availableCpuPermits", "(J)I", "blockingTasks", "", EventConstants.CLOSE, "()V", "createNewWorker", "()I", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "createTask", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;", "createdWorkers", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "currentWorker", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "decrementBlockingTasks", "decrementCreatedWorkers", "tailDispatch", "dispatch", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V", "command", "execute", "(Ljava/lang/Runnable;)V", "incrementBlockingTasks", "()J", "incrementCreatedWorkers", "worker", "parkedWorkersStackNextIndex", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I", "parkedWorkersStackPop", "parkedWorkersStackPush", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z", "oldIndex", "newIndex", "parkedWorkersStackTopUpdate", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V", "releaseCpuPermit", "runSafely", "(Lkotlinx/coroutines/scheduling/Task;)V", "timeout", "shutdown", "(J)V", "skipUnpark", "signalBlockingWork", "(Z)V", "signalCpuWork", "toString", "()Ljava/lang/String;", "tryAcquireCpuPermit", "()Z", "tryCreateWorker", "(J)Z", "tryUnpark", "submitToLocalQueue", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "getAvailableCpuPermits", "I", "getCreatedWorkers", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalBlockingQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "J", "isTerminated", "Ljava/lang/String;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "workers", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a.class */
public final class a implements Closeable, Executor {
    volatile /* synthetic */ int _isTerminated;

    /* renamed from: a  reason: collision with root package name */
    public final e f38703a;

    /* renamed from: b  reason: collision with root package name */
    public final e f38704b;
    volatile /* synthetic */ long controlState;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReferenceArray<b> f38705d;
    public final int f;
    public final int g;
    public final long h;
    public final String i;
    volatile /* synthetic */ long parkedWorkersStack;
    public static final C0726a k = new C0726a(null);
    public static final v j = new v("NOT_IN_STACK");

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ AtomicLongFieldUpdater f38702c = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack");
    static final /* synthetic */ AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(a.class, "controlState");
    private static final /* synthetic */ AtomicIntegerFieldUpdater l = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated");

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;", "", "()V", "BLOCKING_MASK", "", "BLOCKING_SHIFT", "", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/Symbol;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a$a.class */
    public static final class C0726a {
        private C0726a() {
        }

        public /* synthetic */ C0726a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0080\u0004\u0018��2\u00020GB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0015\u0010\tJ\u000f\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u001cJ\u000f\u0010!\u001a\u00020\u000fH\u0002¢\u0006\u0004\b!\u0010\u0017J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u001cJ\u0015\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0019\u0010(\u001a\u0004\u0018\u00010\u000b2\u0006\u0010'\u001a\u00020\u000fH\u0002¢\u0006\u0004\b(\u0010\u0012J\u000f\u0010)\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010\u001cR*\u0010*\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00018\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\tR\u0016\u00100\u001a\u00020/8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010+R\u0014\u0010B\u001a\u00020?8Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0016\u0010C\u001a\u00020#8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00106¨\u0006F"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "", "index", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "taskMode", "", "afterTask", "(I)V", "beforeTask", "Lkotlinx/coroutines/scheduling/Task;", "task", "executeTask", "(Lkotlinx/coroutines/scheduling/Task;)V", "", "scanLocalQueue", "findAnyTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "findTask", "mode", "idleReset", "inStack", "()Z", "upperBound", "nextInt", "(I)I", "park", "()V", "pollGlobalQueues", "()Lkotlinx/coroutines/scheduling/Task;", "run", "runWorker", "tryAcquireCpuPermit", "tryPark", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "blockingOnly", "trySteal", "tryTerminateWorker", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "Lkotlinx/coroutines/scheduling/WorkQueue;", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "mayHaveLocalTasks", "Z", "", "minDelayUntilStealableTaskNs", "J", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "rngState", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "terminationDeadline", "kotlinx-coroutines-core", "Ljava/lang/Thread;"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a$b.class */
    public final class b extends Thread {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ AtomicIntegerFieldUpdater f38706c = AtomicIntegerFieldUpdater.newUpdater(b.class, "workerCtl");

        /* renamed from: a  reason: collision with root package name */
        public final n f38707a;

        /* renamed from: b  reason: collision with root package name */
        public int f38708b;

        /* renamed from: d  reason: collision with root package name */
        public boolean f38709d;
        private long f;
        private long g;
        private int h;
        volatile int indexInArray;
        volatile Object nextParkedWorker;
        volatile /* synthetic */ int workerCtl;

        private b() {
            setDaemon(true);
            this.f38707a = new n();
            this.f38708b = c.f38713d;
            this.workerCtl = 0;
            this.nextParkedWorker = a.j;
            c.a aVar = kotlin.e.c.f36657a;
            this.h = kotlin.e.c.f36658b.b();
        }

        public b(a aVar, int i) {
            this();
            b(i);
        }

        private final boolean a() {
            boolean z;
            if (this.f38708b == c.f38710a) {
                return true;
            }
            a aVar = a.this;
            while (true) {
                long j = aVar.controlState;
                if (((int) ((9223367638808264704L & j) >> 42)) != 0) {
                    if (a.e.compareAndSet(aVar, j, j - 4398046511104L)) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return false;
            }
            this.f38708b = c.f38710a;
            return true;
        }

        private final j b(boolean z) {
            j e;
            j e2;
            if (z) {
                boolean z2 = c(a.this.f * 2) == 0;
                if (z2 && (e2 = e()) != null) {
                    return e2;
                }
                j b2 = this.f38707a.b();
                if (b2 != null) {
                    return b2;
                }
                if (!z2 && (e = e()) != null) {
                    return e;
                }
            } else {
                j e3 = e();
                if (e3 != null) {
                    return e3;
                }
            }
            return c(false);
        }

        private final void b() {
            long j;
            int i;
            boolean z = true;
            if (!c()) {
                a aVar = a.this;
                if (this.nextParkedWorker == a.j) {
                    do {
                        j = aVar.parkedWorkersStack;
                        int i2 = (int) (2097151 & j);
                        i = this.indexInArray;
                        if (ao.a()) {
                            if (!(i != 0)) {
                                throw new AssertionError();
                            }
                        }
                        this.nextParkedWorker = aVar.f38705d.get(i2);
                    } while (!a.f38702c.compareAndSet(aVar, j, ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152)) | i));
                    return;
                }
                return;
            }
            if (ao.a()) {
                if (this.f38707a.a() != 0) {
                    z = false;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (c() && this.workerCtl == -1 && a.this._isTerminated == 0 && this.f38708b != c.e) {
                a(c.f38712c);
                Thread.interrupted();
                if (this.f == 0) {
                    this.f = System.nanoTime() + a.this.h;
                }
                LockSupport.parkNanos(a.this.h);
                if (System.nanoTime() - this.f >= 0) {
                    this.f = 0L;
                    d();
                }
            }
        }

        private void b(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(a.this.i);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        private int c(int i) {
            int i2 = this.h;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.h = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlinx.coroutines.b.j c(boolean r6) {
            /*
                Method dump skipped, instructions count: 279
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.b.a.b.c(boolean):kotlinx.coroutines.b.j");
        }

        private final boolean c() {
            return this.nextParkedWorker != a.j;
        }

        private final void d() {
            synchronized (a.this.f38705d) {
                if (a.this._isTerminated == 0) {
                    if (a.a(a.this) > a.this.f) {
                        if (f38706c.compareAndSet(this, -1, 1)) {
                            int i = this.indexInArray;
                            b(0);
                            a.this.a(this, i, 0);
                            int andDecrement = (int) (a.e.getAndDecrement(a.this) & 2097151);
                            if (andDecrement != i) {
                                b bVar = a.this.f38705d.get(andDecrement);
                                p.a(bVar);
                                b bVar2 = bVar;
                                a.this.f38705d.set(i, bVar2);
                                bVar2.b(i);
                                a.this.a(bVar2, andDecrement, i);
                            }
                            a.this.f38705d.set(andDecrement, null);
                            kotlin.v vVar = kotlin.v.f38654a;
                            this.f38708b = c.e;
                        }
                    }
                }
            }
        }

        private final j e() {
            if (c(2) == 0) {
                j c2 = a.this.f38703a.c();
                return c2 != null ? c2 : a.this.f38704b.c();
            }
            j c3 = a.this.f38704b.c();
            return c3 != null ? c3 : a.this.f38703a.c();
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
            if (r0 == null) goto L_0x001f;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlinx.coroutines.b.j a(boolean r4) {
            /*
                r3 = this;
                r0 = r3
                boolean r0 = r0.a()
                if (r0 == 0) goto L_0x000d
                r0 = r3
                r1 = r4
                kotlinx.coroutines.b.j r0 = r0.b(r1)
                return r0
            L_0x000d:
                r0 = r4
                if (r0 == 0) goto L_0x001f
                r0 = r3
                kotlinx.coroutines.b.n r0 = r0.f38707a
                kotlinx.coroutines.b.j r0 = r0.b()
                r5 = r0
                r0 = r5
                r6 = r0
                r0 = r5
                if (r0 != 0) goto L_0x002d
            L_0x001f:
                r0 = r3
                kotlinx.coroutines.b.a r0 = kotlinx.coroutines.b.a.this
                kotlinx.coroutines.b.e r0 = r0.f38704b
                java.lang.Object r0 = r0.c()
                kotlinx.coroutines.b.j r0 = (kotlinx.coroutines.b.j) r0
                r6 = r0
            L_0x002d:
                r0 = r6
                r5 = r0
                r0 = r6
                if (r0 != 0) goto L_0x0039
                r0 = r3
                r1 = 1
                kotlinx.coroutines.b.j r0 = r0.c(r1)
                r5 = r0
            L_0x0039:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.b.a.b.a(boolean):kotlinx.coroutines.b.j");
        }

        public final boolean a(int i) {
            int i2 = this.f38708b;
            boolean z = i2 == c.f38710a;
            if (z) {
                a.e.addAndGet(a.this, 4398046511104L);
            }
            if (i2 != i) {
                this.f38708b = i;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x010e, code lost:
            a(kotlinx.coroutines.b.a.c.e);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0116, code lost:
            return;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 279
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.b.a.b.run():void");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a$c.class */
    public static final class c extends Enum<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f38710a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f38711b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f38712c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f38713d = 4;
        public static final int e = 5;
        private static final /* synthetic */ int[] f = {1, 2, 3, 4, 5};

        private c(String str, int i) {
        }

        public static int[] a() {
            return (int[]) f.clone();
        }
    }

    public a(int i, int i2, long j2, String str) {
        this.f = i;
        this.g = i2;
        this.h = j2;
        this.i = str;
        if (i > 0) {
            if (i2 >= i) {
                if (i2 <= 2097150) {
                    if (j2 > 0) {
                        this.f38703a = new e();
                        this.f38704b = new e();
                        this.parkedWorkersStack = 0L;
                        this.f38705d = new AtomicReferenceArray<>(i2 + 1);
                        this.controlState = i << 42;
                        this._isTerminated = 0;
                        return;
                    }
                    throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
                }
                throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
            }
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
    }

    public /* synthetic */ a(int i, int i2, long j2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? m.e : j2, (i3 & 8) != 0 ? "DefaultDispatcher" : str);
    }

    private static int a(b bVar) {
        Object obj = bVar.nextParkedWorker;
        while (obj != j) {
            if (obj == null) {
                return 0;
            }
            b bVar2 = (b) obj;
            int i = bVar2.indexInArray;
            if (i != 0) {
                return i;
            }
            obj = bVar2.nextParkedWorker;
        }
        return -1;
    }

    public static final /* synthetic */ int a(a aVar) {
        return (int) (aVar.controlState & 2097151);
    }

    public static j a(Runnable runnable, k kVar) {
        long a2 = m.f.a();
        if (!(runnable instanceof j)) {
            return new l(runnable, a2, kVar);
        }
        j jVar = (j) runnable;
        jVar.g = a2;
        jVar.h = kVar;
        return jVar;
    }

    public static /* synthetic */ void a(a aVar, Runnable runnable) {
        aVar.a(runnable, (k) h.f38719a, false);
    }

    public static void a(j jVar) {
        try {
            jVar.run();
        } catch (Throwable th) {
            Thread currentThread = Thread.currentThread();
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
        }
    }

    private final boolean a(long j2) {
        if (d.c(((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)), 0) >= this.f) {
            return false;
        }
        int d2 = d();
        if (d2 == 1 && this.f > 1) {
            d();
        }
        return d2 > 0;
    }

    private final b b() {
        while (true) {
            long j2 = this.parkedWorkersStack;
            b bVar = this.f38705d.get((int) (2097151 & j2));
            if (bVar == null) {
                return null;
            }
            int a2 = a(bVar);
            if (a2 >= 0 && f38702c.compareAndSet(this, j2, a2 | ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152)))) {
                bVar.nextParkedWorker = j;
                return bVar;
            }
        }
    }

    private static /* synthetic */ boolean b(a aVar) {
        return aVar.a(aVar.controlState);
    }

    private final boolean c() {
        b b2;
        do {
            b2 = b();
            if (b2 == null) {
                return false;
            }
        } while (!b.f38706c.compareAndSet(b2, -1, 0));
        LockSupport.unpark(b2);
        return true;
    }

    private final int d() {
        synchronized (this.f38705d) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j2 = this.controlState;
            int i = (int) (j2 & 2097151);
            boolean z = false;
            int c2 = d.c(i - ((int) ((j2 & 4398044413952L) >> 21)), 0);
            if (c2 >= this.f) {
                return 0;
            }
            if (i >= this.g) {
                return 0;
            }
            int i2 = ((int) (this.controlState & 2097151)) + 1;
            if (i2 > 0 && this.f38705d.get(i2) == null) {
                b bVar = new b(this, i2);
                this.f38705d.set(i2, bVar);
                if (i2 == ((int) (2097151 & e.incrementAndGet(this)))) {
                    z = true;
                }
                if (z) {
                    bVar.start();
                    return c2 + 1;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final b e() {
        Thread currentThread = Thread.currentThread();
        Thread thread = currentThread;
        if (!(currentThread instanceof b)) {
            thread = null;
        }
        b bVar = (b) thread;
        if (bVar == null || !p.a(a.this, this)) {
            return null;
        }
        return bVar;
    }

    public final void a() {
        if (!c() && !b(this)) {
            c();
        }
    }

    public final void a(Runnable runnable, k kVar, boolean z) {
        j jVar;
        j a2 = a(runnable, kVar);
        b e2 = e();
        boolean z2 = true;
        if (e2 == null || e2.f38708b == c.e || (a2.h.d() == 0 && e2.f38708b == c.f38711b)) {
            jVar = a2;
        } else {
            e2.f38709d = true;
            jVar = e2.f38707a.a(a2, z);
        }
        if (jVar != null) {
            if (!(jVar.h.d() == 1 ? this.f38704b.a(jVar) : this.f38703a.a(jVar))) {
                throw new RejectedExecutionException(this.i + " was terminated");
            }
        }
        if (!z || e2 == null) {
            z2 = false;
        }
        if (a2.h.d() != 0) {
            long addAndGet = e.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
            if (!z2 && !c() && !a(addAndGet)) {
                c();
            }
        } else if (!z2) {
            a();
        }
    }

    public final void a(b bVar, int i, int i2) {
        while (true) {
            long j2 = this.parkedWorkersStack;
            int i3 = (int) (2097151 & j2);
            int i4 = i3;
            if (i3 == i) {
                i4 = i2 == 0 ? a(bVar) : i2;
            }
            if (i4 >= 0 && f38702c.compareAndSet(this, j2, ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152)) | i4)) {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cb, code lost:
        if (r0 == null) goto L_0x00ce;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.b.a.close():void");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        a(this, runnable);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int length = this.f38705d.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < length; i6++) {
            b bVar = this.f38705d.get(i6);
            if (bVar == null) {
                i = i;
                i2 = i2;
                i3 = i3;
                i5 = i5;
            } else {
                int a2 = bVar.f38707a.a();
                int i7 = kotlinx.coroutines.b.b.f38714a[bVar.f38708b - 1];
                if (i7 == 1) {
                    i3++;
                    i5 = i5;
                    i2 = i2;
                    i = i;
                } else if (i7 == 2) {
                    i2++;
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(String.valueOf(a2) + com.google.api.client.googleapis.notifications.b.f31754a);
                    i = i;
                    i3 = i3;
                    i5 = i5;
                } else if (i7 == 3) {
                    i++;
                    ArrayList arrayList3 = arrayList;
                    arrayList3.add(String.valueOf(a2) + Constants.URL_CAMPAIGN);
                    i2 = i2;
                    i3 = i3;
                    i5 = i5;
                } else if (i7 == 4) {
                    int i8 = i4 + 1;
                    i = i;
                    i2 = i2;
                    i3 = i3;
                    i4 = i8;
                    i5 = i5;
                    if (a2 > 0) {
                        ArrayList arrayList4 = arrayList;
                        arrayList4.add(String.valueOf(a2) + "d");
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
                    i5 = i5;
                } else {
                    i5++;
                    i = i;
                    i2 = i2;
                    i3 = i3;
                }
            }
        }
        long j2 = this.controlState;
        return this.i + '@' + Integer.toHexString(System.identityHashCode(this)) + "[Pool Size {core = " + this.f + ", max = " + this.g + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f38703a.a() + ", global blocking queue size = " + this.f38704b.a() + ", Control State {created workers= " + ((int) (2097151 & j2)) + ", blocking tasks = " + ((int) ((4398044413952L & j2) >> 21)) + ", CPUs acquired = " + (this.f - ((int) ((9223367638808264704L & j2) >> 42))) + "}]";
    }
}
