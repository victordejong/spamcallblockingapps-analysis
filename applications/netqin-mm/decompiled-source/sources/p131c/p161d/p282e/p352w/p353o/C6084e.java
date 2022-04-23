package p131c.p161d.p282e.p352w.p353o;

import android.util.Log;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: c.d.e.w.o.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/e.class */
public class C6084e {

    /* renamed from: d */
    public static final Map<String, C6084e> f19546d = new HashMap();

    /* renamed from: e */
    public static final Executor f19547e = ExecutorC6083d.m22106a();

    /* renamed from: a */
    public final ExecutorService f19548a;

    /* renamed from: b */
    public final C6100o f19549b;

    /* renamed from: c */
    public Task<C6087f> f19550c = null;

    /* renamed from: c.d.e.w.o.e$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/w/o/e$b.class */
    public static class C6086b<TResult> implements OnSuccessListener<TResult>, OnFailureListener, OnCanceledListener {

        /* renamed from: a */
        public final CountDownLatch f19551a;

        public C6086b() {
            this.f19551a = new CountDownLatch(1);
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        /* renamed from: a */
        public void mo8584a() {
            this.f19551a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        /* renamed from: a */
        public void mo8583a(Exception exc) {
            this.f19551a.countDown();
        }

        /* renamed from: a */
        public boolean m22094a(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f19551a.await(j, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(TResult tresult) {
            this.f19551a.countDown();
        }
    }

    public C6084e(ExecutorService executorService, C6100o oVar) {
        this.f19548a = executorService;
        this.f19549b = oVar;
    }

    /* renamed from: a */
    public static C6084e m22098a(ExecutorService executorService, C6100o oVar) {
        C6084e eVar;
        synchronized (C6084e.class) {
            try {
                String b = oVar.m22020b();
                if (!f19546d.containsKey(b)) {
                    f19546d.put(b, new C6084e(executorService, oVar));
                }
                eVar = f19546d.get(b);
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Task m22102a(C6084e eVar, boolean z, C6087f fVar, Void r6) throws Exception {
        if (z) {
            eVar.m22096b(fVar);
        }
        return Tasks.m8591a(fVar);
    }

    /* renamed from: a */
    public static <TResult> TResult m22099a(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C6086b bVar = new C6086b();
        task.mo8608a(f19547e, (OnSuccessListener) bVar);
        task.mo8609a(f19547e, (OnFailureListener) bVar);
        task.mo8610a(f19547e, (OnCanceledListener) bVar);
        if (!bVar.m22094a(j, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        } else if (task.mo8601e()) {
            return task.mo8606b();
        } else {
            throw new ExecutionException(task.mo8617a());
        }
    }

    /* renamed from: a */
    public C6087f m22104a(long j) {
        synchronized (this) {
            if (this.f19550c == null || !this.f19550c.mo8601e()) {
                try {
                    return (C6087f) m22099a(m22097b(), j, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e);
                    return null;
                }
            } else {
                return this.f19550c.mo8606b();
            }
        }
    }

    /* renamed from: a */
    public Task<C6087f> m22101a(C6087f fVar) {
        return m22100a(fVar, true);
    }

    /* renamed from: a */
    public Task<C6087f> m22100a(C6087f fVar, boolean z) {
        return Tasks.m8589a(this.f19548a, CallableC6080a.m22109a(this, fVar)).mo8607a(this.f19548a, C6081b.m22108a(this, z, fVar));
    }

    /* renamed from: a */
    public void m22105a() {
        synchronized (this) {
            this.f19550c = Tasks.m8591a((Object) null);
        }
        this.f19549b.m22023a();
    }

    /* renamed from: b */
    public Task<C6087f> m22097b() {
        Task<C6087f> task;
        synchronized (this) {
            if (this.f19550c == null || (this.f19550c.mo8602d() && !this.f19550c.mo8601e())) {
                ExecutorService executorService = this.f19548a;
                C6100o oVar = this.f19549b;
                oVar.getClass();
                this.f19550c = Tasks.m8589a(executorService, CallableC6082c.m22107a(oVar));
            }
            task = this.f19550c;
        }
        return task;
    }

    /* renamed from: b */
    public final void m22096b(C6087f fVar) {
        synchronized (this) {
            this.f19550c = Tasks.m8591a(fVar);
        }
    }

    /* renamed from: c */
    public C6087f m22095c() {
        return m22104a(5L);
    }
}
