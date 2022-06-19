package kotlinx.coroutines.p570b;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.share.Constants;
import com.google.api.client.googleapis.notifications.C15291b;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p528e.AbstractC18354c;
import kotlin.p530f.C18363d;
import kotlinx.coroutines.C20159ao;
import kotlinx.coroutines.internal.C20296v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b��\u0018�� X2\u00020\\2\u00020]:\u0003XYZB+\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001d\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b\u001f\u0010\u0011J\u0015\u0010!\u001a\b\u0018\u00010 R\u00020��H\u0002¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0013H\u0082\b¢\u0006\u0004\b#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0001H\u0082\b¢\u0006\u0004\b$\u0010\u0017J-\u0010&\u001a\u00020\u00132\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010%\u001a\u00020\f¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u00020\u00132\n\u0010(\u001a\u00060\u0018j\u0002`\u0019H\u0016¢\u0006\u0004\b)\u0010*J\u0010\u0010+\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b+\u0010,J\u0010\u0010-\u001a\u00020\u0001H\u0082\b¢\u0006\u0004\b-\u0010\u0017J\u001b\u0010/\u001a\u00020\u00012\n\u0010.\u001a\u00060 R\u00020��H\u0002¢\u0006\u0004\b/\u00100J\u0015\u00101\u001a\b\u0018\u00010 R\u00020��H\u0002¢\u0006\u0004\b1\u0010\"J\u0019\u00102\u001a\u00020\f2\n\u0010.\u001a\u00060 R\u00020��¢\u0006\u0004\b2\u00103J)\u00106\u001a\u00020\u00132\n\u0010.\u001a\u00060 R\u00020��2\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001¢\u0006\u0004\b6\u00107J\u0010\u00108\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b8\u0010,J\u0015\u00109\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b9\u0010:J\u0015\u0010<\u001a\u00020\u00132\u0006\u0010;\u001a\u00020\u0004¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\fH\u0002¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\u0013¢\u0006\u0004\bA\u0010\u0015J\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u00020\fH\u0082\b¢\u0006\u0004\bD\u0010EJ\u0019\u0010F\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\fH\u0002¢\u0006\u0004\bH\u0010EJ+\u0010I\u001a\u0004\u0018\u00010\n*\b\u0018\u00010 R\u00020��2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\bI\u0010JR\u0017\u0010\u0010\u001a\u00020\u00018Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bK\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010LR\u0017\u0010\u001f\u001a\u00020\u00018Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010\u0017R\u0016\u0010O\u001a\u00020N8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010Q\u001a\u00020N8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bQ\u0010PR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010RR\u0013\u0010S\u001a\u00020\f8F@\u0006¢\u0006\u0006\u001a\u0004\bS\u0010ER\u0016\u0010\u0003\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010LR\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010TR\"\u0010V\u001a\u000e\u0012\n\u0012\b\u0018\u00010 R\u00020��0U8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bV\u0010W¨\u0006["}, m4298d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "", "corePoolSize", "maxPoolSize", "", "idleWorkerKeepAliveNs", "", "schedulerName", "<init>", "(IIJLjava/lang/String;)V", "Lkotlinx/coroutines/scheduling/Task;", "task", "", "addToGlobalQueue", "(Lkotlinx/coroutines/scheduling/Task;)Z", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "availableCpuPermits", "(J)I", "blockingTasks", "", EventConstants.CLOSE, "()V", "createNewWorker", "()I", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "createTask", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;", "createdWorkers", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "currentWorker", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "decrementBlockingTasks", "decrementCreatedWorkers", "tailDispatch", "dispatch", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V", "command", "execute", "(Ljava/lang/Runnable;)V", "incrementBlockingTasks", "()J", "incrementCreatedWorkers", "worker", "parkedWorkersStackNextIndex", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I", "parkedWorkersStackPop", "parkedWorkersStackPush", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z", "oldIndex", "newIndex", "parkedWorkersStackTopUpdate", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V", "releaseCpuPermit", "runSafely", "(Lkotlinx/coroutines/scheduling/Task;)V", "timeout", "shutdown", "(J)V", "skipUnpark", "signalBlockingWork", "(Z)V", "signalCpuWork", "toString", "()Ljava/lang/String;", "tryAcquireCpuPermit", "()Z", "tryCreateWorker", "(J)Z", "tryUnpark", "submitToLocalQueue", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "getAvailableCpuPermits", "I", "getCreatedWorkers", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalBlockingQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "J", "isTerminated", "Ljava/lang/String;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "workers", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a.class */
public final class ExecutorC20174a implements Closeable, Executor {
    volatile /* synthetic */ int _isTerminated;

