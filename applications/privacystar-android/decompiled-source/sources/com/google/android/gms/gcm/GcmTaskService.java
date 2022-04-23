package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService.class */
public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private ComponentName componentName;
    private final Object lock = new Object();
    @GuardedBy("lock")
    private int zzt;
    private ExecutorService zzu;
    private Messenger zzv;
    private GcmNetworkManager zzw;

    @VisibleForTesting
    @TargetApi(21)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$zzd.class */
    final class zzd extends Handler {
        zzd(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger;
            if (!UidVerifier.uidHasPackageName(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
                return;
            }
            int i = message.what;
            if (i != 4) {
                switch (i) {
                    case 1:
                        Bundle data = message.getData();
                        if (!data.isEmpty() && (messenger = message.replyTo) != null) {
                            String string = data.getString("tag");
                            ArrayList parcelableArrayList = data.getParcelableArrayList("triggered_uris");
                            if (!GcmTaskService.this.zzg(string)) {
                                GcmTaskService.this.zzd(new zze(string, messenger, data.getBundle("extras"), parcelableArrayList));
                                return;
                            }
                            return;
                        }
                        return;
                    case 2:
                        if (Log.isLoggable("GcmTaskService", 3)) {
                            String valueOf = String.valueOf(message);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
                            sb.append("ignoring unimplemented stop message for now: ");
                            sb.append(valueOf);
                            Log.d("GcmTaskService", sb.toString());
                            return;
                        }
                        return;
                    default:
                        String valueOf2 = String.valueOf(message);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 31);
                        sb2.append("Unrecognized message received: ");
                        sb2.append(valueOf2);
                        Log.e("GcmTaskService", sb2.toString());
                        return;
                }
            } else {
                GcmTaskService.this.onInitializeTasks();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$zze.class */
    public final class zze implements Runnable {
        private final Bundle extras;
        private final String tag;
        @Nullable
        private final zzg zzaa;
        @Nullable
        private final Messenger zzab;
        private final List<Uri> zzz;

        zze(String str, @NonNull IBinder iBinder, Bundle bundle, List<Uri> list) {
            zzg zzgVar;
            this.tag = str;
            if (iBinder == null) {
                zzgVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                zzgVar = queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zzh(iBinder);
            }
            this.zzaa = zzgVar;
            this.extras = bundle;
            this.zzz = list;
            this.zzab = null;
        }

        zze(String str, @NonNull Messenger messenger, Bundle bundle, List<Uri> list) {
            this.tag = str;
            this.zzab = messenger;
            this.extras = bundle;
            this.zzz = list;
            this.zzaa = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(int i) {
            GcmTaskService gcmTaskService;
            int i2;
            synchronized (GcmTaskService.this.lock) {
                try {
                } catch (RemoteException e) {
                    String valueOf = String.valueOf(this.tag);
                    Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
                    GcmTaskService.this.zzw.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                    if (!zzf() && !GcmTaskService.this.zzw.zzf(GcmTaskService.this.componentName.getClassName())) {
                        gcmTaskService = GcmTaskService.this;
                        i2 = GcmTaskService.this.zzt;
                    }
                }
                if (GcmTaskService.this.zzw.zzf(this.tag, GcmTaskService.this.componentName.getClassName())) {
                    GcmTaskService.this.zzw.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                    if (!zzf() && !GcmTaskService.this.zzw.zzf(GcmTaskService.this.componentName.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.zzt);
                    }
                    return;
                }
                if (zzf()) {
                    Messenger messenger = this.zzab;
                    Message obtain = Message.obtain();
                    obtain.what = 3;
                    obtain.arg1 = i;
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("component", GcmTaskService.this.componentName);
                    bundle.putString("tag", this.tag);
                    obtain.setData(bundle);
                    messenger.send(obtain);
                } else {
                    this.zzaa.zzf(i);
                }
                GcmTaskService.this.zzw.zze(this.tag, GcmTaskService.this.componentName.getClassName());
                if (!zzf() && !GcmTaskService.this.zzw.zzf(GcmTaskService.this.componentName.getClassName())) {
                    gcmTaskService = GcmTaskService.this;
                    i2 = GcmTaskService.this.zzt;
                    gcmTaskService.stopSelf(i2);
                }
            }
        }

        private final boolean zzf() {
            return this.zzab != null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            zze(GcmTaskService.this.onRunTask(new TaskParams(this.tag, this.extras, this.zzz)));
        }
    }

    private final void zzd(int i) {
        synchronized (this.lock) {
            this.zzt = i;
            if (!this.zzw.zzf(this.componentName.getClassName())) {
                stopSelf(this.zzt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(zze zzeVar) {
        try {
            this.zzu.execute(zzeVar);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            zzeVar.zze(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzg(String str) {
        boolean z;
        synchronized (this.lock) {
            z = !this.zzw.zzd(str, this.componentName.getClassName());
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
    @CallSuper
    public IBinder onBind(Intent intent) {
        if (intent == null || !PlatformVersion.isAtLeastLollipop() || !SERVICE_ACTION_EXECUTE_TASK.equals(intent.getAction())) {
            return null;
        }
        return this.zzv.getBinder();
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        super.onCreate();
        this.zzw = GcmNetworkManager.getInstance(this);
        this.zzu = Executors.newFixedThreadPool(2, new com.google.android.gms.gcm.zze(this));
        this.zzv = new Messenger(new zzd(Looper.getMainLooper()));
        this.componentName = new ComponentName(this, getClass());
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        super.onDestroy();
        List<Runnable> shutdownNow = this.zzu.shutdownNow();
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
    @CallSuper
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
                    zzd(new zze(stringExtra, ((PendingCallback) parcelableExtra).zzal, bundleExtra, parcelableArrayListExtra));
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
