package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.datatransport.g;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.tasks.k;
import com.google.firebase.b;
import com.google.firebase.b.a;
import com.google.firebase.b.d;
import com.google.firebase.c.f;
import com.google.firebase.f.i;
import com.google.firebase.iid.a.a;
import com.google.firebase.installations.h;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.aj;
import com.google.firebase.messaging.ao;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging.class */
public class FirebaseMessaging {
    static g f;
    static ScheduledExecutorService g;
    private static final long h = TimeUnit.HOURS.toSeconds(8);
    private static ao i;

    /* renamed from: a  reason: collision with root package name */
    final Context f32443a;

    /* renamed from: b  reason: collision with root package name */
    final z f32444b;

    /* renamed from: c  reason: collision with root package name */
    final aj f32445c;

    /* renamed from: d  reason: collision with root package name */
    final a f32446d;
    final ag e;
    private final b j;
    private final com.google.firebase.iid.a.a k;
    private final h l;
    private final Executor m;
    private final Executor n;
    private final com.google.android.gms.tasks.h<as> o;
    private boolean p;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging$a.class */
    final class a {

        /* renamed from: b  reason: collision with root package name */
        private final d f32448b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f32449c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.firebase.b.b<com.google.firebase.a> f32450d;
        private Boolean e;

        a(d dVar) {
            this.f32448b = dVar;
        }

        private void b() {
            synchronized (this) {
                if (!this.f32449c) {
                    Boolean c2 = c();
                    this.e = c2;
                    if (c2 == null) {
                        com.google.firebase.b.b<com.google.firebase.a> vVar = new com.google.firebase.b.b(this) { // from class: com.google.firebase.messaging.v

                            /* renamed from: a  reason: collision with root package name */
                            private final FirebaseMessaging.a f32565a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f32565a = this;
                            }

                            @Override // com.google.firebase.b.b
                            public final void a(a aVar) {
                                FirebaseMessaging.a aVar2 = this.f32565a;
                                if (aVar2.a()) {
                                    FirebaseMessaging.this.d();
                                }
                            }
                        };
                        this.f32450d = vVar;
                        this.f32448b.a(com.google.firebase.a.class, vVar);
                    }
                    this.f32449c = true;
                }
            }
        }

