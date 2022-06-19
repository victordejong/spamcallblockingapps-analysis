package com.truecaller.messaging.urgent;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.urgent.service.UrgentMessageService;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p195a.p237h1.p239o.AbstractC6359c;
import p193e.p194a.p195a.p237h1.p239o.AbstractC6368i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006*\u0003\u0013\u001b#\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006("}, d2 = {"Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "finish", "qa", "", "pa", "()Z", "Ljava/lang/Runnable;", AbstractC2405c.f7629a, "Ljava/lang/Runnable;", "tryToFinishAgainRunnable", "com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b", "e", "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;", "finishSelfReceiver", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;", "a", "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;", "binder", "com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c", "d", "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;", "serviceConnection", "Landroid/os/Handler;", C22021b.f61237c, "Landroid/os/Handler;", "handler", "com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a", "f", "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;", "dismissListener", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity.class */
public final class UrgentMessageKeyguardActivity extends h {

    /* renamed from: g */
    public static final /* synthetic */ int f13903g = 0;

    /* renamed from: a */
    public UrgentMessageService.BinderC4280a f13904a;

    /* renamed from: b */
    public final Handler f13905b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Runnable f13906c = new RunnableC4274d();

    /* renamed from: d */
    public final ServiceConnectionC4273c f13907d = new ServiceConnectionC4273c();

    /* renamed from: e */
    public final C4272b f13908e = new C4272b();

    /* renamed from: f */
    public final C4271a f13909f = new C4271a();

    /* renamed from: com.truecaller.messaging.urgent.UrgentMessageKeyguardActivity$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a.class */
    public static final class C4271a implements AbstractC6359c {
        public C4271a() {
            UrgentMessageKeyguardActivity.this = r4;
        }

        @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6359c
        /* renamed from: a */
        public void mo31408a() {
            UrgentMessageKeyguardActivity.this.finish();
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.UrgentMessageKeyguardActivity$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b.class */
    public static final class C4272b extends BroadcastReceiver {
        public C4272b() {
            UrgentMessageKeyguardActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            UrgentMessageKeyguardActivity.this.finish();
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.UrgentMessageKeyguardActivity$c */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c.class */
    public static final class ServiceConnectionC4273c implements ServiceConnection {
        public ServiceConnectionC4273c() {
            UrgentMessageKeyguardActivity.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            l.e(componentName, AnalyticsConstants.NAME);
            l.e(iBinder, "service");
            UrgentMessageService.BinderC4280a binderC4280a = (UrgentMessageService.BinderC4280a) iBinder;
            UrgentMessageKeyguardActivity urgentMessageKeyguardActivity = UrgentMessageKeyguardActivity.this;
            urgentMessageKeyguardActivity.f13904a = binderC4280a;
            C4271a c4271a = urgentMessageKeyguardActivity.f13909f;
            l.e(c4271a, "listener");
            AbstractC6368i abstractC6368i = binderC4280a.f13939a.get();
            if (abstractC6368i != null) {
                abstractC6368i.mo31390c5(c4271a);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            UrgentMessageKeyguardActivity urgentMessageKeyguardActivity = UrgentMessageKeyguardActivity.this;
            int i = UrgentMessageKeyguardActivity.f13903g;
            urgentMessageKeyguardActivity.m34875qa();
        }
    }

    /* renamed from: com.truecaller.messaging.urgent.UrgentMessageKeyguardActivity$d */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$d.class */
    public static final class RunnableC4274d implements Runnable {
        public RunnableC4274d() {
            UrgentMessageKeyguardActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            UrgentMessageKeyguardActivity urgentMessageKeyguardActivity = UrgentMessageKeyguardActivity.this;
            int i = UrgentMessageKeyguardActivity.f13903g;
            urgentMessageKeyguardActivity.m34876pa();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void finish() {
        UrgentMessageKeyguardActivity.super.finish();
        overridePendingTransition(0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        UrgentMessageKeyguardActivity.super.onCreate(bundle);
        getWindow().setFlags(2621440, 2621440);
        View findViewById = findViewById(16908290);
        Object obj = C26467a.f74235a;
        findViewById.setBackgroundColor(C26467a.C26471d.m1787a(this, C2752R.color.urgent_messages_background));
        bindService(new Intent((Context) this, (Class<?>) UrgentMessageService.class), this.f13907d, 0);
        C27062a.m968b(this).m967c(this.f13908e, new IntentFilter("com.truecaller.messaging.urgent.ACTION_FINISH_UM_KEYGUARD_ACTIVITY"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        UrgentMessageKeyguardActivity.super.onDestroy();
        this.f13905b.removeCallbacks(this.f13906c);
        unbindService(this.f13907d);
        m34875qa();
        C27062a.m968b(this).m965e(this.f13908e);
    }

    public void onResume() {
        UrgentMessageKeyguardActivity.super.onResume();
        if (!m34876pa()) {
            this.f13905b.removeCallbacks(this.f13906c);
            this.f13905b.postDelayed(this.f13906c, 100L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final boolean m34876pa() {
        Object systemService = getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        if (((KeyguardManager) systemService).isKeyguardLocked() || isDestroyed() || isFinishing()) {
            return false;
        }
        finish();
        return true;
    }

    /* renamed from: qa */
    public final void m34875qa() {
        UrgentMessageService.BinderC4280a binderC4280a = this.f13904a;
        if (binderC4280a != null) {
            this.f13904a = null;
            C4271a c4271a = this.f13909f;
            l.e(c4271a, "listener");
            AbstractC6368i abstractC6368i = binderC4280a.f13939a.get();
            if (abstractC6368i == null) {
                return;
            }
            abstractC6368i.mo31397J5(c4271a);
        }
    }
}