    /* renamed from: a */
    public final C20181e f66585a;

    /* renamed from: b */
    public final C20181e f66586b;
    volatile /* synthetic */ long controlState;

    /* renamed from: d */
    public final AtomicReferenceArray<C20176b> f66587d;

    /* renamed from: f */
    public final int f66588f;

    /* renamed from: g */
    public final int f66589g;

    /* renamed from: h */
    public final long f66590h;

    /* renamed from: i */
    public final String f66591i;
    volatile /* synthetic */ long parkedWorkersStack;

    /* renamed from: k */
    public static final C20175a f66583k = new C20175a(null);

    /* renamed from: j */
    public static final C20296v f66582j = new C20296v("NOT_IN_STACK");

    /* renamed from: c */
    static final /* synthetic */ AtomicLongFieldUpdater f66580c = AtomicLongFieldUpdater.newUpdater(ExecutorC20174a.class, "parkedWorkersStack");

    /* renamed from: e */
    static final /* synthetic */ AtomicLongFieldUpdater f66581e = AtomicLongFieldUpdater.newUpdater(ExecutorC20174a.class, "controlState");

    /* renamed from: l */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66584l = AtomicIntegerFieldUpdater.newUpdater(ExecutorC20174a.class, "_isTerminated");

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;", "", "()V", "BLOCKING_MASK", "", "BLOCKING_SHIFT", "", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/Symbol;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a$a.class */
    public static final class C20175a {
        private C20175a() {
        }

