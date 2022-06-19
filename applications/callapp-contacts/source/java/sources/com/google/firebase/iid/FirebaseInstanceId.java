package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.android.gms.tasks.AbstractC14184g;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.iid.C15778r;
import com.google.firebase.iid.C15782u;
import com.google.firebase.iid.p395a.AbstractC15760a;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p391d.AbstractC15728b;
import com.google.firebase.p394f.AbstractC15754i;
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

    /* renamed from: a */
    static C15782u f56106a;

    /* renamed from: b */
    static ScheduledExecutorService f56107b;

    /* renamed from: i */
    private static final long f56108i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: j */
    private static final Pattern f56109j = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: c */
    final Executor f56110c;

    /* renamed from: d */
    final C15601b f56111d;

    /* renamed from: e */
    final C15774n f56112e;

    /* renamed from: f */
    final C15770j f56113f;

    /* renamed from: g */
    final C15778r f56114g;

    /* renamed from: h */
    final List<AbstractC15760a.AbstractC15761a> f56115h;

    /* renamed from: k */
    private final AbstractC15822h f56116k;

    /* renamed from: l */
    private boolean f56117l;

    public FirebaseInstanceId(C15601b c15601b, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2, AbstractC15822h abstractC15822h) {
        this(c15601b, new C15774n(c15601b.m8583a()), C15759a.m8427b(), C15759a.m8427b(), abstractC15728b, abstractC15728b2, abstractC15822h);
    }

    FirebaseInstanceId(C15601b c15601b, C15774n c15774n, Executor executor, Executor executor2, AbstractC15728b<AbstractC15754i> abstractC15728b, AbstractC15728b<AbstractC15616f> abstractC15728b2, AbstractC15822h abstractC15822h) {
        this.f56117l = false;
        this.f56115h = new ArrayList();
        if (C15774n.m8417a(c15601b) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (f56106a == null) {
                        f56106a = new C15782u(c15601b.m8583a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f56111d = c15601b;
            this.f56112e = c15774n;
            this.f56113f = new C15770j(c15601b, c15774n, abstractC15728b, abstractC15728b2, abstractC15822h);
            this.f56110c = executor2;
            this.f56114g = new C15778r(executor);
            this.f56116k = abstractC15822h;
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    /* renamed from: a */
    private <T> T m8449a(AbstractC14185h<T> abstractC14185h) throws IOException {
        try {
            return (T) C14188k.m11467a(abstractC14185h, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    m8434f();
                }
                throw ((IOException) cause);
            } else if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            } else {
                throw ((RuntimeException) cause);
            }
        }
    }

    /* renamed from: a */
    private static void m8448a(C15601b c15601b) {
        C12045o.m19159a(c15601b.m8574c().f56102d, (Object) "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        C12045o.m19159a(c15601b.m8574c().f56100b, (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        C12045o.m19159a(c15601b.m8574c().f56099a, (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        C12045o.m19153b(c15601b.m8574c().f56100b.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C12045o.m19153b(m8445a(c15601b.m8574c().f56099a), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: a */
    public static void m8446a(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f56107b == null) {
                    f56107b = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC12095a("FirebaseInstanceId"));
                }
                f56107b.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static boolean m8445a(String str) {
        return f56109j.matcher(str).matches();
    }

    /* renamed from: b */
    private AbstractC14185h<AbstractC15772l> m8438b(String str, String str2) {
        return C14188k.m11464a((Object) null).mo11477b(this.f56110c, new AbstractC14179b(this, str, m8439b(str2)) { // from class: com.google.firebase.iid.c

            /* renamed from: a */
            private final FirebaseInstanceId f56121a;

            /* renamed from: b */
            private final String f56122b;

            /* renamed from: c */
            private final String f56123c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56121a = this;
                this.f56122b = str;
                this.f56123c = m8439b;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h) {
                final FirebaseInstanceId firebaseInstanceId = this.f56121a;
                final String str3 = this.f56122b;
                final String str4 = this.f56123c;
                final String m8451a = firebaseInstanceId.m8451a();
                final C15782u.C15783a m8444a = firebaseInstanceId.m8444a(str3, str4);
                return !firebaseInstanceId.m8447a(m8444a) ? C14188k.m11464a(new C15773m(m8451a, m8444a.f56166a)) : firebaseInstanceId.f56114g.m8410a(str3, str4, new C15778r.AbstractC15779a(firebaseInstanceId, m8451a, str3, str4, m8444a) { // from class: com.google.firebase.iid.f

                    /* renamed from: a */
                    private final FirebaseInstanceId f56126a;

                    /* renamed from: b */
                    private final String f56127b;

                    /* renamed from: c */
                    private final String f56128c;

                    /* renamed from: d */
                    private final String f56129d;

                    /* renamed from: e */
                    private final C15782u.C15783a f56130e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f56126a = firebaseInstanceId;
                        this.f56127b = m8451a;
                        this.f56128c = str3;
                        this.f56129d = str4;
                        this.f56130e = m8444a;
                    }

                    @Override // com.google.firebase.iid.C15778r.AbstractC15779a
                    /* renamed from: a */
                    public final AbstractC14185h mo8409a() {
                        final FirebaseInstanceId firebaseInstanceId2 = this.f56126a;
                        final String str5 = this.f56127b;
                        final String str6 = this.f56128c;
                        final String str7 = this.f56129d;
                        final C15782u.C15783a c15783a = this.f56130e;
                        C15770j c15770j = firebaseInstanceId2.f56113f;
                        return c15770j.m8422a(c15770j.m8421a(str5, str6, str7, new Bundle())).mo11479a(firebaseInstanceId2.f56110c, new AbstractC14184g(firebaseInstanceId2, str6, str7, str5) { // from class: com.google.firebase.iid.g

                            /* renamed from: a */
                            private final FirebaseInstanceId f56131a;

                            /* renamed from: b */
                            private final String f56132b;

                            /* renamed from: c */
                            private final String f56133c;

                            /* renamed from: d */
                            private final String f56134d;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f56131a = firebaseInstanceId2;
                                this.f56132b = str6;
                                this.f56133c = str7;
                                this.f56134d = str5;
                            }

                            @Override // com.google.android.gms.tasks.AbstractC14184g
                            public final AbstractC14185h then(Object obj) {
                                FirebaseInstanceId firebaseInstanceId3 = this.f56131a;
                                String str8 = this.f56132b;
                                String str9 = this.f56133c;
                                String str10 = this.f56134d;
                                String str11 = (String) obj;
                                FirebaseInstanceId.f56106a.m8403a(firebaseInstanceId3.m8436d(), str8, str9, str11, firebaseInstanceId3.f56112e.m8415b());
                                return C14188k.m11464a(new C15773m(str10, str11));
                            }
                        }).mo11480a(ExecutorC15768h.f56135a, new AbstractC14183f(firebaseInstanceId2, c15783a) { // from class: com.google.firebase.iid.i

                            /* renamed from: a */
                            private final FirebaseInstanceId f56136a;

                            /* renamed from: b */
                            private final C15782u.C15783a f56137b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f56136a = firebaseInstanceId2;
                                this.f56137b = c15783a;
                            }

                            @Override // com.google.android.gms.tasks.AbstractC14183f
                            public final void onSuccess(Object obj) {
                                FirebaseInstanceId firebaseInstanceId3 = this.f56136a;
                                C15782u.C15783a c15783a2 = this.f56137b;
                                String mo8419a = ((AbstractC15772l) obj).mo8419a();
                                if (c15783a2 == null || !mo8419a.equals(c15783a2.f56166a)) {
                                    for (AbstractC15760a.AbstractC15761a abstractC15761a : firebaseInstanceId3.f56115h) {
                                        abstractC15761a.mo8117a(mo8419a);
                                    }
                                }
                            }
                        });
                    }
                });
            }
        });
    }

    /* renamed from: b */
    private static <T> T m8440b(AbstractC14185h<T> abstractC14185h) {
        if (abstractC14185h.mo11478b()) {
            return abstractC14185h.mo11475d();
        }
        if (abstractC14185h.mo11476c()) {
            throw new CancellationException("Task is already canceled");
        }
        if (!abstractC14185h.mo11491a()) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
        throw new IllegalStateException(abstractC14185h.mo11474e());
    }

    /* renamed from: b */
    private static String m8439b(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    /* renamed from: c */
    public static boolean m8437c() {
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
                ScheduledExecutorService scheduledExecutorService = f56107b;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                f56107b = null;
                f56106a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    private void m8435e() {
        synchronized (this) {
            if (!this.f56117l) {
                m8450a(0L);
            }
        }
    }

    /* renamed from: f */
    private void m8434f() {
        synchronized (this) {
            f56106a.m8406a();
        }
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(C15601b.m8573d());
    }

    public static FirebaseInstanceId getInstance(C15601b c15601b) {
        m8448a(c15601b);
        FirebaseInstanceId firebaseInstanceId = (FirebaseInstanceId) c15601b.m8577a(FirebaseInstanceId.class);
        C12045o.m19161a(firebaseInstanceId, "Firebase Instance ID component is not present");
        return firebaseInstanceId;
    }

    /* renamed from: a */
    public final C15782u.C15783a m8444a(String str, String str2) {
        return f56106a.m8404a(m8436d(), str, str2);
    }

    /* renamed from: a */
    public final String m8451a() {
        try {
            f56106a.m8401b(this.f56111d.m8570g());
            AbstractC14185h<String> mo8286b = this.f56116k.mo8286b();
            C12045o.m19161a(mo8286b, "Task must not be null");
            CountDownLatch countDownLatch = new CountDownLatch(1);
            mo8286b.mo11482a(ExecutorC15764d.f56124a, new AbstractC14181d(countDownLatch) { // from class: com.google.firebase.iid.e

                /* renamed from: a */
                private final CountDownLatch f56125a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56125a = countDownLatch;
                }

                @Override // com.google.android.gms.tasks.AbstractC14181d
                public final void onComplete(AbstractC14185h abstractC14185h) {
                    this.f56125a.countDown();
                }
            });
            countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
            return (String) m8440b(mo8286b);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public final void m8450a(long j) {
        synchronized (this) {
            m8446a(new RunnableC15784v(this, Math.min(Math.max(30L, j + j), f56108i)), j);
            this.f56117l = true;
        }
    }

    /* renamed from: a */
    public final void m8442a(boolean z) {
        synchronized (this) {
            this.f56117l = z;
        }
    }

    /* renamed from: a */
    public final boolean m8447a(C15782u.C15783a c15783a) {
        return c15783a == null || c15783a.m8392b(this.f56112e.m8415b());
    }

    /* renamed from: b */
    public final C15782u.C15783a m8441b() {
        return m8444a(C15774n.m8417a(this.f56111d), "*");
    }

    /* renamed from: d */
    public final String m8436d() {
        return "[DEFAULT]".equals(this.f56111d.m8576b()) ? "" : this.f56111d.m8570g();
    }

    @Deprecated
    public void deleteInstanceId() throws IOException {
        m8448a(this.f56111d);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            m8449a(this.f56116k.mo8284d());
            m8434f();
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    @Deprecated
    public void deleteToken(String str, String str2) throws IOException {
        m8448a(this.f56111d);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String m8439b = m8439b(str2);
            String m8451a = m8451a();
            C15770j c15770j = this.f56113f;
            Bundle bundle = new Bundle();
            bundle.putString("delete", "1");
            m8449a(c15770j.m8422a(c15770j.m8421a(m8451a, str, m8439b, bundle)));
            f56106a.m8400b(m8436d(), str, m8439b);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    public long getCreationTime() {
        return f56106a.m8405a(this.f56111d.m8570g());
    }

    @Deprecated
    public String getId() {
        m8448a(this.f56111d);
        if (m8447a(m8441b())) {
            m8435e();
        }
        return m8451a();
    }

    @Deprecated
    public AbstractC14185h<AbstractC15772l> getInstanceId() {
        m8448a(this.f56111d);
        return m8438b(C15774n.m8417a(this.f56111d), "*");
    }

    @Deprecated
    public String getToken() {
        m8448a(this.f56111d);
        C15782u.C15783a m8441b = m8441b();
        if (m8447a(m8441b)) {
            m8435e();
        }
        return C15782u.C15783a.m8395a(m8441b);
    }

    @Deprecated
    public String getToken(String str, String str2) throws IOException {
        m8448a(this.f56111d);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((AbstractC15772l) m8449a(m8438b(str, str2))).mo8419a();
        }
        throw new IOException("MAIN_THREAD");
    }

    public boolean isFcmAutoInitEnabled() {
        throw new IllegalStateException("FirebaseMessaging version not supported. Update to latest version.");
    }

    public boolean isGmsCorePresent() {
        return this.f56112e.m8418a() != 0;
    }

    public void setFcmAutoInitEnabled(boolean z) {
        throw new IllegalStateException("FirebaseMessaging version not supported. Update to latest version.");
    }
}
