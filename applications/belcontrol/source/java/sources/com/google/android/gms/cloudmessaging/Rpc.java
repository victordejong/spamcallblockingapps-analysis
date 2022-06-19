package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/Rpc.class */
public class Rpc {
    private static int zza;
    private static PendingIntent zzb;
    private static final Executor zzc = zzz.zza;
    private final Context zze;
    private final zzr zzf;
    private final ScheduledExecutorService zzg;
    private Messenger zzi;
    private zza zzj;
    @GuardedBy("responseCallbacks")
    private final h4<String, TaskCompletionSource<Bundle>> zzd = new h4<>();
    private Messenger zzh = new Messenger((Handler) new zzy(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.zze = context;
        this.zzf = new zzr(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.zzg = scheduledThreadPoolExecutor;
    }

    public static final /* synthetic */ Bundle zza(Task task) {
        if (task.isSuccessful()) {
            return (Bundle) task.getResult();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(task.getException());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", task.getException());
    }

    public static final /* synthetic */ Task zza(Bundle bundle) {
        return zzb(bundle) ? Tasks.forResult((Object) null) : Tasks.forResult(bundle);
    }

    private static String zza() {
        String num;
        synchronized (Rpc.class) {
            try {
                int i = zza;
                zza = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    private static void zza(Context context, Intent intent) {
        synchronized (Rpc.class) {
            try {
                if (zzb == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    zzb = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zza.C1747zza());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zza) {
                        this.zzj = (zza) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.zzi = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (!Log.isLoggable("Rpc", 3)) {
                        return;
                    }
                    String valueOf = String.valueOf(action);
                    Log.d("Rpc", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                String str = stringExtra;
                if (stringExtra == null) {
                    str = intent2.getStringExtra("unregistered");
                }
                if (str != null) {
                    Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
                    if (!matcher.matches()) {
                        if (!Log.isLoggable("Rpc", 3)) {
                            return;
                        }
                        String valueOf2 = String.valueOf(str);
                        Log.d("Rpc", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                        return;
                    }
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group == null) {
                        return;
                    }
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    zza(group, extras);
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String valueOf3 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(valueOf3);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    String valueOf4 = String.valueOf(stringExtra2);
                    Log.d("Rpc", valueOf4.length() != 0 ? "Received InstanceID error ".concat(valueOf4) : new String("Received InstanceID error "));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (this.zzd) {
                        for (int i = 0; i < this.zzd.size(); i++) {
                            zza((String) this.zzd.i(i), intent2.getExtras());
                        }
                    }
                    return;
                }
                String[] split = stringExtra2.split("\\|");
                if (split.length <= 2 || !"ID".equals(split[1])) {
                    String valueOf5 = String.valueOf(stringExtra2);
                    Log.w("Rpc", valueOf5.length() != 0 ? "Unexpected structured response ".concat(valueOf5) : new String("Unexpected structured response "));
                    return;
                }
                String str2 = split[2];
                String str3 = split[3];
                String str4 = str3;
                if (str3.startsWith(":")) {
                    str4 = str3.substring(1);
                }
                zza(str2, intent2.putExtra("error", str4).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    public static final /* synthetic */ void zza(TaskCompletionSource taskCompletionSource) {
        if (taskCompletionSource.trySetException(new IOException("TIMEOUT"))) {
            Log.w("Rpc", "No response");
        }
    }

    private final void zza(String str, Bundle bundle) {
        synchronized (this.zzd) {
            TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.zzd.remove(str);
            if (taskCompletionSource != null) {
                taskCompletionSource.setResult(bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
        }
    }

    private static boolean zzb(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    private final Task<Bundle> zzc(Bundle bundle) {
        String zza2 = zza();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        synchronized (this.zzd) {
            this.zzd.put(zza2, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        intent.setAction(this.zzf.zza() == 2 ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.putExtras(bundle);
        zza(this.zze, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(zza2).length() + 5);
        sb.append("|ID|");
        sb.append(zza2);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.zzh);
        if (this.zzi != null || this.zzj != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.zzi;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.zzj.zza(obtain);
                }
            } catch (RemoteException e) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            taskCompletionSource.getTask().addOnCompleteListener(zzc, new zzx(this, zza2, this.zzg.schedule(new Runnable(taskCompletionSource) { // from class: com.google.android.gms.cloudmessaging.zzu
                private final TaskCompletionSource zza;

                {
                    this.zza = taskCompletionSource;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Rpc.zza(this.zza);
                }
            }, 30L, TimeUnit.SECONDS)));
            return taskCompletionSource.getTask();
        }
        if (this.zzf.zza() == 2) {
            this.zze.sendBroadcast(intent);
        } else {
            this.zze.startService(intent);
        }
        taskCompletionSource.getTask().addOnCompleteListener(zzc, new zzx(this, zza2, this.zzg.schedule(new Runnable(taskCompletionSource) { // from class: com.google.android.gms.cloudmessaging.zzu
            private final TaskCompletionSource zza;

            {
                this.zza = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Rpc.zza(this.zza);
            }
        }, 30L, TimeUnit.SECONDS)));
        return taskCompletionSource.getTask();
    }

    public Task<Bundle> send(Bundle bundle) {
        boolean z = true;
        if (this.zzf.zzb() >= 12000000) {
            return zze.zza(this.zze).zzb(1, bundle).continueWith(zzc, zzt.zza);
        }
        if (this.zzf.zza() == 0) {
            z = false;
        }
        return !z ? Tasks.forException(new IOException("MISSING_INSTANCEID_SERVICE")) : zzc(bundle).continueWithTask(zzc, new zzv(this, bundle));
    }

    public final /* synthetic */ Task zza(Bundle bundle, Task task) {
        if (task.isSuccessful() && zzb((Bundle) task.getResult())) {
            return zzc(bundle).onSuccessTask(zzc, zzw.zza);
        }
        return task;
    }

    public final /* synthetic */ void zza(String str, ScheduledFuture scheduledFuture, Task task) {
        synchronized (this.zzd) {
            this.zzd.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