        private Boolean c() {
            ApplicationInfo applicationInfo;
            Context a2 = FirebaseMessaging.this.j.a();
            SharedPreferences sharedPreferences = a2.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = a2.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(a2.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a() {
            boolean booleanValue;
            synchronized (this) {
                b();
                Boolean bool = this.e;
                booleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.j.e();
            }
            return booleanValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseMessaging(b bVar, com.google.firebase.iid.a.a aVar, com.google.firebase.d.b<i> bVar2, com.google.firebase.d.b<f> bVar3, h hVar, g gVar, d dVar) {
        this(bVar, aVar, bVar2, bVar3, hVar, gVar, dVar, new ag(bVar.a()));
    }

    FirebaseMessaging(b bVar, com.google.firebase.iid.a.a aVar, com.google.firebase.d.b<i> bVar2, com.google.firebase.d.b<f> bVar3, h hVar, g gVar, d dVar, ag agVar) {
        this(bVar, aVar, hVar, gVar, dVar, agVar, new z(bVar, agVar, bVar2, bVar3, hVar), Executors.newSingleThreadExecutor(new com.google.android.gms.common.util.a.a("Firebase-Messaging-Task")), new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.a.a("Firebase-Messaging-Init")));
    }

    FirebaseMessaging(b bVar, com.google.firebase.iid.a.a aVar, h hVar, g gVar, d dVar, ag agVar, z zVar, Executor executor, Executor executor2) {
        this.p = false;
        f = gVar;
        this.j = bVar;
        this.k = aVar;
        this.l = hVar;
        this.f32446d = new a(dVar);
        Context a2 = bVar.a();
        this.f32443a = a2;
        this.e = agVar;
        this.n = executor;
        this.f32444b = zVar;
        this.f32445c = new aj(executor);
        this.m = executor2;
        if (aVar != null) {
            aVar.a(new a.AbstractC0518a(this) { // from class: com.google.firebase.messaging.p

                /* renamed from: a  reason: collision with root package name */
                private final FirebaseMessaging f32556a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32556a = this;
                }

                @Override // com.google.firebase.iid.a.a.AbstractC0518a
                public final void a(String str) {
                    this.f32556a.a(str);
                }
            });
        }
        synchronized (FirebaseMessaging.class) {
            try {
                if (i == null) {
                    i = new ao(a2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        executor2.execute(new Runnable(this) { // from class: com.google.firebase.messaging.q

            /* renamed from: a  reason: collision with root package name */
            private final FirebaseMessaging f32557a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32557a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging firebaseMessaging = this.f32557a;
                if (firebaseMessaging.f32446d.a()) {
                    firebaseMessaging.d();
                }
            }
        });
        com.google.android.gms.tasks.h<as> a3 = as.a(this, hVar, agVar, zVar, a2, new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.a.a("Firebase-Messaging-Topics-Io")));
        this.o = a3;
        a3.a(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.a.a("Firebase-Messaging-Trigger-Topics-Io")), new com.google.android.gms.tasks.f(this) { // from class: com.google.firebase.messaging.r

            /* renamed from: a  reason: collision with root package name */
            private final FirebaseMessaging f32558a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32558a = this;
            }

            @Override // com.google.android.gms.tasks.f
            public final void onSuccess(Object obj) {
                as asVar = (as) obj;
                if (this.f32558a.f32446d.a()) {
                    if ((asVar.f32506a.a() != null) && !asVar.b()) {
                        asVar.a(0L);
                    }
                }
            }
        });
    }

    public static FirebaseMessaging a() {
        FirebaseMessaging instance;
        synchronized (FirebaseMessaging.class) {
            try {
                instance = getInstance(b.d());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (g == null) {
                    g = new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.a.a("TAG"));
                }
                g.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean a(ao.a aVar) {
        return aVar == null || aVar.b(this.e.b());
    }

    public static g c() {
        return f;
    }

    private void f() {
        synchronized (this) {
            if (!this.p) {
                a(0L);
            }
        }
    }

    private ao.a g() {
        return i.a(h(), ag.a(this.j));
    }

    static FirebaseMessaging getInstance(b bVar) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                firebaseMessaging = (FirebaseMessaging) bVar.a(FirebaseMessaging.class);
                o.a(firebaseMessaging, "Firebase Messaging component is not present");
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    private String h() {
        return "[DEFAULT]".equals(this.j.b()) ? "" : this.j.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        synchronized (this) {
            a(new ap(this, Math.min(Math.max(30L, j + j), h)), j);
            this.p = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        if ("[DEFAULT]".equals(this.j.b())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf = String.valueOf(this.j.b());
                if (valueOf.length() != 0) {
                    "Invoking onNewToken for app: ".concat(valueOf);
                } else {
                    new String("Invoking onNewToken for app: ");
                }
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new g(this.f32443a).a(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        synchronized (this) {
            this.p = z;
        }
    }

    public final com.google.android.gms.tasks.h<String> b() {
        com.google.firebase.iid.a.a aVar = this.k;
        if (aVar != null) {
            return aVar.b();
        }
        final com.google.android.gms.tasks.i iVar = new com.google.android.gms.tasks.i();
        this.m.execute(new Runnable(this, iVar) { // from class: com.google.firebase.messaging.s

            /* renamed from: a  reason: collision with root package name */
            private final FirebaseMessaging f32559a;

            /* renamed from: b  reason: collision with root package name */
            private final com.google.android.gms.tasks.i f32560b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32559a = this;
                this.f32560b = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging firebaseMessaging = this.f32559a;
                com.google.android.gms.tasks.i iVar2 = this.f32560b;
                try {
                    iVar2.a((com.google.android.gms.tasks.i) firebaseMessaging.e());
                } catch (Exception e) {
                    iVar2.a(e);
                }
            }
        });
        return iVar.f30014a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        com.google.firebase.iid.a.a aVar = this.k;
        if (aVar != null) {
            aVar.a();
        } else if (a(g())) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String e() throws IOException {
        com.google.firebase.iid.a.a aVar = this.k;
        if (aVar != null) {
            try {
                return (String) k.a((com.google.android.gms.tasks.h<Object>) aVar.b());
            } catch (InterruptedException | ExecutionException e) {
                throw new IOException(e);
            }
        } else {
            ao.a g2 = g();
            if (!a(g2)) {
                return g2.f32489a;
            }
            final String a2 = ag.a(this.j);
            try {
                String str = (String) k.a((com.google.android.gms.tasks.h<Object>) this.l.b().b(o.a(), new com.google.android.gms.tasks.b(this, a2) { // from class: com.google.firebase.messaging.t

                    /* renamed from: a  reason: collision with root package name */
                    private final FirebaseMessaging f32561a;

                    /* renamed from: b  reason: collision with root package name */
                    private final String f32562b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f32561a = this;
                        this.f32562b = a2;
                    }

                    @Override // com.google.android.gms.tasks.b
                    public final Object then(final com.google.android.gms.tasks.h hVar) {
                        final FirebaseMessaging firebaseMessaging = this.f32561a;
                        return firebaseMessaging.f32445c.a(this.f32562b, new aj.a(firebaseMessaging, hVar) { // from class: com.google.firebase.messaging.u

                            /* renamed from: a  reason: collision with root package name */
                            private final FirebaseMessaging f32563a;

                            /* renamed from: b  reason: collision with root package name */
                            private final com.google.android.gms.tasks.h f32564b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f32563a = firebaseMessaging;
                                this.f32564b = hVar;
                            }

                            @Override // com.google.firebase.messaging.aj.a
                            public final com.google.android.gms.tasks.h a() {
                                FirebaseMessaging firebaseMessaging2 = this.f32563a;
                                com.google.android.gms.tasks.h hVar2 = this.f32564b;
                                z zVar = firebaseMessaging2.f32444b;
                                return zVar.a(zVar.a((String) hVar2.d(), ag.a(zVar.f32571a), "*", new Bundle()));
                            }
                        });
                    }
                }));
                i.a(h(), a2, str, this.e.b());
                if (g2 == null || !str.equals(g2.f32489a)) {
                    a(str);
                }
                return str;
            } catch (InterruptedException | ExecutionException e2) {
                throw new IOException(e2);
            }
        }
    }
}
