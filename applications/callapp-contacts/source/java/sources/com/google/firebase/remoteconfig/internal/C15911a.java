package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC14180c;
import com.google.android.gms.tasks.AbstractC14182e;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.firebase.remoteconfig.internal.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/a.class */
public final class C15911a {

    /* renamed from: c */
    private static final Map<String, C15911a> f56496c = new HashMap();

    /* renamed from: e */
    private static final Executor f56497e = ExecutorC15917e.m8070a();

    /* renamed from: a */
    public final C15931o f56498a;

    /* renamed from: b */
    public AbstractC14185h<C15918f> f56499b = null;

    /* renamed from: d */
    private final ExecutorService f56500d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.remoteconfig.internal.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/a$a.class */
    public static final class C15913a<TResult> implements AbstractC14180c, AbstractC14182e, AbstractC14183f<TResult> {

        /* renamed from: a */
        final CountDownLatch f56501a;

        private C15913a() {
            this.f56501a = new CountDownLatch(1);
        }

        @Override // com.google.android.gms.tasks.AbstractC14180c
        /* renamed from: a */
        public final void mo8074a() {
            this.f56501a.countDown();
        }

        @Override // com.google.android.gms.tasks.AbstractC14182e
        public final void onFailure(Exception exc) {
            this.f56501a.countDown();
        }

        @Override // com.google.android.gms.tasks.AbstractC14183f
        public final void onSuccess(TResult tresult) {
            this.f56501a.countDown();
        }
    }

    private C15911a(ExecutorService executorService, C15931o c15931o) {
        this.f56500d = executorService;
        this.f56498a = c15931o;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC14185h m8079a(C15911a c15911a, boolean z, C15918f c15918f) throws Exception {
        if (z) {
            c15911a.m8075b(c15918f);
        }
        return C14188k.m11464a(c15918f);
    }

    /* renamed from: a */
    public static C15911a m8077a(ExecutorService executorService, C15931o c15931o) {
        C15911a c15911a;
        synchronized (C15911a.class) {
            try {
                String str = c15931o.f56561a;
                Map<String, C15911a> map = f56496c;
                if (!map.containsKey(str)) {
                    map.put(str, new C15911a(executorService, c15931o));
                }
                c15911a = map.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return c15911a;
    }

    /* renamed from: b */
    private void m8075b(C15918f c15918f) {
        synchronized (this) {
            this.f56499b = C14188k.m11464a(c15918f);
        }
    }

    /* renamed from: a */
    public final AbstractC14185h<C15918f> m8078a(C15918f c15918f) {
        return C14188k.m11462a(this.f56500d, CallableC15914b.m8073a(this, c15918f)).mo11479a(this.f56500d, C15915c.m8072a(this, true, c15918f));
    }

    /* renamed from: a */
    public final C15918f m8081a() {
        synchronized (this) {
            AbstractC14185h<C15918f> abstractC14185h = this.f56499b;
            if (abstractC14185h != null && abstractC14185h.mo11478b()) {
                return this.f56499b.mo11475d();
            }
            try {
                AbstractC14185h<C15918f> m8076b = m8076b();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                C15913a c15913a = new C15913a();
                Executor executor = f56497e;
                m8076b.mo11480a(executor, (AbstractC14183f<? super C15918f>) c15913a);
                m8076b.mo11481a(executor, (AbstractC14182e) c15913a);
                m8076b.mo11483a(executor, (AbstractC14180c) c15913a);
                if (!c15913a.f56501a.await(5L, timeUnit)) {
                    throw new TimeoutException("Task await timed out.");
                }
                if (!m8076b.mo11478b()) {
                    throw new ExecutionException(m8076b.mo11474e());
                }
                return m8076b.mo11475d();
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                return null;
            }
        }
    }

    /* renamed from: b */
    public final AbstractC14185h<C15918f> m8076b() {
        AbstractC14185h<C15918f> abstractC14185h;
        synchronized (this) {
            AbstractC14185h<C15918f> abstractC14185h2 = this.f56499b;
            if (abstractC14185h2 == null || (abstractC14185h2.mo11491a() && !this.f56499b.mo11478b())) {
                ExecutorService executorService = this.f56500d;
                C15931o c15931o = this.f56498a;
                c15931o.getClass();
                this.f56499b = C14188k.m11462a(executorService, CallableC15916d.m8071a(c15931o));
            }
            abstractC14185h = this.f56499b;
        }
        return abstractC14185h;
    }
}
