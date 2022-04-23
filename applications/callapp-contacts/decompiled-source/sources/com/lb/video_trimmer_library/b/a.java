package com.lb.video_trimmer_library.b;

import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\bÀ\u0002\u0018��2\u00020\u0001:\u0001\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u001e\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\nJ\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001a\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lcom/lb/video_trimmer_library/utils/BackgroundExecutor;", "", "()V", "CURRENT_SERIAL", "Ljava/lang/ThreadLocal;", "", "DEFAULT_EXECUTOR", "Ljava/util/concurrent/Executor;", "TASKS", "Ljava/util/ArrayList;", "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "executor", "cancelAll", "", "id", "mayInterruptIfRunning", "", "directExecute", "Ljava/util/concurrent/Future;", "runnable", "Ljava/lang/Runnable;", "delay", "", "execute", "task", "hasSerialRunning", "serial", "take", "Task", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Executor f33622b;

    /* renamed from: c  reason: collision with root package name */
    private static final Executor f33623c;

    /* renamed from: a  reason: collision with root package name */
    public static final a f33621a = new a();

    /* renamed from: d  reason: collision with root package name */
    private static final ArrayList<AbstractRunnableC0542a> f33624d = new ArrayList<>();
    private static final ThreadLocal<String> e = new ThreadLocal<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018��2\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\b\u0010!\u001a\u00020\"H&J\r\u0010#\u001a\u00020\"H��¢\u0006\u0002\b$J\b\u0010%\u001a\u00020\"H\u0016R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000fX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\u0015R\u000e\u0010 \u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "Ljava/lang/Runnable;", "id", "", "delay", "", "serial", "(Ljava/lang/String;JLjava/lang/String;)V", "executionAsked", "", "getExecutionAsked$video_trimmer_library_release", "()Z", "setExecutionAsked$video_trimmer_library_release", "(Z)V", "future", "Ljava/util/concurrent/Future;", "getFuture$video_trimmer_library_release", "()Ljava/util/concurrent/Future;", "setFuture$video_trimmer_library_release", "(Ljava/util/concurrent/Future;)V", "getId", "()Ljava/lang/String;", "managed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getManaged$video_trimmer_library_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "remainingDelay", "getRemainingDelay$video_trimmer_library_release", "()J", "setRemainingDelay$video_trimmer_library_release", "(J)V", "getSerial", "targetTimeMillis", "execute", "", "postExecute", "postExecute$video_trimmer_library_release", "run", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/a$a.class */
    public static abstract class AbstractRunnableC0542a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f33625a;

        /* renamed from: b  reason: collision with root package name */
        long f33626b;

        /* renamed from: c  reason: collision with root package name */
        boolean f33627c;

        /* renamed from: d  reason: collision with root package name */
        Future<?> f33628d;
        final AtomicBoolean e = new AtomicBoolean();
        final String f;
        final String g;

        public AbstractRunnableC0542a(String str, long j, String str2) {
            this.f = str;
            this.g = str2;
            if (j > 0) {
                this.f33626b = j;
                this.f33625a = System.currentTimeMillis() + j;
                return;
            }
            this.f33625a = 0L;
        }

        public abstract void a();

        public final void b() {
            if (this.f != null || this.g != null) {
                a aVar = a.f33621a;
                a.e.set(null);
                synchronized (a.class) {
                    try {
                        a aVar2 = a.f33621a;
                        a.f33624d.remove(this);
                        if (this.g != null) {
                            a aVar3 = a.f33621a;
                            AbstractRunnableC0542a b2 = a.b(this.g);
                            if (b2 != null) {
                                if (b2.f33626b != 0) {
                                    b2.f33626b = Math.max(0L, this.f33625a - System.currentTimeMillis());
                                }
                                a.f33621a.a(b2);
                            }
                        }
                        v vVar = v.f38654a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.e.getAndSet(true)) {
                try {
                    a aVar = a.f33621a;
                    a.e.set(this.g);
                    a();
                } finally {
                    b();
                }
            }
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        p.a((Object) newScheduledThreadPool, "Executors.newScheduledTh…().availableProcessors())");
        ScheduledExecutorService scheduledExecutorService = newScheduledThreadPool;
        f33622b = scheduledExecutorService;
        f33623c = scheduledExecutorService;
    }

    private a() {
    }

    public static final /* synthetic */ AbstractRunnableC0542a b(String str) {
        int size = f33624d.size();
        for (int i = 0; i < size; i++) {
            ArrayList<AbstractRunnableC0542a> arrayList = f33624d;
            if (p.a((Object) str, (Object) arrayList.get(i).g)) {
                return arrayList.remove(i);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r12 == false) goto L_0x005a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.lb.video_trimmer_library.b.a.AbstractRunnableC0542a r7) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lb.video_trimmer_library.b.a.a(com.lb.video_trimmer_library.b.a$a):void");
    }

    public final void a(String id) {
        synchronized (this) {
            p.c(id, "id");
            int size = f33624d.size();
            while (true) {
                int i = size - 1;
                if (i >= 0) {
                    ArrayList<AbstractRunnableC0542a> arrayList = f33624d;
                    AbstractRunnableC0542a aVar = arrayList.get(i);
                    p.a((Object) aVar, "TASKS[i]");
                    AbstractRunnableC0542a aVar2 = aVar;
                    size = i;
                    if (p.a((Object) id, (Object) aVar2.f)) {
                        if (aVar2.f33628d != null) {
                            Future<?> future = aVar2.f33628d;
                            if (future == null) {
                                p.a();
                            }
                            future.cancel(true);
                            size = i;
                            if (!aVar2.e.getAndSet(true)) {
                                aVar2.b();
                                size = i;
                            }
                        } else {
                            size = i;
                            if (!aVar2.f33627c) {
                                p.a((Object) arrayList.remove(i), "TASKS.removeAt(i)");
                                size = i;
                            }
                        }
                    }
                }
            }
        }
    }
}
