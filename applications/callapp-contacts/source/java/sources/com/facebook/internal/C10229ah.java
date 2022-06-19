package com.facebook.internal;

import com.facebook.FacebookException;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\t\u0018�� \u001a2\u00020\u0001:\u0003\u001a\u001b\u001cB\u001b\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0007J\u0014\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u00060\bR\u00020��H\u0002J\u0016\u0010\u0016\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0018\u00010\bR\u00020��H\u0002J\b\u0010\u0018\u001a\u00020\u0014H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0018\u00010\bR\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\b\u0018\u00010\bR\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m4298d2 = {"Lcom/facebook/internal/WorkQueue;", "", "maxConcurrent", "", "executor", "Ljava/util/concurrent/Executor;", "(ILjava/util/concurrent/Executor;)V", "pendingJobs", "Lcom/facebook/internal/WorkQueue$WorkNode;", "runningCount", "runningJobs", "workLock", "Ljava/util/concurrent/locks/ReentrantLock;", "addActiveWorkItem", "Lcom/facebook/internal/WorkQueue$WorkItem;", "callback", "Ljava/lang/Runnable;", "addToFront", "", "execute", "", "node", "finishItemAndStartNew", "finished", "startItem", "validate", "Companion", "WorkItem", "WorkNode", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.ah */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah.class */
public final class C10229ah {

    /* renamed from: a */
    public static final C10230a f33709a = new C10230a(null);

    /* renamed from: b */
    private final ReentrantLock f33710b;

    /* renamed from: c */
    private C10232c f33711c;

    /* renamed from: d */
    private C10232c f33712d;

    /* renamed from: e */
    private int f33713e;

    /* renamed from: f */
    private final int f33714f;

    /* renamed from: g */
    private final Executor f33715g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/facebook/internal/WorkQueue$Companion;", "", "()V", "DEFAULT_MAX_CONCURRENT", "", "assert", "", "condition", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ah$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$a.class */
    public static final class C10230a {
        private C10230a() {
        }

        public /* synthetic */ C10230a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static final /* synthetic */ void m23143a(boolean z) {
            if (z) {
                return;
            }
            throw new FacebookException("Validation failed");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\b"}, m4298d2 = {"Lcom/facebook/internal/WorkQueue$WorkItem;", "", "isRunning", "", "()Z", "cancel", "moveToFront", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ah$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$b.class */
    public interface AbstractC10231b {
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0012\u001a\u00060��R\u00020\r2\f\u0010\u0013\u001a\b\u0018\u00010��R\u00020\r2\u0006\u0010\u0014\u001a\u00020\bJ\b\u0010\u0015\u001a\u00020\bH\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001a\u0010\u0018\u001a\b\u0018\u00010��R\u00020\r2\f\u0010\u0013\u001a\b\u0018\u00010��R\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR*\u0010\u000e\u001a\b\u0018\u00010��R\u00020\r2\f\u0010\f\u001a\b\u0018\u00010��R\u00020\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\b\u0018\u00010��R\u00020\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001b"}, m4298d2 = {"Lcom/facebook/internal/WorkQueue$WorkNode;", "Lcom/facebook/internal/WorkQueue$WorkItem;", "callback", "Ljava/lang/Runnable;", "(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V", "getCallback", "()Ljava/lang/Runnable;", "isRunning", "", "()Z", "setRunning", "(Z)V", "<set-?>", "Lcom/facebook/internal/WorkQueue;", "next", "getNext", "()Lcom/facebook/internal/WorkQueue$WorkNode;", "prev", "addToList", "list", "addToFront", "cancel", "moveToFront", "", "removeFromList", "verify", "shouldBeRunning", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ah$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$c.class */
    public final class C10232c implements AbstractC10231b {

        /* renamed from: a */
        boolean f33716a;

        /* renamed from: b */
        final Runnable f33717b;

        /* renamed from: c */
        final /* synthetic */ C10229ah f33718c;

        /* renamed from: d */
        private C10232c f33719d;

        /* renamed from: e */
        private C10232c f33720e;

        public C10232c(C10229ah c10229ah, Runnable callback) {
            C18524p.m3840d(callback, "callback");
            this.f33718c = c10229ah;
            this.f33717b = callback;
        }

        /* renamed from: a */
        public final C10232c m23142a(C10232c c10232c) {
            C10230a c10230a = C10229ah.f33709a;
            C10230a.m23143a(this.f33719d != null);
            C10230a c10230a2 = C10229ah.f33709a;
            C10230a.m23143a(this.f33720e != null);
            C10232c c10232c2 = this;
            C10232c c10232c3 = c10232c;
            if (c10232c == c10232c2) {
                C10232c c10232c4 = this.f33719d;
                c10232c3 = c10232c4;
                if (c10232c4 == c10232c2) {
                    c10232c3 = null;
                }
            }
            C10232c c10232c5 = this.f33719d;
            if (c10232c5 != null) {
                c10232c5.f33720e = this.f33720e;
            }
            C10232c c10232c6 = this.f33720e;
            if (c10232c6 != null) {
                c10232c6.f33719d = c10232c5;
            }
            this.f33720e = null;
            this.f33719d = null;
            return c10232c3;
        }

        /* renamed from: a */
        public final C10232c m23141a(C10232c c10232c, boolean z) {
            C10232c c10232c2;
            C10230a c10230a = C10229ah.f33709a;
            C10230a.m23143a(this.f33719d == null);
            C10230a c10230a2 = C10229ah.f33709a;
            C10230a.m23143a(this.f33720e == null);
            if (c10232c == null) {
                c10232c2 = this;
                this.f33720e = c10232c2;
                this.f33719d = c10232c2;
            } else {
                this.f33719d = c10232c;
                C10232c c10232c3 = c10232c.f33720e;
                this.f33720e = c10232c3;
                if (c10232c3 != null) {
                    c10232c3.f33719d = this;
                }
                C10232c c10232c4 = this.f33719d;
                c10232c2 = c10232c;
                if (c10232c4 != null) {
                    c10232c4.f33720e = c10232c3 != null ? c10232c3.f33719d : null;
                    c10232c2 = c10232c;
                }
            }
            if (c10232c2 != null) {
                return z ? this : c10232c2;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.ah$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/ah$d.class */
    public static final class RunnableC10233d implements Runnable {

        /* renamed from: b */
        final /* synthetic */ C10232c f33722b;

        RunnableC10233d(C10232c c10232c) {
            C10229ah.this = r4;
            this.f33722b = c10232c;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                    return;
                }
                this.f33722b.f33717b.run();
                C10229ah.this.m23148a(this.f33722b);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    public C10229ah() {
        this(0, null, 3, null);
    }

    public C10229ah(int i) {
        this(i, null, 2, null);
    }

    public C10229ah(int i, Executor executor) {
        C18524p.m3840d(executor, "executor");
        this.f33714f = i;
        this.f33715g = executor;
        this.f33710b = new ReentrantLock();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C10229ah(int r5, java.util.concurrent.Executor r6, int r7, kotlin.jvm.internal.DefaultConstructorMarker r8) {
        /*
            r4 = this;
            r0 = r7
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 8
            r5 = r0
        L9:
            r0 = r7
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L19
            java.util.concurrent.Executor r0 = com.facebook.C10181g.m23293f()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "FacebookSdk.getExecutor()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
        L19:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C10229ah.<init>(int, java.util.concurrent.Executor, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private AbstractC10231b m23145a(Runnable callback, boolean z) {
        C18524p.m3840d(callback, "callback");
        C10232c c10232c = new C10232c(this, callback);
        ReentrantLock reentrantLock = this.f33710b;
        reentrantLock.lock();
        try {
            this.f33711c = c10232c.m23141a(this.f33711c, true);
            C20128v c20128v = C20128v.f66529a;
            reentrantLock.unlock();
            m23148a((C10232c) null);
            return c10232c;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m23148a(C10232c c10232c) {
        C10232c c10232c2;
        this.f33710b.lock();
        if (c10232c != null) {
            this.f33712d = c10232c.m23142a(this.f33712d);
            this.f33713e--;
        }
        if (this.f33713e < this.f33714f) {
            C10232c c10232c3 = this.f33711c;
            c10232c2 = c10232c3;
            if (c10232c3 != null) {
                this.f33711c = c10232c3.m23142a(c10232c3);
                this.f33712d = c10232c3.m23141a(this.f33712d, false);
                this.f33713e++;
                c10232c3.f33716a = true;
                c10232c2 = c10232c3;
            }
        } else {
            c10232c2 = null;
        }
        this.f33710b.unlock();
        if (c10232c2 != null) {
            m23144b(c10232c2);
        }
    }

    /* renamed from: b */
    private final void m23144b(C10232c c10232c) {
        this.f33715g.execute(new RunnableC10233d(c10232c));
    }

    /* renamed from: a */
    public final AbstractC10231b m23146a(Runnable runnable) {
        return m23145a(runnable, true);
    }
}
