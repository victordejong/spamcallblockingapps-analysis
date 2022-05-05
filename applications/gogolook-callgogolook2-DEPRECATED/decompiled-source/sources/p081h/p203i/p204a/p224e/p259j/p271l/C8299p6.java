package p081h.p203i.p204a.p224e.p259j.p271l;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.WorkerThread;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p373y.p374a.C10009a;
/* renamed from: h.i.a.e.j.l.p6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/p6.class */
public final class C8299p6 implements Handler.Callback {

    /* renamed from: b */
    public static final Object f19246b = new Object();
    @GuardedBy("lock")

    /* renamed from: c */
    public static C8299p6 f19247c;

    /* renamed from: a */
    public Handler f19248a;

    public C8299p6(Looper looper) {
        this.f19248a = new HandlerC7994a1(looper, this);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m18212a(Callable callable, C9145i iVar) {
        try {
            iVar.m16006a((C9145i) callable.call());
        } catch (C10009a e) {
            iVar.m16007a((Exception) e);
        } catch (Exception e2) {
            iVar.m16007a((Exception) new C10009a("Internal error has occurred when executing Firebase ML tasks", 13, e2));
        }
    }

    /* renamed from: b */
    public static Executor m18211b() {
        return EnumC8315q6.f19263a;
    }

    /* renamed from: c */
    public static C8299p6 m18209c() {
        C8299p6 p6Var;
        synchronized (f19246b) {
            if (f19247c == null) {
                HandlerThread handlerThread = new HandlerThread("FirebaseMLHandler", 9);
                handlerThread.start();
                f19247c = new C8299p6(handlerThread.getLooper());
            }
            p6Var = f19247c;
        }
        return p6Var;
    }

    /* renamed from: a */
    public final Handler m18216a() {
        return this.f19248a;
    }

    /* renamed from: a */
    public final <ResultT> AbstractC9143h<ResultT> m18214a(final Callable<ResultT> callable) {
        final C9145i iVar = new C9145i();
        this.f19248a.post(new Runnable(callable, iVar) { // from class: h.i.a.e.j.l.o6

            /* renamed from: a */
            public final Callable f19104a;

            /* renamed from: b */
            public final C9145i f19105b;

            {
                this.f19104a = callable;
                this.f19105b = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C8299p6.m18212a(this.f19104a, this.f19105b);
            }
        });
        return iVar.m16008a();
    }

    /* renamed from: a */
    public final <ResultT> void m18213a(Callable<ResultT> callable, long j) {
        Handler handler = this.f19248a;
        handler.sendMessageDelayed(handler.obtainMessage(1, callable), j);
    }

    /* renamed from: b */
    public final <ResultT> void m18210b(Callable<ResultT> callable) {
        this.f19248a.removeMessages(1, callable);
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            return true;
        }
        try {
            ((Callable) message.obj).call();
            return true;
        } catch (Exception e) {
            Log.e("MLTaskExecutor", "Exception when executing the delayed Callable");
            return true;
        }
    }
}
