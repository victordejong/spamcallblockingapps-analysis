package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.g;
import com.google.android.gms.tasks.k;
import com.google.firebase.b;
import com.google.firebase.c.f;
import com.google.firebase.f.i;
import com.google.firebase.iid.a.a;
import com.google.firebase.iid.r;
import com.google.firebase.iid.u;
import com.google.firebase.installations.h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {

    /* renamed from: a  reason: collision with root package name */
    static u f32318a;

    /* renamed from: b  reason: collision with root package name */
    static ScheduledExecutorService f32319b;
    private static final long i = TimeUnit.HOURS.toSeconds(8);
    private static final Pattern j = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: c  reason: collision with root package name */
    final Executor f32320c;

    /* renamed from: d  reason: collision with root package name */
    final b f32321d;
    final n e;
    final j f;
    final r g;
    final List<a.AbstractC0518a> h;
    private final h k;
    private boolean l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseInstanceId(b bVar, com.google.firebase.d.b<i> bVar2, com.google.firebase.d.b<f> bVar3, h hVar) {
        this(bVar, new n(bVar.a()), a.b(), a.b(), bVar2, bVar3, hVar);
    }

    FirebaseInstanceId(b bVar, n nVar, Executor executor, Executor executor2, com.google.firebase.d.b<i> bVar2, com.google.firebase.d.b<f> bVar3, h hVar) {
        this.l = false;
        this.h = new ArrayList();
        if (n.a(bVar) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (f32318a == null) {
                        f32318a = new u(bVar.a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f32321d = bVar;
            this.e = nVar;
            this.f = new j(bVar, nVar, bVar2, bVar3, hVar);
            this.f32320c = executor2;
            this.g = new r(executor);
            this.k = hVar;
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    private <T> T a(com.google.android.gms.tasks.h<T> hVar) throws IOException {
        try {
            return (T) k.a(hVar, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    f();
                }
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e2);
            }
        }
    }

    private static void a(b bVar) {
        o.a(bVar.c().f32317d, (Object) "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        o.a(bVar.c().f32315b, (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        o.a(bVar.c().f32314a, (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        o.b(bVar.c().f32315b.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        o.b(a(bVar.c().f32314a), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Runnable runnable, long j2) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f32319b == null) {
                    f32319b = new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.a.a("FirebaseInstanceId"));
                }
                f32319b.schedule(runnable, j2, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean a(String str) {
        return j.matcher(str).matches();
    }

    private com.google.android.gms.tasks.h<l> b(final String str, String str2) {
        final String b2 = b(str2);
        return k.a((Object) null).b(this.f32320c, new com.google.android.gms.tasks.b(this, str, b2) { // from class: com.google.firebase.iid.c

            /* renamed from: a  reason: collision with root package name */
            private final FirebaseInstanceId f32325a;

            /* renamed from: b  reason: collision with root package name */
            private final String f32326b;

            /* renamed from: c  reason: collision with root package name */
            private final String f32327c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32325a = this;
                this.f32326b = str;
                this.f32327c = b2;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(com.google.android.gms.tasks.h hVar) {
                final FirebaseInstanceId firebaseInstanceId = this.f32325a;
                final String str3 = this.f32326b;
                final String str4 = this.f32327c;
                final String a2 = firebaseInstanceId.a();
                final u.a a3 = firebaseInstanceId.a(str3, str4);
                return !firebaseInstanceId.a(a3) ? k.a(new m(a2, a3.f32366a)) : firebaseInstanceId.g.a(str3, str4, new r.a(firebaseInstanceId, a2, str3, str4, a3) { // from class: com.google.firebase.iid.f

                    /* renamed from: a  reason: collision with root package name */
                    private final FirebaseInstanceId f32330a;

                    /* renamed from: b  reason: collision with root package name */
                    private final String f32331b;

                    /* renamed from: c  reason: collision with root package name */
                    private final String f32332c;

                    /* renamed from: d  reason: collision with root package name */
                    private final String f32333d;
                    private final u.a e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f32330a = firebaseInstanceId;
                        this.f32331b = a2;
                        this.f32332c = str3;
                        this.f32333d = str4;
                        this.e = a3;
                    }

                    @Override // com.google.firebase.iid.r.a
                    public final com.google.android.gms.tasks.h a() {
                        final FirebaseInstanceId firebaseInstanceId2 = this.f32330a;
                        final String str5 = this.f32331b;
                        final String str6 = this.f32332c;
                        final String str7 = this.f32333d;
                        final u.a aVar = this.e;
                        j jVar = firebaseInstanceId2.f;
                        return jVar.a(jVar.a(str5, str6, str7, new Bundle())).a(firebaseInstanceId2.f32320c, new g(firebaseInstanceId2, str6, str7, str5) { // from class: com.google.firebase.iid.g

                            /* renamed from: a  reason: collision with root package name */
                            private final FirebaseInstanceId f32334a;

                            /* renamed from: b  reason: collision with root package name */
                            private final String f32335b;

                            /* renamed from: c  reason: collision with root package name */
                            private final String f32336c;

                            /* renamed from: d  reason: collision with root package name */
                            private final String f32337d;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f32334a = firebaseInstanceId2;
                                this.f32335b = str6;
                                this.f32336c = str7;
                                this.f32337d = str5;
                            }

                            @Override // com.google.android.gms.tasks.g
                            public final com.google.android.gms.tasks.h then(Object obj) {
                                FirebaseInstanceId firebaseInstanceId3 = this.f32334a;
                                String str8 = this.f32335b;
                                String str9 = this.f32336c;
                                String str10 = this.f32337d;
                                String str11 = (String) obj;
                                FirebaseInstanceId.f32318a.a(firebaseInstanceId3.d(), str8, str9, str11, firebaseInstanceId3.e.b());
                                return k.a(new m(str10, str11));
                            }
                        }).a(h.f32338a, new com.google.android.gms.tasks.f(firebaseInstanceId2, aVar) { // from class: com.google.firebase.iid.i

                            /* renamed from: a  reason: collision with root package name */
                            private final FirebaseInstanceId f32339a;

                            /* renamed from: b  reason: collision with root package name */
                            private final u.a f32340b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f32339a = firebaseInstanceId2;
                                this.f32340b = aVar;
                            }

                            @Override // com.google.android.gms.tasks.f
                            public final void onSuccess(Object obj) {
                                FirebaseInstanceId firebaseInstanceId3 = this.f32339a;
                                u.a aVar2 = this.f32340b;
                                String a4 = ((l) obj).a();
                                if (aVar2 == null || !a4.equals(aVar2.f32366a)) {
                                    for (a.AbstractC0518a aVar3 : firebaseInstanceId3.h) {
                                        aVar3.a(a4);
                                    }
                                }
                            }
                        });
                    }
                });
            }
        });
    }

    private static <T> T b(com.google.android.gms.tasks.h<T> hVar) {
        if (hVar.b()) {
            return hVar.d();
        }
        if (hVar.c()) {
            throw new CancellationException("Task is already canceled");
        } else if (hVar.a()) {
            throw new IllegalStateException(hVar.e());
        } else {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    private static String b(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        boolean z = false;
        if (!Log.isLoggable("FirebaseInstanceId", 3)) {
            if (Build.VERSION.SDK_INT == 23) {
                if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    public static void clearInstancesForTest() {
        synchronized (FirebaseInstanceId.class) {
            try {
                ScheduledExecutorService scheduledExecutorService = f32319b;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                f32319b = null;
                f32318a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void e() {
        synchronized (this) {
            if (!this.l) {
                a(0L);
            }
        }
    }

    private void f() {
        synchronized (this) {
            f32318a.a();
        }
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(b.d());
    }

    public static FirebaseInstanceId getInstance(b bVar) {
        a(bVar);
        FirebaseInstanceId firebaseInstanceId = (FirebaseInstanceId) bVar.a(FirebaseInstanceId.class);
        o.a(firebaseInstanceId, "Firebase Instance ID component is not present");
        return firebaseInstanceId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final u.a a(String str, String str2) {
        return f32318a.a(d(), str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        try {
            f32318a.b(this.f32321d.g());
            com.google.android.gms.tasks.h<String> b2 = this.k.b();
            o.a(b2, "Task must not be null");
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            b2.a(d.f32328a, new d(countDownLatch) { // from class: com.google.firebase.iid.e

                /* renamed from: a  reason: collision with root package name */
                private final CountDownLatch f32329a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32329a = countDownLatch;
                }

                @Override // com.google.android.gms.tasks.d
                public final void onComplete(com.google.android.gms.tasks.h hVar) {
                    this.f32329a.countDown();
                }
            });
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
            return (String) b(b2);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j2) {
        synchronized (this) {
            a(new v(this, Math.min(Math.max(30L, j2 + j2), i)), j2);
            this.l = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        synchronized (this) {
            this.l = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(u.a aVar) {
        return aVar == null || aVar.b(this.e.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final u.a b() {
        return a(n.a(this.f32321d), "*");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        return "[DEFAULT]".equals(this.f32321d.b()) ? "" : this.f32321d.g();
    }

    @Deprecated
    public void deleteInstanceId() throws IOException {
        a(this.f32321d);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            a(this.k.d());
            f();
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    @Deprecated
    public void deleteToken(String str, String str2) throws IOException {
        a(this.f32321d);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String b2 = b(str2);
            String a2 = a();
            j jVar = this.f;
            Bundle bundle = new Bundle();
            bundle.putString("delete", "1");
            a(jVar.a(jVar.a(a2, str, b2, bundle)));
            f32318a.b(d(), str, b2);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    public long getCreationTime() {
        return f32318a.a(this.f32321d.g());
    }

    @Deprecated
    public String getId() {
        a(this.f32321d);
        if (a(b())) {
            e();
        }
        return a();
    }

    @Deprecated
    public com.google.android.gms.tasks.h<l> getInstanceId() {
        a(this.f32321d);
        return b(n.a(this.f32321d), "*");
    }

    @Deprecated
    public String getToken() {
        a(this.f32321d);
        u.a b2 = b();
        if (a(b2)) {
            e();
        }
        return u.a.a(b2);
    }

    @Deprecated
    public String getToken(String str, String str2) throws IOException {
        a(this.f32321d);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((l) a(b(str, str2))).a();
        }
        throw new IOException("MAIN_THREAD");
    }

    public boolean isFcmAutoInitEnabled() {
        throw new IllegalStateException("FirebaseMessaging version not supported. Update to latest version.");
    }

    public boolean isGmsCorePresent() {
        return this.e.a() != 0;
    }

    public void setFcmAutoInitEnabled(boolean z) {
        throw new IllegalStateException("FirebaseMessaging version not supported. Update to latest version.");
    }
}
