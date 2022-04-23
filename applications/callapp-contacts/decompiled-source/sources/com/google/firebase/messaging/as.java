package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.b.a;
import com.google.android.gms.tasks.i;
import com.google.android.gms.tasks.k;
import com.google.firebase.installations.h;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/as.class */
public final class as {

    /* renamed from: b  reason: collision with root package name */
    private static final long f32505b = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a  reason: collision with root package name */
    final ar f32506a;

    /* renamed from: c  reason: collision with root package name */
    private final Context f32507c;

    /* renamed from: d  reason: collision with root package name */
    private final ag f32508d;
    private final z e;
    private final FirebaseMessaging f;
    private final h g;
    private final ScheduledExecutorService i;
    private final Map<String, ArrayDeque<i<Void>>> h = new a();
    private boolean j = false;

    private as(FirebaseMessaging firebaseMessaging, h hVar, ag agVar, ar arVar, z zVar, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f = firebaseMessaging;
        this.g = hVar;
        this.f32508d = agVar;
        this.f32506a = arVar;
        this.e = zVar;
        this.f32507c = context;
        this.i = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.gms.tasks.h<as> a(final FirebaseMessaging firebaseMessaging, final h hVar, final ag agVar, final z zVar, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return k.a(scheduledExecutorService, new Callable(context, scheduledExecutorService, firebaseMessaging, hVar, agVar, zVar) { // from class: com.google.firebase.messaging.at

            /* renamed from: a  reason: collision with root package name */
            private final Context f32509a;

            /* renamed from: b  reason: collision with root package name */
            private final ScheduledExecutorService f32510b;

            /* renamed from: c  reason: collision with root package name */
            private final FirebaseMessaging f32511c;

            /* renamed from: d  reason: collision with root package name */
            private final h f32512d;
            private final ag e;
            private final z f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32509a = context;
                this.f32510b = scheduledExecutorService;
                this.f32511c = firebaseMessaging;
                this.f32512d = hVar;
                this.e = agVar;
                this.f = zVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return as.a(this.f32509a, this.f32510b, this.f32511c, this.f32512d, this.e, this.f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ as a(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, h hVar, ag agVar, z zVar) throws Exception {
        return new as(firebaseMessaging, hVar, agVar, ar.a(context, scheduledExecutorService), zVar, context, scheduledExecutorService);
    }

    private static <T> T a(com.google.android.gms.tasks.h<T> hVar) throws IOException {
        Throwable e;
        try {
            return (T) k.a(hVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e3);
            }
        } catch (TimeoutException e4) {
            e = e4;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d7 A[Catch: IOException -> 0x0137, TRY_ENTER, TryCatch #0 {IOException -> 0x0137, blocks: (B:2:0x0000, B:18:0x0040, B:20:0x0046, B:21:0x0076, B:23:0x00a7, B:24:0x00d7, B:26:0x0108), top: B:41:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(com.google.firebase.messaging.aq r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.as.a(com.google.firebase.messaging.aq):boolean");
    }

    private static boolean c() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        a(new au(this, this.f32507c, this.f32508d, Math.min(Math.max(30L, j + j), f32505b)), j);
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Runnable runnable, long j) {
        this.i.schedule(runnable, j, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        synchronized (this) {
            this.j = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() throws IOException {
        while (true) {
            synchronized (this) {
                aq a2 = this.f32506a.a();
                if (a2 == null) {
                    c();
                    return true;
                } else if (!a(a2)) {
                    return false;
                } else {
                    this.f32506a.a(a2);
                    synchronized (this.h) {
                        String str = a2.f32500c;
                        if (this.h.containsKey(str)) {
                            ArrayDeque<i<Void>> arrayDeque = this.h.get(str);
                            i<Void> poll = arrayDeque.poll();
                            if (poll != null) {
                                poll.a((i<Void>) null);
                            }
                            if (arrayDeque.isEmpty()) {
                                this.h.remove(str);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.j;
        }
        return z;
    }
}
