package com.p456lb.video_trimmer_library.p458b;

import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\bÀ\u0002\u0018��2\u00020\u0001:\u0001\u001cB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u001e\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\nJ\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001a\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m4298d2 = {"Lcom/lb/video_trimmer_library/utils/BackgroundExecutor;", "", "()V", "CURRENT_SERIAL", "Ljava/lang/ThreadLocal;", "", "DEFAULT_EXECUTOR", "Ljava/util/concurrent/Executor;", "TASKS", "Ljava/util/ArrayList;", "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "executor", "cancelAll", "", "id", "mayInterruptIfRunning", "", "directExecute", "Ljava/util/concurrent/Future;", "runnable", "Ljava/lang/Runnable;", "delay", "", "execute", "task", "hasSerialRunning", "serial", "take", "Task", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.b.a */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/a.class */
public final class C16596a {

    /* renamed from: b */
    private static final Executor f58402b;

    /* renamed from: c */
    private static final Executor f58403c;

    /* renamed from: a */
    public static final C16596a f58401a = new C16596a();

    /* renamed from: d */
    private static final ArrayList<AbstractRunnableC16597a> f58404d = new ArrayList<>();

    /* renamed from: e */
    private static final ThreadLocal<String> f58405e = new ThreadLocal<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018��2\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\b\u0010!\u001a\u00020\"H&J\r\u0010#\u001a\u00020\"H��¢\u0006\u0002\b$J\b\u0010%\u001a\u00020\"H\u0016R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000fX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\u0015R\u000e\u0010 \u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006&"}, m4298d2 = {"Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "Ljava/lang/Runnable;", "id", "", "delay", "", "serial", "(Ljava/lang/String;JLjava/lang/String;)V", "executionAsked", "", "getExecutionAsked$video_trimmer_library_release", "()Z", "setExecutionAsked$video_trimmer_library_release", "(Z)V", "future", "Ljava/util/concurrent/Future;", "getFuture$video_trimmer_library_release", "()Ljava/util/concurrent/Future;", "setFuture$video_trimmer_library_release", "(Ljava/util/concurrent/Future;)V", "getId", "()Ljava/lang/String;", "managed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getManaged$video_trimmer_library_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "remainingDelay", "getRemainingDelay$video_trimmer_library_release", "()J", "setRemainingDelay$video_trimmer_library_release", "(J)V", "getSerial", "targetTimeMillis", "execute", "", "postExecute", "postExecute$video_trimmer_library_release", "run", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.b.a$a */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/a$a.class */
    public static abstract class AbstractRunnableC16597a implements Runnable {

        /* renamed from: a */
        private final long f58406a;

        /* renamed from: b */
        long f58407b;

        /* renamed from: c */
        boolean f58408c;

        /* renamed from: d */
        Future<?> f58409d;

        /* renamed from: e */
        final AtomicBoolean f58410e = new AtomicBoolean();

        /* renamed from: f */
        final String f58411f;

        /* renamed from: g */
        final String f58412g;

        public AbstractRunnableC16597a(String str, long j, String str2) {
            this.f58411f = str;
            this.f58412g = str2;
            if (j <= 0) {
                this.f58406a = 0L;
                return;
            }
            this.f58407b = j;
            this.f58406a = System.currentTimeMillis() + j;
        }

        /* renamed from: a */
        public abstract void mo6911a();

        /* renamed from: b */
        public final void m6928b() {
            if (this.f58411f == null && this.f58412g == null) {
                return;
            }
            C16596a c16596a = C16596a.f58401a;
            C16596a.f58405e.set(null);
            synchronized (C16596a.class) {
                try {
                    C16596a c16596a2 = C16596a.f58401a;
                    C16596a.f58404d.remove(this);
                    if (this.f58412g != null) {
                        C16596a c16596a3 = C16596a.f58401a;
                        AbstractRunnableC16597a m6929b = C16596a.m6929b(this.f58412g);
                        if (m6929b != null) {
                            if (m6929b.f58407b != 0) {
                                m6929b.f58407b = Math.max(0L, this.f58406a - System.currentTimeMillis());
                            }
                            C16596a.f58401a.m6932a(m6929b);
                        }
                    }
                    C20128v c20128v = C20128v.f66529a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f58410e.getAndSet(true)) {
                return;
            }
            try {
                C16596a c16596a = C16596a.f58401a;
                C16596a.f58405e.set(this.f58412g);
                mo6911a();
            } finally {
                m6928b();
            }
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() * 2);
        C18524p.m3849a((Object) newScheduledThreadPool, "Executors.newScheduledTh…().availableProcessors())");
        ScheduledExecutorService scheduledExecutorService = newScheduledThreadPool;
        f58402b = scheduledExecutorService;
        f58403c = scheduledExecutorService;
    }

    private C16596a() {
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractRunnableC16597a m6929b(String str) {
        int size = f58404d.size();
        for (int i = 0; i < size; i++) {
            ArrayList<AbstractRunnableC16597a> arrayList = f58404d;
            if (C18524p.m3850a((Object) str, (Object) arrayList.get(i).f58412g)) {
                return arrayList.remove(i);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r12 == false) goto L20;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6932a(com.p456lb.video_trimmer_library.p458b.C16596a.AbstractRunnableC16597a r7) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p456lb.video_trimmer_library.p458b.C16596a.m6932a(com.lb.video_trimmer_library.b.a$a):void");
    }

    /* renamed from: a */
    public final void m6931a(String id) {
        synchronized (this) {
            C18524p.m3841c(id, "id");
            int size = f58404d.size();
            while (true) {
                int i = size - 1;
                if (i >= 0) {
                    ArrayList<AbstractRunnableC16597a> arrayList = f58404d;
                    AbstractRunnableC16597a abstractRunnableC16597a = arrayList.get(i);
                    C18524p.m3849a((Object) abstractRunnableC16597a, "TASKS[i]");
                    AbstractRunnableC16597a abstractRunnableC16597a2 = abstractRunnableC16597a;
                    size = i;
                    if (C18524p.m3850a((Object) id, (Object) abstractRunnableC16597a2.f58411f)) {
                        if (abstractRunnableC16597a2.f58409d != null) {
                            Future<?> future = abstractRunnableC16597a2.f58409d;
                            if (future == null) {
                                C18524p.m3855a();
                            }
                            future.cancel(true);
                            size = i;
                            if (!abstractRunnableC16597a2.f58410e.getAndSet(true)) {
                                abstractRunnableC16597a2.m6928b();
                                size = i;
                            }
                        } else {
                            size = i;
                            if (!abstractRunnableC16597a2.f58408c) {
                                C18524p.m3849a((Object) arrayList.remove(i), "TASKS.removeAt(i)");
                                size = i;
                            }
                        }
                    }
                }
            }
        }
    }
}
