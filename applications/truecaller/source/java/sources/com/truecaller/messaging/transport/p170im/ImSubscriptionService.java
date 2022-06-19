package com.truecaller.messaging.transport.p170im;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p195a.p244k.p245a.AbstractC6557g0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u001aR\"\u0010#\u001a\u00020\u001c8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/truecaller/messaging/transport/im/ImSubscriptionService;", "Landroid/app/Service;", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "Ls1/s;", "onRebind", "(Landroid/content/Intent;)V", "", "onUnbind", "(Landroid/content/Intent;)Z", "onCreate", "()V", "onDestroy", "a", "Landroid/os/Handler;", C22021b.f61237c, "Landroid/os/Handler;", "handler", "Ljava/lang/Runnable;", AbstractC2405c.f7629a, "Ljava/lang/Runnable;", "stopRunnable", "Landroid/os/Binder;", "Landroid/os/Binder;", "binder", "Le/a/a/k/a/g0;", "d", "Le/a/a/k/a/g0;", "getSubscriptionManager$truecaller_googlePlayRelease", "()Le/a/a/k/a/g0;", "setSubscriptionManager$truecaller_googlePlayRelease", "(Le/a/a/k/a/g0;)V", "subscriptionManager", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.ImSubscriptionService */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImSubscriptionService.class */
public final class ImSubscriptionService extends Service {

    /* renamed from: a */
    public final Binder f13723a = new BinderC4255a();

    /* renamed from: b */
    public final Handler f13724b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Runnable f13725c = new RunnableC4256b();
    @Inject

    /* renamed from: d */
    public AbstractC6557g0 f13726d;

    /* renamed from: com.truecaller.messaging.transport.im.ImSubscriptionService$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImSubscriptionService$a.class */
    public static final class BinderC4255a extends Binder {
    }

    /* renamed from: com.truecaller.messaging.transport.im.ImSubscriptionService$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImSubscriptionService$b.class */
    public static final class RunnableC4256b implements Runnable {
        public RunnableC4256b() {
            ImSubscriptionService.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ImSubscriptionService.this.stopSelf();
        }
    }

    public ImSubscriptionService() {
        AbstractC16444k2.f46188a.m17389a().mo11392a(this);
    }

    /* renamed from: a */
    public final void m34907a() {
        this.f13724b.removeCallbacks(this.f13725c);
        try {
            startService(new Intent(this, ImSubscriptionService.class));
        } catch (IllegalStateException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        m34907a();
        return this.f13723a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AbstractC6557g0 abstractC6557g0 = this.f13726d;
        if (abstractC6557g0 != null) {
            abstractC6557g0.onCreate();
        } else {
            l.l("subscriptionManager");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        AbstractC6557g0 abstractC6557g0 = this.f13726d;
        if (abstractC6557g0 == null) {
            l.l("subscriptionManager");
            throw null;
        }
        abstractC6557g0.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        m34907a();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        this.f13724b.postDelayed(this.f13725c, 10000L);
        return true;
    }
}
