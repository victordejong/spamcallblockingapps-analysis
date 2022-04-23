package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.gcm.zzg;
import com.google.android.gms.internal.gcm.zzj;
import com.google.android.gms.internal.gcm.zzl;
import com.google.android.gms.internal.gcm.zzm;
import com.google.android.gms.internal.gcm.zzp;
import com.google.android.gms.internal.gcm.zzq;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService.class */
public abstract class GcmTaskService extends Service {

    /* renamed from: f */
    private final Object f7717f = new Object();
    @GuardedBy

    /* renamed from: g */
    private int f7718g;

    /* renamed from: h */
    private ExecutorService f7719h;

    /* renamed from: i */
    private Messenger f7720i;

    /* renamed from: j */
    private ComponentName f7721j;

    /* renamed from: k */
    private GcmNetworkManager f7722k;

    /* renamed from: l */
    private zzl f7723l;

    @VisibleForTesting
    @TargetApi(21)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$zzd.class */
    final class zzd extends zzj {
        zzd(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger;
            if (!UidVerifier.m14307b(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
                return;
            }
            int i = message.what;
            if (i == 1) {
                Bundle data = message.getData();
                if (!data.isEmpty() && (messenger = message.replyTo) != null) {
                    String string = data.getString("tag");
                    ArrayList parcelableArrayList = data.getParcelableArrayList("triggered_uris");
                    long j = data.getLong("max_exec_duration", 180L);
                    if (!GcmTaskService.this.m14184k(string)) {
                        GcmTaskService.this.m14190e(new zze(string, messenger, data.getBundle("extras"), j, parcelableArrayList));
                    }
                }
            } else if (i != 2) {
                if (i != 4) {
                    String valueOf = String.valueOf(message);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 31);
                    sb.append("Unrecognized message received: ");
                    sb.append(valueOf);
                    Log.e("GcmTaskService", sb.toString());
                    return;
                }
                GcmTaskService.this.m14194a();
            } else if (Log.isLoggable("GcmTaskService", 3)) {
                String valueOf2 = String.valueOf(message);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 45);
                sb2.append("ignoring unimplemented stop message for now: ");
                sb2.append(valueOf2);
                Log.d("GcmTaskService", sb2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$zze.class */
    public final class zze implements Runnable {

        /* renamed from: f */
        private final String f7725f;

        /* renamed from: g */
        private final Bundle f7726g;

        /* renamed from: h */
        private final List<Uri> f7727h;

        /* renamed from: i */
        private final long f7728i;
        @Nullable

        /* renamed from: j */
        private final zzg f7729j;
        @Nullable

        /* renamed from: k */
        private final Messenger f7730k;

        zze(String str, @NonNull IBinder iBinder, Bundle bundle, long j, List<Uri> list) {
            zzg zzgVar;
            this.f7725f = str;
            if (iBinder == null) {
                zzgVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                zzgVar = queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zzh(iBinder);
            }
            this.f7729j = zzgVar;
            this.f7726g = bundle;
            this.f7728i = j;
            this.f7727h = list;
            this.f7730k = null;
        }

        zze(String str, @NonNull Messenger messenger, Bundle bundle, long j, List<Uri> list) {
            this.f7725f = str;
            this.f7730k = messenger;
            this.f7726g = bundle;
            this.f7728i = j;
            this.f7727h = list;
            this.f7729j = null;
        }

        /* renamed from: b */
        private static /* synthetic */ void m14181b(Throwable th, zzp zzpVar) {
            if (th != null) {
                try {
                    zzpVar.close();
                } catch (Throwable th2) {
                    zzq.m14060b(th, th2);
                }
            } else {
                zzpVar.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public final void m14180c(int i) {
            synchronized (GcmTaskService.this.f7717f) {
                try {
                } catch (RemoteException e) {
                    String valueOf = String.valueOf(this.f7725f);
                    Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
                    GcmTaskService.this.f7722k.m14200c(this.f7725f, GcmTaskService.this.f7721j.getClassName());
                    if (!m14179d() && !GcmTaskService.this.f7722k.m14199d(GcmTaskService.this.f7721j.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.f7718g);
                    }
                }
                if (GcmTaskService.this.f7722k.m14198e(this.f7725f, GcmTaskService.this.f7721j.getClassName())) {
                    GcmTaskService.this.f7722k.m14200c(this.f7725f, GcmTaskService.this.f7721j.getClassName());
                    if (!m14179d() && !GcmTaskService.this.f7722k.m14199d(GcmTaskService.this.f7721j.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.f7718g);
                    }
                    return;
                }
                if (m14179d()) {
                    Messenger messenger = this.f7730k;
                    Message obtain = Message.obtain();
                    obtain.what = 3;
                    obtain.arg1 = i;
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("component", GcmTaskService.this.f7721j);
                    bundle.putString("tag", this.f7725f);
                    obtain.setData(bundle);
                    messenger.send(obtain);
                } else {
                    this.f7729j.mo14165H(i);
                }
                GcmTaskService.this.f7722k.m14200c(this.f7725f, GcmTaskService.this.f7721j.getClassName());
                if (!m14179d() && !GcmTaskService.this.f7722k.m14199d(GcmTaskService.this.f7721j.getClassName())) {
                    GcmTaskService.this.stopSelf(GcmTaskService.this.f7718g);
                }
            }
        }

        /* renamed from: d */
        private final boolean m14179d() {
            return this.f7730k != null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String valueOf = String.valueOf(this.f7725f);
            zzp zzpVar = new zzp(valueOf.length() != 0 ? "nts:client:onRunTask:".concat(valueOf) : new String("nts:client:onRunTask:"));
            try {
                TaskParams taskParams = new TaskParams(this.f7725f, this.f7726g, this.f7728i, this.f7727h);
                GcmTaskService.this.f7723l.mo14062b("onRunTask", zzp.f7863a);
                m14180c(GcmTaskService.this.m14193b(taskParams));
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    /* renamed from: d */
    private final void m14191d(int i) {
        synchronized (this.f7717f) {
            this.f7718g = i;
            if (!this.f7722k.m14199d(this.f7721j.getClassName())) {
                stopSelf(this.f7718g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final void m14190e(zze zzeVar) {
        try {
            this.f7719h.execute(zzeVar);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            zzeVar.m14180c(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final boolean m14184k(String str) {
        boolean z;
        synchronized (this.f7717f) {
            z = !this.f7722k.m14201b(str, this.f7721j.getClassName());
            if (z) {
                String packageName = getPackageName();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 44 + String.valueOf(str).length());
                sb.append(packageName);
                sb.append(" ");
                sb.append(str);
                sb.append(": Task already running, won't start another");
                Log.w("GcmTaskService", sb.toString());
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m14194a() {
    }

    /* renamed from: b */
    public abstract int m14193b(TaskParams taskParams);

    @Override // android.app.Service
    @CallSuper
    public IBinder onBind(Intent intent) {
        if (intent == null || !PlatformVersion.m14316g() || !"com.google.android.gms.gcm.ACTION_TASK_READY".equals(intent.getAction())) {
            return null;
        }
        return this.f7720i.getBinder();
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        super.onCreate();
        this.f7722k = GcmNetworkManager.m14202a(this);
        this.f7719h = zzg.m14067a().mo14066a(10, new com.google.android.gms.gcm.zze(this), 10);
        this.f7720i = new Messenger(new zzd(Looper.getMainLooper()));
        this.f7721j = new ComponentName(this, GcmTaskService.class);
        zzm.m14064a();
        getClass();
        this.f7723l = zzm.f7860a;
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        super.onDestroy();
        List<Runnable> shutdownNow = this.f7719h.shutdownNow();
        if (!shutdownNow.isEmpty()) {
            int size = shutdownNow.size();
            StringBuilder sb = new StringBuilder(79);
            sb.append("Shutting down, but not all tasks are finished executing. Remaining: ");
            sb.append(size);
            Log.e("GcmTaskService", sb.toString());
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            m14191d(i2);
            return 2;
        }
        try {
            intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
            String action = intent.getAction();
            if ("com.google.android.gms.gcm.ACTION_TASK_READY".equals(action)) {
                String stringExtra = intent.getStringExtra("tag");
                Parcelable parcelableExtra = intent.getParcelableExtra("callback");
                Bundle bundleExtra = intent.getBundleExtra("extras");
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("triggered_uris");
                long longExtra = intent.getLongExtra("max_exec_duration", 180L);
                if (!(parcelableExtra instanceof PendingCallback)) {
                    String packageName = getPackageName();
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 47 + String.valueOf(stringExtra).length());
                    sb.append(packageName);
                    sb.append(" ");
                    sb.append(stringExtra);
                    sb.append(": Could not process request, invalid callback.");
                    Log.e("GcmTaskService", sb.toString());
                    m14191d(i2);
                    return 2;
                } else if (m14184k(stringExtra)) {
                    m14191d(i2);
                    return 2;
                } else {
                    m14190e(new zze(stringExtra, ((PendingCallback) parcelableExtra).f7737f, bundleExtra, longExtra, parcelableArrayListExtra));
                }
            } else if ("com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE".equals(action)) {
                m14194a();
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 37);
                sb2.append("Unknown action received ");
                sb2.append(action);
                sb2.append(", terminating");
                Log.e("GcmTaskService", sb2.toString());
            }
            m14191d(i2);
            return 2;
        } catch (Throwable th) {
            m14191d(i2);
            throw th;
        }
    }
}
