package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.installations.AbstractC9214g;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p020b.p036e.C1489a;
/* renamed from: com.google.firebase.messaging.s0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/s0.class */
public class C9310s0 {

    /* renamed from: a */
    private static final long f39851a = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: b */
    private final Context f39852b;

    /* renamed from: c */
    private final C9281f0 f39853c;

    /* renamed from: d */
    private final C9268a0 f39854d;

    /* renamed from: e */
    private final FirebaseMessaging f39855e;

    /* renamed from: f */
    private final AbstractC9214g f39856f;

    /* renamed from: h */
    private final ScheduledExecutorService f39858h;

    /* renamed from: j */
    private final C9306q0 f39860j;

    /* renamed from: g */
    private final Map<String, ArrayDeque<C7968h<Void>>> f39857g = new C1489a();

    /* renamed from: i */
    private boolean f39859i = false;

    private C9310s0(FirebaseMessaging firebaseMessaging, AbstractC9214g abstractC9214g, C9281f0 c9281f0, C9306q0 c9306q0, C9268a0 c9268a0, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f39855e = firebaseMessaging;
        this.f39856f = abstractC9214g;
        this.f39853c = c9281f0;
        this.f39860j = c9306q0;
        this.f39854d = c9268a0;
        this.f39852b = context;
        this.f39858h = scheduledExecutorService;
    }

    /* renamed from: a */
    private static <T> T m1169a(AbstractC7966g<T> abstractC7966g) {
        Throwable e;
        try {
            return (T) C7970j.m5801b(abstractC7966g, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e3);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    /* renamed from: b */
    private void m1168b(String str) {
        m1169a(this.f39854d.m1314j((String) m1169a(this.f39856f.getId()), this.f39855e.m1386c(), str));
    }

    /* renamed from: c */
    private void m1167c(String str) {
        m1169a(this.f39854d.m1313k((String) m1169a(this.f39856f.getId()), this.f39855e.m1386c(), str));
    }

    /* renamed from: d */
    public static AbstractC7966g<C9310s0> m1166d(FirebaseMessaging firebaseMessaging, AbstractC9214g abstractC9214g, C9281f0 c9281f0, C9268a0 c9268a0, Context context, ScheduledExecutorService scheduledExecutorService) {
        return C7970j.m5800c(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseMessaging, abstractC9214g, c9281f0, c9268a0) { // from class: com.google.firebase.messaging.r0

            /* renamed from: a */
            private final Context f39843a;

            /* renamed from: b */
            private final ScheduledExecutorService f39844b;

            /* renamed from: c */
            private final FirebaseMessaging f39845c;

            /* renamed from: d */
            private final AbstractC9214g f39846d;

            /* renamed from: e */
            private final C9281f0 f39847e;

            /* renamed from: f */
            private final C9268a0 f39848f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39843a = context;
                this.f39844b = scheduledExecutorService;
                this.f39845c = firebaseMessaging;
                this.f39846d = abstractC9214g;
                this.f39847e = c9281f0;
                this.f39848f = c9268a0;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return C9310s0.m1162h(this.f39843a, this.f39844b, this.f39845c, this.f39846d, this.f39847e, this.f39848f);
            }
        });
    }

    /* renamed from: f */
    static boolean m1164f() {
        boolean z = false;
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            if (Build.VERSION.SDK_INT == 23) {
                if (!Log.isLoggable("FirebaseMessaging", 3)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: h */
    public static final /* synthetic */ C9310s0 m1162h(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, AbstractC9214g abstractC9214g, C9281f0 c9281f0, C9268a0 c9268a0) {
        return new C9310s0(firebaseMessaging, abstractC9214g, c9281f0, C9306q0.m1173a(context, scheduledExecutorService), c9268a0, context, scheduledExecutorService);
    }

    /* renamed from: i */
    private void m1161i(C9304p0 c9304p0) {
        synchronized (this.f39857g) {
            String m1174e = c9304p0.m1174e();
            if (!this.f39857g.containsKey(m1174e)) {
                return;
            }
            ArrayDeque<C7968h<Void>> arrayDeque = this.f39857g.get(m1174e);
            C7968h<Void> poll = arrayDeque.poll();
            if (poll != null) {
                poll.m5805c(null);
            }
            if (arrayDeque.isEmpty()) {
                this.f39857g.remove(m1174e);
            }
        }
    }

    /* renamed from: m */
    private void m1157m() {
        if (!m1163g()) {
            m1154p(0L);
        }
    }

    /* renamed from: e */
    boolean m1165e() {
        return this.f39860j.m1172b() != null;
    }

    /* renamed from: g */
    boolean m1163g() {
        boolean z;
        synchronized (this) {
            z = this.f39859i;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c5 A[Catch: IOException -> 0x010c, TRY_ENTER, TryCatch #0 {IOException -> 0x010c, blocks: (B:2:0x0000, B:18:0x0040, B:20:0x0046, B:21:0x007d, B:23:0x008b, B:24:0x00c5, B:26:0x00d3), top: B:41:0x0000 }] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m1160j(com.google.firebase.messaging.C9304p0 r6) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.C9310s0.m1160j(com.google.firebase.messaging.p0):boolean");
    }

    /* renamed from: k */
    public void m1159k(Runnable runnable, long j) {
        this.f39858h.schedule(runnable, j, TimeUnit.SECONDS);
    }

    /* renamed from: l */
    public void m1158l(boolean z) {
        synchronized (this) {
            this.f39859i = z;
        }
    }

    /* renamed from: n */
    public void m1156n() {
        if (m1165e()) {
            m1157m();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (m1164f() == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1155o() {
        /*
            r3 = this;
        L0:
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            com.google.firebase.messaging.q0 r0 = r0.f39860j     // Catch: java.lang.Throwable -> L3e
            com.google.firebase.messaging.p0 r0 = r0.m1172b()     // Catch: java.lang.Throwable -> L3e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L21
            boolean r0 = m1164f()     // Catch: java.lang.Throwable -> L3e
            if (r0 == 0) goto L1d
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            int r0 = android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L3e
        L1d:
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            r0 = 1
            return r0
        L21:
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            r0 = r3
            r1 = r4
            boolean r0 = r0.m1160j(r1)
            if (r0 != 0) goto L2d
            r0 = 0
            return r0
        L2d:
            r0 = r3
            com.google.firebase.messaging.q0 r0 = r0.f39860j
            r1 = r4
            boolean r0 = r0.m1170d(r1)
            r0 = r3
            r1 = r4
            r0.m1161i(r1)
            goto L0
        L3e:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3e
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.C9310s0.m1155o():boolean");
    }

    /* renamed from: p */
    public void m1154p(long j) {
        m1159k(new RunnableC9312t0(this, this.f39852b, this.f39853c, Math.min(Math.max(30L, j + j), f39851a)), j);
        m1158l(true);
    }
}
