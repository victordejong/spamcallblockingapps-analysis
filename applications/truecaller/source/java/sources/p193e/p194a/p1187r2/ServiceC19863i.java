package p193e.p194a.p1187r2;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
/* renamed from: e.a.r2.i */
/* loaded from: classes5-dex2jar.jar:e/a/r2/i.class */
public class ServiceC19863i extends Service {

    /* renamed from: a */
    public final String f56274a;

    /* renamed from: b */
    public final boolean f56275b;

    /* renamed from: c */
    public final long f56276c;

    /* renamed from: d */
    public HandlerThread f56277d;

    /* renamed from: e */
    public Binder f56278e;

    /* renamed from: f */
    public AbstractC19864a f56279f = null;

    /* renamed from: e.a.r2.i$a */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/i$a.class */
    public interface AbstractC19864a {
        IBinder getBinder();
    }

    /* renamed from: e.a.r2.i$b */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/i$b.class */
    public interface AbstractC19865b extends IInterface {
        /* renamed from: t0 */
        boolean mo11849t0(C19862h0 c19862h0);
    }

    /* renamed from: e.a.r2.i$c */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/i$c.class */
    public class HandlerC19866c extends AbstractHandlerC19848c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC19866c(Looper looper, long j, PowerManager.WakeLock wakeLock) {
            super(looper, j, wakeLock);
            ServiceC19863i.this = r7;
        }

        @Override // p193e.p194a.p1187r2.AbstractHandlerC19848c
        /* renamed from: c */
        public void mo11840c() {
            jobJobServiceEngineC19885s jobjobserviceenginec19885s;
            JobParameters jobParameters;
            AbstractC19864a abstractC19864a = ServiceC19863i.this.f56279f;
            if (abstractC19864a != null && (jobParameters = (jobjobserviceenginec19885s = (jobJobServiceEngineC19885s) abstractC19864a).f56312c) != null) {
                jobjobserviceenginec19885s.jobFinished(jobParameters, false);
            }
            ServiceC19863i.this.stopSelf();
        }
    }

    /* renamed from: e.a.r2.i$d */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/i$d.class */
    public class C19867d implements AbstractC19865b {

        /* renamed from: a */
        public final AbstractHandlerC19848c f56281a;

        public C19867d(AbstractHandlerC19848c abstractHandlerC19848c) {
            ServiceC19863i.this = r4;
            this.f56281a = abstractHandlerC19848c;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return ServiceC19863i.this.f56278e;
        }

        @Override // p193e.p194a.p1187r2.ServiceC19863i.AbstractC19865b
        /* renamed from: t0 */
        public boolean mo11849t0(C19862h0 c19862h0) {
            return this.f56281a.m11856b(c19862h0);
        }
    }

    public ServiceC19863i(String str, long j, boolean z) {
        this.f56274a = str;
        this.f56275b = z;
        this.f56276c = j;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (Build.VERSION.SDK_INT < 26 || "com.truecaller.androidactors.ActorService".equals(intent.getAction())) {
            return this.f56278e;
        }
        AbstractC19864a abstractC19864a = this.f56279f;
        jobJobServiceEngineC19885s jobjobserviceenginec19885s = abstractC19864a;
        if (abstractC19864a == null) {
            jobjobserviceenginec19885s = new jobJobServiceEngineC19885s(this, new CallableC19861h(this), null);
        }
        this.f56279f = jobjobserviceenginec19885s;
        return jobjobserviceenginec19885s.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        PowerManager.WakeLock wakeLock;
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread(this.f56274a);
        this.f56277d = handlerThread;
        handlerThread.start();
        if (this.f56275b) {
            wakeLock = ((PowerManager) getSystemService("power")).newWakeLock(1, this.f56274a);
            wakeLock.setReferenceCounted(false);
        } else {
            wakeLock = null;
        }
        C19867d c19867d = new C19867d(new HandlerC19866c(this.f56277d.getLooper(), this.f56276c, wakeLock));
        Binder binder = new Binder();
        this.f56278e = binder;
        binder.attachInterface(c19867d, "ServiceMessageSender");
    }

    @Override // android.app.Service
    public void onDestroy() {
        jobJobServiceEngineC19885s jobjobserviceenginec19885s;
        JobParameters jobParameters;
        super.onDestroy();
        Binder binder = this.f56278e;
        if (binder != null) {
            binder.attachInterface(null, null);
        }
        this.f56277d.quit();
        AbstractC19864a abstractC19864a = this.f56279f;
        if (abstractC19864a == null || (jobParameters = (jobjobserviceenginec19885s = (jobJobServiceEngineC19885s) abstractC19864a).f56312c) == null) {
            return;
        }
        jobjobserviceenginec19885s.jobFinished(jobParameters, false);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
