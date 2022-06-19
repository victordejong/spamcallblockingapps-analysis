package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.messaging.BinderC9324x0;
import java.util.concurrent.ExecutorService;
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/EnhancedIntentService.class */
public abstract class EnhancedIntentService extends Service {

    /* renamed from: e */
    private Binder f39696e;

    /* renamed from: g */
    private int f39698g;

    /* renamed from: d */
    final ExecutorService f39695d = C9300o.m1190c();

    /* renamed from: f */
    private final Object f39697f = new Object();

    /* renamed from: h */
    private int f39699h = 0;

    /* renamed from: com.google.firebase.messaging.EnhancedIntentService$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/EnhancedIntentService$a.class */
    class C9259a implements BinderC9324x0.AbstractC9325a {
        C9259a() {
            EnhancedIntentService.this = r4;
        }

        @Override // com.google.firebase.messaging.BinderC9324x0.AbstractC9325a
        /* renamed from: a */
        public AbstractC7966g<Void> mo1126a(Intent intent) {
            return EnhancedIntentService.this.m1390h(intent);
        }
    }

    /* renamed from: b */
    private void m1394b(Intent intent) {
        if (intent != null) {
            C9315u0.m1140b(intent);
        }
        synchronized (this.f39697f) {
            int i = this.f39699h - 1;
            this.f39699h = i;
            if (i == 0) {
                m1389i(this.f39698g);
            }
        }
    }

    /* renamed from: h */
    public AbstractC7966g<Void> m1390h(Intent intent) {
        if (m1393e(intent)) {
            return C7970j.m5798e(null);
        }
        C7968h c7968h = new C7968h();
        this.f39695d.execute(new Runnable(this, intent, c7968h) { // from class: com.google.firebase.messaging.d

            /* renamed from: d */
            private final EnhancedIntentService f39778d;

            /* renamed from: e */
            private final Intent f39779e;

            /* renamed from: f */
            private final C7968h f39780f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39778d = this;
                this.f39779e = intent;
                this.f39780f = c7968h;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f39778d.m1391g(this.f39779e, this.f39780f);
            }
        });
        return c7968h.m5807a();
    }

    /* renamed from: c */
    protected Intent mo1360c(Intent intent) {
        return intent;
    }

    /* renamed from: d */
    public abstract void mo1359d(Intent intent);

    /* renamed from: e */
    public boolean m1393e(Intent intent) {
        return false;
    }

    /* renamed from: f */
    public final /* synthetic */ void m1392f(Intent intent, AbstractC7966g abstractC7966g) {
        m1394b(intent);
    }

    /* renamed from: g */
    public final /* synthetic */ void m1391g(Intent intent, C7968h c7968h) {
        try {
            mo1359d(intent);
        } finally {
            c7968h.m5805c(false);
        }
    }

    /* renamed from: i */
    boolean m1389i(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.f39696e == null) {
                this.f39696e = new BinderC9324x0(new C9259a());
            }
            binder = this.f39696e;
        }
        return binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f39695d.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.f39697f) {
            this.f39698g = i2;
            this.f39699h++;
        }
        Intent mo1360c = mo1360c(intent);
        if (mo1360c == null) {
            m1394b(intent);
            return 2;
        }
        AbstractC7966g<Void> m1390h = m1390h(mo1360c);
        if (m1390h.mo5811p()) {
            m1394b(intent);
            return 2;
        }
        m1390h.mo5824c(ExecutorC9278e.f39782d, new AbstractC7958c(this, intent) { // from class: com.google.firebase.messaging.f

            /* renamed from: a */
            private final EnhancedIntentService f39784a;

            /* renamed from: b */
            private final Intent f39785b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39784a = this;
                this.f39785b = intent;
            }

            @Override // com.google.android.gms.tasks.AbstractC7958c
            /* renamed from: a */
            public void mo1124a(AbstractC7966g abstractC7966g) {
                this.f39784a.m1392f(this.f39785b, abstractC7966g);
            }
        });
        return 3;
    }
}
