package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.c;
import com.google.android.gms.tasks.e;
import com.google.android.gms.tasks.f;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/a.class */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, a> f32598c = new HashMap();
    private static final Executor e = e.a();

    /* renamed from: a  reason: collision with root package name */
    public final o f32599a;

    /* renamed from: b  reason: collision with root package name */
    public h<f> f32600b = null;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f32601d;

    /* renamed from: com.google.firebase.remoteconfig.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/a$a.class */
    static final class C0523a<TResult> implements c, e, f<TResult> {

        /* renamed from: a  reason: collision with root package name */
        final CountDownLatch f32602a;

        private C0523a() {
            this.f32602a = new CountDownLatch(1);
        }

        @Override // com.google.android.gms.tasks.c
        public final void a() {
            this.f32602a.countDown();
        }

        @Override // com.google.android.gms.tasks.e
        public final void onFailure(Exception exc) {
            this.f32602a.countDown();
        }

        @Override // com.google.android.gms.tasks.f
        public final void onSuccess(TResult tresult) {
            this.f32602a.countDown();
        }
    }

    private a(ExecutorService executorService, o oVar) {
        this.f32601d = executorService;
        this.f32599a = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ h a(a aVar, boolean z, f fVar) throws Exception {
        if (z) {
            aVar.b(fVar);
        }
        return k.a(fVar);
    }

    public static a a(ExecutorService executorService, o oVar) {
        a aVar;
        synchronized (a.class) {
            try {
                String str = oVar.f32649a;
                Map<String, a> map = f32598c;
                if (!map.containsKey(str)) {
                    map.put(str, new a(executorService, oVar));
                }
                aVar = map.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    private void b(f fVar) {
        synchronized (this) {
            this.f32600b = k.a(fVar);
        }
    }

    public final h<f> a(f fVar) {
        return k.a(this.f32601d, b.a(this, fVar)).a(this.f32601d, c.a(this, true, fVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f a() {
        synchronized (this) {
            h<f> hVar = this.f32600b;
            if (hVar == null || !hVar.b()) {
                try {
                    h<f> b2 = b();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    C0523a aVar = new C0523a();
                    Executor executor = e;
                    b2.a(executor, (f<? super f>) aVar);
                    b2.a(executor, (e) aVar);
                    b2.a(executor, (c) aVar);
                    if (!aVar.f32602a.await(5L, timeUnit)) {
                        throw new TimeoutException("Task await timed out.");
                    } else if (b2.b()) {
                        return b2.d();
                    } else {
                        throw new ExecutionException(b2.e());
                    }
                } catch (InterruptedException | ExecutionException | TimeoutException e2) {
                    return null;
                }
            } else {
                return this.f32600b.d();
            }
        }
    }

    public final h<f> b() {
        h<f> hVar;
        synchronized (this) {
            h<f> hVar2 = this.f32600b;
            if (hVar2 == null || (hVar2.a() && !this.f32600b.b())) {
                ExecutorService executorService = this.f32601d;
                o oVar = this.f32599a;
                oVar.getClass();
                this.f32600b = k.a(executorService, d.a(oVar));
            }
            hVar = this.f32600b;
        }
        return hVar;
    }
}
