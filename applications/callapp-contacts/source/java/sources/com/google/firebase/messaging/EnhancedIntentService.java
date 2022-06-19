package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import com.google.android.gms.internal.p358d.C13270d;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.messaging.BinderC15866aw;
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
        C13270d.m13510a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC12095a("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.executor = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    private void finishTask(Intent intent) {
        if (intent != null) {
            C15865av.m8136a(intent);
        }
        synchronized (this.lock) {
            int i = this.runningTasks - 1;
            this.runningTasks = i;
            if (i == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    public AbstractC14185h<Void> processIntent(Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return C14188k.m11464a((Object) null);
        }
        C14186i c14186i = new C14186i();
        this.executor.execute(new Runnable(this, intent, c14186i) { // from class: com.google.firebase.messaging.d

            /* renamed from: a */
            private final EnhancedIntentService f56414a;

            /* renamed from: b */
            private final Intent f56415b;

            /* renamed from: c */
            private final C14186i f56416c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56414a = this;
                this.f56415b = intent;
                this.f56416c = c14186i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f56414a.lambda$processIntent$0$EnhancedIntentService(this.f56415b, this.f56416c);
            }
        });
        return c14186i.f52142a;
    }

    protected Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    public final /* synthetic */ void lambda$onStartCommand$1$EnhancedIntentService(Intent intent, AbstractC14185h abstractC14185h) {
        finishTask(intent);
    }

    public final /* synthetic */ void lambda$processIntent$0$EnhancedIntentService(Intent intent, C14186i c14186i) {
        try {
            handleIntent(intent);
        } finally {
            c14186i.m11471a((C14186i) false);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.binder == null) {
                this.binder = new BinderC15866aw(new BinderC15866aw.AbstractC15867a() { // from class: com.google.firebase.messaging.EnhancedIntentService.1
                    @Override // com.google.firebase.messaging.BinderC15866aw.AbstractC15867a
                    /* renamed from: a */
                    public final AbstractC14185h<Void> mo8133a(Intent intent2) {
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
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.lastStartId = i2;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            finishTask(intent);
            return 2;
        }
        AbstractC14185h<Void> processIntent = processIntent(startCommandIntent);
        if (processIntent.mo11491a()) {
            finishTask(intent);
            return 2;
        }
        processIntent.mo11482a(ExecutorC15877e.f56417a, new AbstractC14181d(this, intent) { // from class: com.google.firebase.messaging.f

            /* renamed from: a */
            private final EnhancedIntentService f56418a;

            /* renamed from: b */
            private final Intent f56419b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56418a = this;
                this.f56419b = intent;
            }

            @Override // com.google.android.gms.tasks.AbstractC14181d
            public final void onComplete(AbstractC14185h abstractC14185h) {
                this.f56418a.lambda$onStartCommand$1$EnhancedIntentService(this.f56419b, abstractC14185h);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i) {
        return stopSelfResult(i);
    }
}
