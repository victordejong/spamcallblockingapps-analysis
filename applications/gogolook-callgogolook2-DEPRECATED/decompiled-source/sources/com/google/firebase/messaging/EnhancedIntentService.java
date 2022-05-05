package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.messaging.EnhancedIntentService;
import java.util.concurrent.ExecutorService;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p364t.BinderC9910u0;
import p081h.p203i.p325c.p364t.C9906s0;
import p081h.p203i.p325c.p372x.C9985g;
import p081h.p203i.p325c.p372x.ExecutorC9983e;
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/EnhancedIntentService.class */
public abstract class EnhancedIntentService extends Service {
    public Binder binder;
    public int lastStartId;
    @VisibleForTesting
    public final ExecutorService executor = C9985g.m13761a();
    public final Object lock = new Object();
    public int runningTasks = 0;

    /* renamed from: com.google.firebase.messaging.EnhancedIntentService$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/EnhancedIntentService$a.class */
    public class C3674a implements BinderC9910u0.AbstractC9911a {
        public C3674a() {
        }

        @Override // p081h.p203i.p325c.p364t.BinderC9910u0.AbstractC9911a
        /* renamed from: a */
        public AbstractC9143h<Void> mo13969a(Intent intent) {
            return EnhancedIntentService.this.processIntent(intent);
        }
    }

    private void finishTask(Intent intent) {
        if (intent != null) {
            C9906s0.m13977a(intent);
        }
        synchronized (this.lock) {
            this.runningTasks--;
            if (this.runningTasks == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public AbstractC9143h<Void> processIntent(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return C9148k.m15999a((Object) null);
        }
        final C9145i iVar = new C9145i();
        this.executor.execute(new Runnable(this, intent, iVar) { // from class: h.i.c.x.d

            /* renamed from: a */
            public final EnhancedIntentService f22583a;

            /* renamed from: b */
            public final Intent f22584b;

            /* renamed from: c */
            public final C9145i f22585c;

            {
                this.f22583a = this;
                this.f22584b = intent;
                this.f22585c = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22583a.lambda$processIntent$0$EnhancedIntentService(this.f22584b, this.f22585c);
            }
        });
        return iVar.m16008a();
    }

    public Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    public final /* synthetic */ void lambda$onStartCommand$1$EnhancedIntentService(Intent intent, AbstractC9143h hVar) {
        finishTask(intent);
    }

    public final /* synthetic */ void lambda$processIntent$0$EnhancedIntentService(Intent intent, C9145i iVar) {
        try {
            handleIntent(intent);
        } finally {
            iVar.m16006a((C9145i) false);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.binder == null) {
                this.binder = new BinderC9910u0(new C3674a());
            }
            binder = this.binder;
        }
        return binder;
    }

    @Override // android.app.Service
    @CallSuper
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
        AbstractC9143h<Void> processIntent = processIntent(startCommandIntent);
        if (processIntent.mo16010d()) {
            finishTask(intent);
            return 2;
        }
        processIntent.mo16018a(ExecutorC9983e.f22586a, new AbstractC9132c(this, intent) { // from class: h.i.c.x.f

            /* renamed from: a */
            public final EnhancedIntentService f22587a;

            /* renamed from: b */
            public final Intent f22588b;

            {
                this.f22587a = this;
                this.f22588b = intent;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
            /* renamed from: a */
            public final void mo3743a(AbstractC9143h hVar) {
                this.f22587a.lambda$onStartCommand$1$EnhancedIntentService(this.f22588b, hVar);
            }
        });
        return 3;
    }

    public boolean stopSelfResultHook(int i) {
        return stopSelfResult(i);
    }
}
