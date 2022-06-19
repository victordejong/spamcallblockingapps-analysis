package com.google.android.gms.gcm;

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
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService.class */
public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private ComponentName componentName;
    private final Object lock = new Object();
    private zzl zzg;
    private int zzu;
    private ExecutorService zzv;
    private Messenger zzw;
    private GcmNetworkManager zzx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$zzd.class */
    public final class zzd extends zzj {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        zzd(Looper looper) {
            super(looper);
            GcmTaskService.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger;
            if (!UidVerifier.uidHasPackageName(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
                return;
            }
            int i = message.what;
            if (i == 1) {
                Bundle data = message.getData();
                if (data.isEmpty() || (messenger = message.replyTo) == null) {
                    return;
                }
                String string = data.getString("tag");
                ArrayList parcelableArrayList = data.getParcelableArrayList("triggered_uris");
                long j = data.getLong("max_exec_duration", 180L);
                if (GcmTaskService.this.zzg(string)) {
                    return;
                }
                GcmTaskService.this.zzd(new zze(string, messenger, data.getBundle("extras"), j, parcelableArrayList));
            } else if (i == 2) {
                if (!Log.isLoggable("GcmTaskService", 3)) {
                    return;
                }
                String valueOf = String.valueOf(message);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
                sb.append("ignoring unimplemented stop message for now: ");
                sb.append(valueOf);
                Log.d("GcmTaskService", sb.toString());
            } else if (i == 4) {
                GcmTaskService.this.onInitializeTasks();
            } else {
                String valueOf2 = String.valueOf(message);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 31);
                sb2.append("Unrecognized message received: ");
                sb2.append(valueOf2);
                Log.e("GcmTaskService", sb2.toString());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$zze.class */
    public final class zze implements Runnable {
        private final Bundle extras;
        private final String tag;
        private final List<Uri> zzaa;
        private final long zzab;
        private final zzg zzac;
        private final Messenger zzad;

        zze(String str, IBinder iBinder, Bundle bundle, long j, List<Uri> list) {
            zzh zzhVar;
            GcmTaskService.this = r5;
            this.tag = str;
            if (iBinder == null) {
                zzhVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                zzhVar = queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zzh(iBinder);
            }
            this.zzac = zzhVar;
            this.extras = bundle;
            this.zzab = j;
            this.zzaa = list;
            this.zzad = null;
        }

        zze(String str, Messenger messenger, Bundle bundle, long j, List<Uri> list) {
            GcmTaskService.this = r5;
            this.tag = str;
            this.zzad = messenger;
            this.extras = bundle;
            this.zzab = j;
            this.zzaa = list;
            this.zzac = null;
        }

        private static /* synthetic */ void zzd(Throwable th, zzp zzpVar) {
            if (th == null) {
                zzpVar.close();
                return;
            }
            try {
                zzpVar.close();
            } catch (Throwable th2) {
                zzq.zzd(th, th2);
            }
        }

        public final void zze(int i) {
            synchronized (GcmTaskService.this.lock) {
                try {
                } catch (RemoteException e) {
                    String valueOf = String.valueOf(this.tag);
                    Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
                    GcmTaskService.this.zzx.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                    if (!zzg() && !GcmTaskService.this.zzx.zzf(GcmTaskService.this.componentName.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.zzu);
                    }
                }
                if (GcmTaskService.this.zzx.zzf(this.tag, GcmTaskService.this.componentName.getClassName())) {
                    GcmTaskService.this.zzx.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                    if (!zzg() && !GcmTaskService.this.zzx.zzf(GcmTaskService.this.componentName.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.zzu);
                    }
                    return;
                }
                if (zzg()) {
                    Messenger messenger = this.zzad;
                    Message obtain = Message.obtain();
                    obtain.what = 3;
                    obtain.arg1 = i;
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("component", GcmTaskService.this.componentName);
                    bundle.putString("tag", this.tag);
                    obtain.setData(bundle);
                    messenger.send(obtain);
                } else {
                    this.zzac.zzf(i);
                }
                GcmTaskService.this.zzx.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                if (!zzg() && !GcmTaskService.this.zzx.zzf(GcmTaskService.this.componentName.getClassName())) {
                    GcmTaskService.this.stopSelf(GcmTaskService.this.zzu);
                }
            }
        }

        private final boolean zzg() {
            return this.zzad != null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String valueOf = String.valueOf(this.tag);
            zzp zzpVar = new zzp(valueOf.length() != 0 ? "nts:client:onRunTask:".concat(valueOf) : new String("nts:client:onRunTask:"));
            try {
                TaskParams taskParams = new TaskParams(this.tag, this.extras, this.zzab, this.zzaa);
                GcmTaskService.this.zzg.zzd("onRunTask", zzp.zzdo);
                zze(GcmTaskService.this.onRunTask(taskParams));
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    private final void zzd(int i) {
        synchronized (this.lock) {
            this.zzu = i;
            if (!this.zzx.zzf(this.componentName.getClassName())) {
                stopSelf(this.zzu);
            }
        }
    }

    public final void zzd(zze zzeVar) {
        try {
            this.zzv.execute(zzeVar);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            zzeVar.zze(1);
        }
    }

    public final boolean zzg(String str) {
        boolean z;
        synchronized (this.lock) {
            z = !this.zzx.zzd(str, this.componentName.getClassName());
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

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null || !PlatformVersion.isAtLeastLollipop() || !SERVICE_ACTION_EXECUTE_TASK.equals(intent.getAction())) {
            return null;
        }
        return this.zzw.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.zzx = GcmNetworkManager.getInstance(this);
        this.zzv = zzg.zzaa().zzd(10, new com.google.android.gms.gcm.zze(this), 10);
        this.zzw = new Messenger(new zzd(Looper.getMainLooper()));
        this.componentName = new ComponentName(this, getClass());
        zzm.zzab();
        getClass();
        this.zzg = zzm.zzdk;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        List<Runnable> shutdownNow = this.zzv.shutdownNow();
        if (!shutdownNow.isEmpty()) {
            int size = shutdownNow.size();
            StringBuilder sb = new StringBuilder(79);
            sb.append("Shutting down, but not all tasks are finished executing. Remaining: ");
            sb.append(size);
            Log.e("GcmTaskService", sb.toString());
        }
    }

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    /* JADX WARN: Finally extract failed */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            zzd(i2);
            return 2;
        }
        try {
            intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
            String action = intent.getAction();
            if (SERVICE_ACTION_EXECUTE_TASK.equals(action)) {
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
                    zzd(i2);
                    return 2;
                } else if (zzg(stringExtra)) {
                    zzd(i2);
                    return 2;
                } else {
                    zzd(new zze(stringExtra, ((PendingCallback) parcelableExtra).zzan, bundleExtra, longExtra, parcelableArrayListExtra));
                }
            } else if (SERVICE_ACTION_INITIALIZE.equals(action)) {
                onInitializeTasks();
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 37);
                sb2.append("Unknown action received ");
                sb2.append(action);
                sb2.append(", terminating");
                Log.e("GcmTaskService", sb2.toString());
            }
            zzd(i2);
            return 2;
        } catch (Throwable th) {
            zzd(i2);
            throw th;
        }
    }
}
