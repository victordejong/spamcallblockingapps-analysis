package com.facebook.internal;

import com.facebook.FacebookException;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\t\u0018�� \u001a2\u00020\u0001:\u0003\u001a\u001b\u001cB\u001b\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0007J\u0014\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\bR\u00020��H\u0002J\u0016\u0010\u0016\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0018\u00010\bR\u00020��H\u0002J\b\u0010\u0018\u001a\u00020\u0014H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0018\u00010\bR\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\b\u0018\u00010\bR\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lcom/facebook/internal/WorkQueue;", "", "maxConcurrent", "", "executor", "Ljava/util/concurrent/Executor;", "(ILjava/util/concurrent/Executor;)V", "pendingJobs", "Lcom/facebook/internal/WorkQueue$WorkNode;", "runningCount", "runningJobs", "workLock", "Ljava/util/concurrent/locks/ReentrantLock;", "addActiveWorkItem", "Lcom/facebook/internal/WorkQueue$WorkItem;", "callback", "Ljava/lang/Runnable;", "addToFront", "", "execute", "", "node", "finishItemAndStartNew", "finished", "startItem", "validate", "Companion", "WorkItem", "WorkNode", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah.class */
public final class ah {

    /* renamed from: a  reason: collision with root package name */
    public static final a f19848a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final ReentrantLock f19849b;

    /* renamed from: c  reason: collision with root package name */
    private c f19850c;

    /* renamed from: d  reason: collision with root package name */
    private c f19851d;
    private int e;
    private final int f;
    private final Executor g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/facebook/internal/WorkQueue$Companion;", "", "()V", "DEFAULT_MAX_CONCURRENT", "", "assert", "", "condition", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final /* synthetic */ void a(boolean z) {
            if (!z) {
                throw new FacebookException("Validation failed");
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/facebook/internal/WorkQueue$WorkItem;", "", "isRunning", "", "()Z", "cancel", "moveToFront", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$b.class */
    public interface b {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0012\u001a\u00060��R\u00020\r2\f\u0010\u0013\u001a\b\u0018\u00010��R\u00020\r2\u0006\u0010\u0014\u001a\u00020\bJ\b\u0010\u0015\u001a\u00020\bH\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\b\u0018\u00010��R\u00020\r2\f\u0010\u0013\u001a\b\u0018\u00010��R\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR*\u0010\u000e\u001a\b\u0018\u00010��R\u00020\r2\f\u0010\f\u001a\b\u0018\u00010��R\u00020\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\b\u0018\u00010��R\u00020\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/facebook/internal/WorkQueue$WorkNode;", "Lcom/facebook/internal/WorkQueue$WorkItem;", "callback", "Ljava/lang/Runnable;", "(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V", "getCallback", "()Ljava/lang/Runnable;", "isRunning", "", "()Z", "setRunning", "(Z)V", "<set-?>", "Lcom/facebook/internal/WorkQueue;", "next", "getNext", "()Lcom/facebook/internal/WorkQueue$WorkNode;", "prev", "addToList", "list", "addToFront", "cancel", "moveToFront", "", "removeFromList", "verify", "shouldBeRunning", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$c.class */
    public final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        boolean f19852a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f19853b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ah f19854c;

        /* renamed from: d  reason: collision with root package name */
        private c f19855d;
        private c e;

        public c(ah ahVar, Runnable callback) {
            p.d(callback, "callback");
            this.f19854c = ahVar;
            this.f19853b = callback;
        }

        public final c a(c cVar) {
            a aVar = ah.f19848a;
            boolean z = true;
            a.a(this.f19855d != null);
            a aVar2 = ah.f19848a;
            if (this.e == null) {
                z = false;
            }
            a.a(z);
            c cVar2 = this;
            c cVar3 = cVar;
            if (cVar == cVar2) {
                c cVar4 = this.f19855d;
                cVar3 = cVar4;
                if (cVar4 == cVar2) {
                    cVar3 = null;
                }
            }
            c cVar5 = this.f19855d;
            if (cVar5 != null) {
                cVar5.e = this.e;
            }
            c cVar6 = this.e;
            if (cVar6 != null) {
                cVar6.f19855d = cVar5;
            }
            this.e = null;
            this.f19855d = null;
            return cVar3;
        }

        public final c a(c cVar, boolean z) {
            c cVar2;
            a aVar = ah.f19848a;
            boolean z2 = true;
            a.a(this.f19855d == null);
            a aVar2 = ah.f19848a;
            if (this.e != null) {
                z2 = false;
            }
            a.a(z2);
            if (cVar == null) {
                cVar2 = this;
                this.e = cVar2;
                this.f19855d = cVar2;
            } else {
                this.f19855d = cVar;
                c cVar3 = cVar.e;
                this.e = cVar3;
                if (cVar3 != null) {
                    cVar3.f19855d = this;
                }
                c cVar4 = this.f19855d;
                cVar2 = cVar;
                if (cVar4 != null) {
                    cVar4.e = cVar3 != null ? cVar3.f19855d : null;
                    cVar2 = cVar;
                }
            }
            if (cVar2 != null) {
                return z ? this : cVar2;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$d.class */
    public static final class d implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f19857b;

        d(c cVar) {
            this.f19857b = cVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        this.f19857b.f19853b.run();
                        ah.this.a(this.f19857b);
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    public ah() {
        this(0, null, 3, null);
    }

    public ah(int i) {
        this(i, null, 2, null);
    }

    public ah(int i, Executor executor) {
        p.d(executor, "executor");
        this.f = i;
        this.g = executor;
        this.f19849b = new ReentrantLock();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ah(int r5, java.util.concurrent.Executor r6, int r7, kotlin.jvm.internal.DefaultConstructorMarker r8) {
        /*
            r4 = this;
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0009
            r0 = 8
            r5 = r0
        L_0x0009:
            r0 = r7
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0019
            java.util.concurrent.Executor r0 = com.facebook.g.f()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "FacebookSdk.getExecutor()"
            kotlin.jvm.internal.p.b(r0, r1)
        L_0x0019:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.ah.<init>(int, java.util.concurrent.Executor, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Finally extract failed */
    private b a(Runnable callback, boolean z) {
        p.d(callback, "callback");
        c cVar = new c(this, callback);
        ReentrantLock reentrantLock = this.f19849b;
        reentrantLock.lock();
        try {
            this.f19850c = cVar.a(this.f19850c, true);
            v vVar = v.f38654a;
            reentrantLock.unlock();
            a((c) null);
            return cVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(c cVar) {
        c cVar2;
        this.f19849b.lock();
        if (cVar != null) {
            this.f19851d = cVar.a(this.f19851d);
            this.e--;
        }
        if (this.e < this.f) {
            c cVar3 = this.f19850c;
            cVar2 = cVar3;
            if (cVar3 != null) {
                this.f19850c = cVar3.a(cVar3);
                this.f19851d = cVar3.a(this.f19851d, false);
                this.e++;
                cVar3.f19852a = true;
                cVar2 = cVar3;
            }
        } else {
            cVar2 = null;
        }
        this.f19849b.unlock();
        if (cVar2 != null) {
            b(cVar2);
        }
    }

    private final void b(c cVar) {
        this.g.execute(new d(cVar));
    }

    public final b a(Runnable runnable) {
        return a(runnable, true);
    }
}