        public /* synthetic */ C20175a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0080\u0004\u0018��2\u00020GB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0015\u0010\tJ\u000f\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u001cJ\u000f\u0010!\u001a\u00020\u000fH\u0002¢\u0006\u0004\b!\u0010\u0017J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u001cJ\u0015\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0019\u0010(\u001a\u0004\u0018\u00010\u000b2\u0006\u0010'\u001a\u00020\u000fH\u0002¢\u0006\u0004\b(\u0010\u0012J\u000f\u0010)\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010\u001cR*\u0010*\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00018\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\tR\u0016\u00100\u001a\u00020/8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010+R\u0014\u0010B\u001a\u00020?8Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b@\u0010AR\u0016\u0010C\u001a\u00020#8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00106¨\u0006F"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "", "index", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "taskMode", "", "afterTask", "(I)V", "beforeTask", "Lkotlinx/coroutines/scheduling/Task;", "task", "executeTask", "(Lkotlinx/coroutines/scheduling/Task;)V", "", "scanLocalQueue", "findAnyTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "findTask", "mode", "idleReset", "inStack", "()Z", "upperBound", "nextInt", "(I)I", "park", "()V", "pollGlobalQueues", "()Lkotlinx/coroutines/scheduling/Task;", "run", "runWorker", "tryAcquireCpuPermit", "tryPark", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "blockingOnly", "trySteal", "tryTerminateWorker", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "Lkotlinx/coroutines/scheduling/WorkQueue;", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "mayHaveLocalTasks", "Z", "", "minDelayUntilStealableTaskNs", "J", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "rngState", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "terminationDeadline", "kotlinx-coroutines-core", "Ljava/lang/Thread;"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.b.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a$b.class */
    public final class C20176b extends Thread {

        /* renamed from: c */
        static final /* synthetic */ AtomicIntegerFieldUpdater f66592c = AtomicIntegerFieldUpdater.newUpdater(C20176b.class, "workerCtl");

        /* renamed from: a */
        public final C20190n f66593a;

        /* renamed from: b */
        public int f66594b;

        /* renamed from: d */
        public boolean f66595d;

        /* renamed from: f */
        private long f66597f;

        /* renamed from: g */
        private long f66598g;

        /* renamed from: h */
        private int f66599h;
        volatile int indexInArray;
        volatile Object nextParkedWorker;
        volatile /* synthetic */ int workerCtl;

        private C20176b() {
            ExecutorC20174a.this = r5;
            setDaemon(true);
            this.f66593a = new C20190n();
            this.f66594b = EnumC20177c.f66603d;
            this.workerCtl = 0;
            this.nextParkedWorker = ExecutorC20174a.f66582j;
            AbstractC18354c.C18355a c18355a = AbstractC18354c.f63450a;
            this.f66599h = AbstractC18354c.f63451b.mo4062b();
        }

        public C20176b(ExecutorC20174a executorC20174a, int i) {
            this();
            m1040b(i);
        }

        /* renamed from: a */
        private final boolean m1044a() {
            boolean z;
            if (this.f66594b == EnumC20177c.f66600a) {
                return true;
            }
            ExecutorC20174a executorC20174a = ExecutorC20174a.this;
            while (true) {
                long j = executorC20174a.controlState;
                if (((int) ((9223367638808264704L & j) >> 42)) != 0) {
                    if (ExecutorC20174a.f66581e.compareAndSet(executorC20174a, j, j - 4398046511104L)) {
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
            this.f66594b = EnumC20177c.f66600a;
            return true;
        }

        /* renamed from: b */
        private final AbstractRunnableC20186j m1039b(boolean z) {
            AbstractRunnableC20186j m1034e;
            AbstractRunnableC20186j m1034e2;
            if (z) {
                boolean z2 = m1037c(ExecutorC20174a.this.f66588f * 2) == 0;
                if (z2 && (m1034e2 = m1034e()) != null) {
                    return m1034e2;
                }
                AbstractRunnableC20186j m1019b = this.f66593a.m1019b();
                if (m1019b != null) {
                    return m1019b;
                }
                if (!z2 && (m1034e = m1034e()) != null) {
                    return m1034e;
                }
            } else {
                AbstractRunnableC20186j m1034e3 = m1034e();
                if (m1034e3 != null) {
                    return m1034e3;
                }
            }
            return m1036c(false);
        }

        /* renamed from: b */
        private final void m1041b() {
            long j;
            int i;
            boolean z = true;
            if (!m1038c()) {
                ExecutorC20174a executorC20174a = ExecutorC20174a.this;
                if (this.nextParkedWorker != ExecutorC20174a.f66582j) {
                    return;
                }
                do {
                    j = executorC20174a.parkedWorkersStack;
                    int i2 = (int) (2097151 & j);
                    i = this.indexInArray;
                    if (C20159ao.m1083a()) {
                        if (!(i != 0)) {
                            throw new AssertionError();
                        }
                    }
                    this.nextParkedWorker = executorC20174a.f66587d.get(i2);
                } while (!ExecutorC20174a.f66580c.compareAndSet(executorC20174a, j, ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152)) | i));
                return;
            }
            if (C20159ao.m1083a()) {
                if (this.f66593a.m1026a() != 0) {
                    z = false;
                }
                if (!z) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (m1038c() && this.workerCtl == -1 && ExecutorC20174a.this._isTerminated == 0 && this.f66594b != EnumC20177c.f66604e) {
                m1043a(EnumC20177c.f66602c);
                Thread.interrupted();
                if (this.f66597f == 0) {
                    this.f66597f = System.nanoTime() + ExecutorC20174a.this.f66590h;
                }
                LockSupport.parkNanos(ExecutorC20174a.this.f66590h);
                if (System.nanoTime() - this.f66597f >= 0) {
                    this.f66597f = 0L;
                    m1035d();
                }
            }
        }

        /* renamed from: b */
        private void m1040b(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(ExecutorC20174a.this.f66591i);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        /* renamed from: c */
        private int m1037c(int i) {
            int i2 = this.f66599h;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.f66599h = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
        }

        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* renamed from: c */
        private final AbstractRunnableC20186j m1036c(boolean z) {
            if (C20159ao.m1083a()) {
                if (!(this.f66593a.m1026a() == 0)) {
                    throw new AssertionError();
                }
            }
            int m1052a = ExecutorC20174a.m1052a(ExecutorC20174a.this);
            if (m1052a < 2) {
                return null;
            }
            int m1037c = m1037c(m1052a);
            char c = 65535;
            int i = 0;
            while (i < m1052a) {
                int i2 = m1037c + 1;
                m1037c = i2;
                if (i2 > m1052a) {
                    m1037c = 1;
                }
                C20176b c20176b = ExecutorC20174a.this.f66587d.get(m1037c);
                char c2 = c;
                if (c20176b != null) {
                    c2 = c;
                    if (c20176b == this) {
                        continue;
                    } else {
                        if (C20159ao.m1083a()) {
                            if (!(this.f66593a.m1026a() == 0)) {
                                throw new AssertionError();
                            }
                        }
                        char m1017b = z ? this.f66593a.m1017b(c20176b.f66593a) : this.f66593a.m1022a(c20176b.f66593a);
                        if (m1017b == -1) {
                            return this.f66593a.m1019b();
                        }
                        c2 = c;
                        if (m1017b > 0) {
                            c2 = Math.min((long) c, (long) m1017b);
                        }
                    }
                }
                i++;
                c = c2;
            }
            if (c == Long.MAX_VALUE) {
                c = 0;
            }
            this.f66598g = c;
            return null;
        }

        /* renamed from: c */
        private final boolean m1038c() {
            return this.nextParkedWorker != ExecutorC20174a.f66582j;
        }

        /* renamed from: d */
        private final void m1035d() {
            synchronized (ExecutorC20174a.this.f66587d) {
                if (ExecutorC20174a.this._isTerminated != 0) {
                    return;
                }
                if (ExecutorC20174a.m1052a(ExecutorC20174a.this) <= ExecutorC20174a.this.f66588f) {
                    return;
                }
                if (!f66592c.compareAndSet(this, -1, 1)) {
                    return;
                }
                int i = this.indexInArray;
                m1040b(0);
                ExecutorC20174a.this.m1053a(this, i, 0);
                int andDecrement = (int) (ExecutorC20174a.f66581e.getAndDecrement(ExecutorC20174a.this) & 2097151);
                if (andDecrement != i) {
                    C20176b c20176b = ExecutorC20174a.this.f66587d.get(andDecrement);
                    C18524p.m3851a(c20176b);
                    C20176b c20176b2 = c20176b;
                    ExecutorC20174a.this.f66587d.set(i, c20176b2);
                    c20176b2.m1040b(i);
                    ExecutorC20174a.this.m1053a(c20176b2, andDecrement, i);
                }
                ExecutorC20174a.this.f66587d.set(andDecrement, null);
                C20128v c20128v = C20128v.f66529a;
                this.f66594b = EnumC20177c.f66604e;
            }
        }

        /* renamed from: e */
        private final AbstractRunnableC20186j m1034e() {
            if (m1037c(2) == 0) {
                AbstractRunnableC20186j c = ExecutorC20174a.this.f66585a.m846c();
                return c != null ? c : ExecutorC20174a.this.f66586b.m846c();
            }
            AbstractRunnableC20186j c2 = ExecutorC20174a.this.f66586b.m846c();
            return c2 != null ? c2 : ExecutorC20174a.this.f66585a.m846c();
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
            if (r0 == null) goto L10;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlinx.coroutines.p570b.AbstractRunnableC20186j m1042a(boolean r4) {
            /*
                r3 = this;
                r0 = r3
                boolean r0 = r0.m1044a()
                if (r0 == 0) goto Ld
                r0 = r3
                r1 = r4
                kotlinx.coroutines.b.j r0 = r0.m1039b(r1)
                return r0
            Ld:
                r0 = r4
                if (r0 == 0) goto L1f
                r0 = r3
                kotlinx.coroutines.b.n r0 = r0.f66593a
                kotlinx.coroutines.b.j r0 = r0.m1019b()
                r5 = r0
                r0 = r5
                r6 = r0
                r0 = r5
                if (r0 != 0) goto L2d
            L1f:
                r0 = r3
                kotlinx.coroutines.b.a r0 = kotlinx.coroutines.p570b.ExecutorC20174a.this
                kotlinx.coroutines.b.e r0 = r0.f66586b
                java.lang.Object r0 = r0.m846c()
                kotlinx.coroutines.b.j r0 = (kotlinx.coroutines.p570b.AbstractRunnableC20186j) r0
                r6 = r0
            L2d:
                r0 = r6
                r5 = r0
                r0 = r6
                if (r0 != 0) goto L39
                r0 = r3
                r1 = 1
                kotlinx.coroutines.b.j r0 = r0.m1036c(r1)
                r5 = r0
            L39:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.p570b.ExecutorC20174a.C20176b.m1042a(boolean):kotlinx.coroutines.b.j");
        }

        /* renamed from: a */
        public final boolean m1043a(int i) {
            int i2 = this.f66594b;
            boolean z = i2 == EnumC20177c.f66600a;
            if (z) {
                ExecutorC20174a.f66581e.addAndGet(ExecutorC20174a.this, 4398046511104L);
            }
            if (i2 != i) {
                this.f66594b = i;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x010e, code lost:
            m1043a(kotlinx.coroutines.p570b.ExecutorC20174a.EnumC20177c.f66604e);
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
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.p570b.ExecutorC20174a.C20176b.run():void");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.b.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/a$c.class */
    public static final class EnumC20177c extends Enum<EnumC20177c> {

        /* renamed from: a */
        public static final int f66600a = 1;

        /* renamed from: b */
        public static final int f66601b = 2;

        /* renamed from: c */
        public static final int f66602c = 3;

        /* renamed from: d */
        public static final int f66603d = 4;

        /* renamed from: e */
        public static final int f66604e = 5;

        /* renamed from: f */
        private static final /* synthetic */ int[] f66605f = {1, 2, 3, 4, 5};

        private EnumC20177c(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m1033a() {
            return (int[]) f66605f.clone();
        }
    }

    public ExecutorC20174a(int i, int i2, long j, String str) {
        this.f66588f = i;
        this.f66589g = i2;
        this.f66590h = j;
        this.f66591i = str;
        if (!(i > 0)) {
            throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        if (!(i2 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.f66585a = new C20181e();
        this.f66586b = new C20181e();
        this.parkedWorkersStack = 0L;
        this.f66587d = new AtomicReferenceArray<>(i2 + 1);
        this.controlState = i << 42;
        this._isTerminated = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    public /* synthetic */ ExecutorC20174a(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? C20189m.f66630e : j, (i3 & 8) != 0 ? "DefaultDispatcher" : str);
    }

    /* renamed from: a */
    private static int m1054a(C20176b c20176b) {
        Object obj = c20176b.nextParkedWorker;
        while (true) {
            Object obj2 = obj;
            if (obj2 == f66582j) {
                return -1;
            }
            if (obj2 == null) {
                return 0;
            }
            C20176b c20176b2 = (C20176b) obj2;
            int i = c20176b2.indexInArray;
            if (i != 0) {
                return i;
            }
            obj = c20176b2.nextParkedWorker;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ int m1052a(ExecutorC20174a executorC20174a) {
        return (int) (executorC20174a.controlState & 2097151);
    }

    /* renamed from: a */
    public static AbstractRunnableC20186j m1056a(Runnable runnable, AbstractC20187k abstractC20187k) {
        long mo1029a = C20189m.f66631f.mo1029a();
        if (runnable instanceof AbstractRunnableC20186j) {
            AbstractRunnableC20186j abstractRunnableC20186j = (AbstractRunnableC20186j) runnable;
            abstractRunnableC20186j.f66623g = mo1029a;
            abstractRunnableC20186j.f66624h = abstractC20187k;
            return abstractRunnableC20186j;
        }
        return new C20188l(runnable, mo1029a, abstractC20187k);
    }

    /* renamed from: a */
    public static /* synthetic */ void m1051a(ExecutorC20174a executorC20174a, Runnable runnable) {
        executorC20174a.m1055a(runnable, (AbstractC20187k) C20184h.f66621a, false);
    }

    /* renamed from: a */
    public static void m1050a(AbstractRunnableC20186j abstractRunnableC20186j) {
        try {
            abstractRunnableC20186j.run();
        } catch (Throwable th) {
            Thread currentThread = Thread.currentThread();
            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
        }
    }

    /* renamed from: a */
    private final boolean m1057a(long j) {
        if (C18363d.m4051c(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0) < this.f66588f) {
            int m1046d = m1046d();
            if (m1046d == 1 && this.f66588f > 1) {
                m1046d();
            }
            return m1046d > 0;
        }
        return false;
    }

    /* renamed from: b */
    private final C20176b m1049b() {
        while (true) {
            long j = this.parkedWorkersStack;
            C20176b c20176b = this.f66587d.get((int) (2097151 & j));
            if (c20176b == null) {
                return null;
            }
            int m1054a = m1054a(c20176b);
            if (m1054a >= 0 && f66580c.compareAndSet(this, j, m1054a | ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152)))) {
                c20176b.nextParkedWorker = f66582j;
                return c20176b;
            }
        }
    }

    /* renamed from: b */
    private static /* synthetic */ boolean m1048b(ExecutorC20174a executorC20174a) {
        return executorC20174a.m1057a(executorC20174a.controlState);
    }

    /* renamed from: c */
    private final boolean m1047c() {
        C20176b m1049b;
        do {
            m1049b = m1049b();
            if (m1049b == null) {
                return false;
            }
        } while (!C20176b.f66592c.compareAndSet(m1049b, -1, 0));
        LockSupport.unpark(m1049b);
        return true;
    }

    /* renamed from: d */
    private final int m1046d() {
        synchronized (this.f66587d) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j = this.controlState;
            int i = (int) (j & 2097151);
            int c = C18363d.m4051c(i - ((int) ((j & 4398044413952L) >> 21)), 0);
            if (c >= this.f66588f) {
                return 0;
            }
            if (i >= this.f66589g) {
                return 0;
            }
            int i2 = ((int) (this.controlState & 2097151)) + 1;
            if (!(i2 > 0 && this.f66587d.get(i2) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            C20176b c20176b = new C20176b(this, i2);
            this.f66587d.set(i2, c20176b);
            boolean z = false;
            if (i2 == ((int) (2097151 & f66581e.incrementAndGet(this)))) {
                z = true;
            }
            if (!z) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            c20176b.start();
            return c + 1;
        }
    }

    /* renamed from: e */
    private final C20176b m1045e() {
        Thread currentThread = Thread.currentThread();
        Thread thread = currentThread;
        if (!(currentThread instanceof C20176b)) {
            thread = null;
        }
        C20176b c20176b = (C20176b) thread;
        if (c20176b == null || !C18524p.m3850a(ExecutorC20174a.this, this)) {
            return null;
        }
        return c20176b;
    }

    /* renamed from: a */
    public final void m1058a() {
        if (!m1047c() && !m1048b(this)) {
            m1047c();
        }
    }

    /* renamed from: a */
    public final void m1055a(Runnable runnable, AbstractC20187k abstractC20187k, boolean z) {
        AbstractRunnableC20186j abstractRunnableC20186j;
        AbstractRunnableC20186j m1056a = m1056a(runnable, abstractC20187k);
        C20176b m1045e = m1045e();
        if (m1045e == null || m1045e.f66594b == EnumC20177c.f66604e || (m1056a.f66624h.mo1027d() == 0 && m1045e.f66594b == EnumC20177c.f66601b)) {
            abstractRunnableC20186j = m1056a;
        } else {
            m1045e.f66595d = true;
            abstractRunnableC20186j = m1045e.f66593a.m1023a(m1056a, z);
        }
        if (abstractRunnableC20186j != null) {
            if (!(abstractRunnableC20186j.f66624h.mo1027d() == 1 ? this.f66586b.m848a(abstractRunnableC20186j) : this.f66585a.m848a(abstractRunnableC20186j))) {
                throw new RejectedExecutionException(this.f66591i + " was terminated");
            }
        }
        boolean z2 = z && m1045e != null;
        if (m1056a.f66624h.mo1027d() == 0) {
            if (z2) {
                return;
            }
            m1058a();
            return;
        }
        long addAndGet = f66581e.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        if (z2 || m1047c() || m1057a(addAndGet)) {
            return;
        }
        m1047c();
    }

    /* renamed from: a */
    public final void m1053a(C20176b c20176b, int i, int i2) {
        while (true) {
            long j = this.parkedWorkersStack;
            int i3 = (int) (2097151 & j);
            int i4 = i3;
            if (i3 == i) {
                i4 = i2 == 0 ? m1054a(c20176b) : i2;
            }
            if (i4 >= 0 && f66580c.compareAndSet(this, j, ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j) & (-2097152)) | i4)) {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cb, code lost:
        if (r0 == null) goto L36;
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.p570b.ExecutorC20174a.close():void");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m1051a(this, runnable);
    }

    public final String toString() {
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList = new ArrayList();
        int length = this.f66587d.length();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 1;
        while (i10 < length) {
            C20176b c20176b = this.f66587d.get(i10);
            if (c20176b == null) {
                i4 = i5;
                i3 = i6;
                i2 = i7;
                i = i9;
            } else {
                int m1026a = c20176b.f66593a.m1026a();
                int i11 = C20178b.f66606a[c20176b.f66594b - 1];
                if (i11 == 1) {
                    i2 = i7 + 1;
                    i = i9;
                    i3 = i6;
                    i4 = i5;
                } else if (i11 == 2) {
                    i3 = i6 + 1;
                    arrayList.add(String.valueOf(m1026a) + C15291b.f55271a);
                    i4 = i5;
                    i2 = i7;
                    i = i9;
                } else if (i11 == 3) {
                    i4 = i5 + 1;
                    arrayList.add(String.valueOf(m1026a) + Constants.URL_CAMPAIGN);
                    i3 = i6;
                    i2 = i7;
                    i = i9;
                } else if (i11 == 4) {
                    int i12 = i8 + 1;
                    i4 = i5;
                    i3 = i6;
                    i2 = i7;
                    i8 = i12;
                    i = i9;
                    if (m1026a > 0) {
                        arrayList.add(String.valueOf(m1026a) + "d");
                        i4 = i5;
                        i3 = i6;
                        i2 = i7;
                        i8 = i12;
                        i = i9;
                    }
                } else if (i11 != 5) {
                    i4 = i5;
                    i3 = i6;
                    i2 = i7;
                    i = i9;
                } else {
                    i = i9 + 1;
                    i4 = i5;
                    i3 = i6;
                    i2 = i7;
                }
            }
            i10++;
            i5 = i4;
            i6 = i3;
            i7 = i2;
            i9 = i;
        }
        long j = this.controlState;
        return this.f66591i + '@' + Integer.toHexString(System.identityHashCode(this)) + "[Pool Size {core = " + this.f66588f + ", max = " + this.f66589g + "}, Worker States {CPU = " + i5 + ", blocking = " + i6 + ", parked = " + i7 + ", dormant = " + i8 + ", terminated = " + i9 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f66585a.m849a() + ", global blocking queue size = " + this.f66586b.m849a() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.f66588f - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }
}
