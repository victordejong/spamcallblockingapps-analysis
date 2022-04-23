package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.util.a.a;
import com.google.android.gms.internal.d.d;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
import com.google.android.gms.tasks.k;
import com.google.firebase.messaging.aw;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/EnhancedIntentService.class */
public abstract class EnhancedIntentService extends Service {
    private Binder binder;
    final ExecutorService executor;
    private int lastStartId;
    private final Object lock = new Object();
    private int runningTasks = 0;

    public EnhancedIntentService() {
        d.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.executor = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    private void finishTask(Intent intent) {
        if (intent != null) {
            av.a(intent);
        }
        synchronized (this.lock) {
            int i = this.runningTasks - 1;
            this.runningTasks = i;
            if (i == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public h<Void> processIntent(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return k.a((Object) null);
        }
        final i iVar = new i();
        this.executor.execute(new Runnable(this, intent, iVar) { // from class: com.google.firebase.messaging.d

            /* renamed from: a  reason: collision with root package name */
            private final EnhancedIntentService f32537a;

            /* renamed from: b  reason: collision with root package name */
            private final Intent f32538b;

            /* renamed from: c  reason: collision with root package name */
            private final i f32539c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32537a = this;
                this.f32538b = intent;
                this.f32539c = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32537a.lambda$processIntent$0$EnhancedIntentService(this.f32538b, this.f32539c);
            }
        });
        return iVar.f30014a;
    }

    protected Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onStartCommand$1$EnhancedIntentService(Intent intent, h hVar) {
        finishTask(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$processIntent$0$EnhancedIntentService(Intent intent, i iVar) {
        try {
            handleIntent(intent);
        } finally {
            iVar.a((i) false);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.binder == null) {
                this.binder = new aw(new aw.a() { // from class: com.google.firebase.messaging.EnhancedIntentService.1
                    @Override // com.google.firebase.messaging.aw.a
                    public final h<Void> a(Intent intent2) {
                        return EnhancedIntentService.this.processIntent(intent2);
                    }
                });
            }
            binder = this.binder;
        }
        return binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.lastStartId = i2;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            finishTask(intent);
            return 2;
        }
        h<Void> processIntent = processIntent(startCommandIntent);
        if (processIntent.a()) {
            finishTask(intent);
            return 2;
        }
        processIntent.a(e.f32540a, new com.google.android.gms.tasks.d(this, intent) { // from class: com.google.firebase.messaging.f

            /* renamed from: a  reason: collision with root package name */
            private final EnhancedIntentService f32541a;

            /* renamed from: b  reason: collision with root package name */
            private final Intent f32542b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32541a = this;
                this.f32542b = intent;
            }

            @Override // com.google.android.gms.tasks.d
            public final void onComplete(h hVar) {
                this.f32541a.lambda$onStartCommand$1$EnhancedIntentService(this.f32542b, hVar);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i) {
        return stopSelfResult(i);
    }
}
