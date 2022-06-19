package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {
    private static final long zza = TimeUnit.HOURS.toSeconds(8);
    private static zzat zzb;
    private static ScheduledExecutorService zzc;
    private final Executor zzd;
    private final FirebaseApp zze;
    private final zzai zzf;
    private final zzl zzg;
    private final zzan zzh;
    private final zzax zzi;
    private boolean zzj;
    private final zza zzk;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId$zza.class */
    public final class zza {
        private boolean zzb;
        private final Subscriber zzc;
        private boolean zzd;
        private EventHandler<DataCollectionDefaultChange> zze;
        private Boolean zzf;

        zza(Subscriber subscriber) {
            FirebaseInstanceId.this = r4;
            this.zzc = subscriber;
        }

        private final void zzb() {
            synchronized (this) {
                if (this.zzd) {
                    return;
                }
                this.zzb = zzd();
                this.zzf = zzc();
                if (this.zzf == null && this.zzb) {
                    this.zze = new EventHandler(this) { // from class: com.google.firebase.iid.zzk
                        private final FirebaseInstanceId.zza zza;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zza = this;
                        }

                        @Override // com.google.firebase.events.EventHandler
                        public final void handle(Event event) {
                            FirebaseInstanceId.zza zzaVar = this.zza;
                            synchronized (zzaVar) {
                                if (zzaVar.zza()) {
                                    FirebaseInstanceId.this.zzj();
                                }
                            }
                        }
                    };
                    this.zzc.subscribe(DataCollectionDefaultChange.class, this.zze);
                }
                this.zzd = true;
            }
        }

        private final Boolean zzc() {
            ApplicationInfo applicationInfo;
            Context applicationContext = FirebaseInstanceId.this.zze.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        private final boolean zzd() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException e) {
                Context applicationContext = FirebaseInstanceId.this.zze.getApplicationContext();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(applicationContext.getPackageName());
                ResolveInfo resolveService = applicationContext.getPackageManager().resolveService(intent, 0);
                return (resolveService == null || resolveService.serviceInfo == null) ? false : true;
            }
        }

        final void zza(boolean z) {
            synchronized (this) {
                zzb();
                if (this.zze != null) {
                    this.zzc.unsubscribe(DataCollectionDefaultChange.class, this.zze);
                    this.zze = null;
                }
                SharedPreferences.Editor edit = FirebaseInstanceId.this.zze.getApplicationContext().getSharedPreferences("com.google.firebase.messaging", 0).edit();
                edit.putBoolean("auto_init", z);
                edit.apply();
                if (z) {
                    FirebaseInstanceId.this.zzj();
                }
                this.zzf = Boolean.valueOf(z);
            }
        }

        public final boolean zza() {
            synchronized (this) {
                zzb();
                if (this.zzf != null) {
                    return this.zzf.booleanValue();
                }
                return this.zzb && FirebaseInstanceId.this.zze.isDataCollectionDefaultEnabled();
            }
        }
    }

    public FirebaseInstanceId(FirebaseApp firebaseApp, Subscriber subscriber, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo) {
        this(firebaseApp, new zzai(firebaseApp.getApplicationContext()), com.google.firebase.iid.zza.zzb(), com.google.firebase.iid.zza.zzb(), subscriber, userAgentPublisher, heartBeatInfo);
    }

    private FirebaseInstanceId(FirebaseApp firebaseApp, zzai zzaiVar, Executor executor, Executor executor2, Subscriber subscriber, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo) {
        this.zzj = false;
        if (zzai.zza(firebaseApp) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzat(firebaseApp.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.zze = firebaseApp;
            this.zzf = zzaiVar;
            this.zzg = new zzl(firebaseApp, zzaiVar, executor, userAgentPublisher, heartBeatInfo);
            this.zzd = executor2;
            this.zzi = new zzax(zzb);
            this.zzk = new zza(subscriber);
            this.zzh = new zzan(executor);
            executor2.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzh
                private final FirebaseInstanceId zza;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzi();
                }
            });
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    public static FirebaseInstanceId getInstance(FirebaseApp firebaseApp) {
        return (FirebaseInstanceId) firebaseApp.get(FirebaseInstanceId.class);
    }

    private final Task<InstanceIdResult> zza(String str, String str2) {
        return Tasks.forResult(null).continueWithTask(this.zzd, new Continuation(this, str, zzd(str2)) { // from class: com.google.firebase.iid.zzg
            private final FirebaseInstanceId zza;
            private final String zzb;
            private final String zzc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = str;
                this.zzc = zzd;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.zza.zza(this.zzb, this.zzc, task);
            }
        });
    }

    private final <T> T zza(Task<T> task) {
        try {
            return (T) Tasks.await(task, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    zze();
                }
                throw ((IOException) cause);
            } else if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            } else {
                throw ((RuntimeException) cause);
            }
        }
    }

    public static void zza(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (zzc == null) {
                    zzc = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
                }
                zzc.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static zzas zzb(String str, String str2) {
        return zzb.zza("", str, str2);
    }

    private static String zzd(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase("fcm") || str.equalsIgnoreCase(GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE)) ? "*" : str;
    }

    public static boolean zzd() {
        if (!Log.isLoggable("FirebaseInstanceId", 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
        }
        return true;
    }

    public final void zzj() {
        if (zza(zzb()) || this.zzi.zza()) {
            zzk();
        }
    }

    private final void zzk() {
        synchronized (this) {
            if (!this.zzj) {
                zza(0L);
            }
        }
    }

    private static String zzl() {
        return zzb.zzb("").zza();
    }

    public void deleteInstanceId() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            zza(this.zzg.zza(zzl()));
            zze();
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    public void deleteToken(String str, String str2) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String zzd = zzd(str2);
            zza(this.zzg.zzb(zzl(), str, zzd));
            zzb.zzb("", str, zzd);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    public long getCreationTime() {
        return zzb.zzb("").zzb();
    }

    public String getId() {
        zzj();
        return zzl();
    }

    public Task<InstanceIdResult> getInstanceId() {
        return zza(zzai.zza(this.zze), "*");
    }

    @Deprecated
    public String getToken() {
        zzas zzb2 = zzb();
        if (zza(zzb2)) {
            zzk();
        }
        return zzas.zza(zzb2);
    }

    public String getToken(String str, String str2) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((InstanceIdResult) zza(zza(str, str2))).getToken();
        }
        throw new IOException("MAIN_THREAD");
    }

    public final Task<Void> zza(String str) {
        Task<Void> zza2;
        synchronized (this) {
            zza2 = this.zzi.zza(str);
            zzk();
        }
        return zza2;
    }

    public final /* synthetic */ Task zza(String str, String str2, Task task) {
        String zzl = zzl();
        zzas zzb2 = zzb(str, str2);
        return !zza(zzb2) ? Tasks.forResult(new zzu(zzl, zzb2.zza)) : this.zzh.zza(str, str2, new zzap(this, zzl, str, str2) { // from class: com.google.firebase.iid.zzj
            private final FirebaseInstanceId zza;
            private final String zzb;
            private final String zzc;
            private final String zzd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = zzl;
                this.zzc = str;
                this.zzd = str2;
            }

            @Override // com.google.firebase.iid.zzap
            public final Task zza() {
                return this.zza.zza(this.zzb, this.zzc, this.zzd);
            }
        });
    }

    public final /* synthetic */ Task zza(String str, String str2, String str3) {
        return this.zzg.zza(str, str2, str3).onSuccessTask(this.zzd, new SuccessContinuation(this, str2, str3, str) { // from class: com.google.firebase.iid.zzi
            private final FirebaseInstanceId zza;
            private final String zzb;
            private final String zzc;
            private final String zzd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = str2;
                this.zzc = str3;
                this.zzd = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.zza.zza(this.zzb, this.zzc, this.zzd, (String) obj);
            }
        });
    }

    public final /* synthetic */ Task zza(String str, String str2, String str3, String str4) {
        zzb.zza("", str, str2, str4, this.zzf.zzb());
        return Tasks.forResult(new zzu(str3, str4));
    }

    public final FirebaseApp zza() {
        return this.zze;
    }

    public final void zza(long j) {
        synchronized (this) {
            zza(new zzav(this, this.zzf, this.zzi, Math.min(Math.max(30L, j << 1), zza)), j);
            this.zzj = true;
        }
    }

    public final void zza(boolean z) {
        synchronized (this) {
            this.zzj = z;
        }
    }

    public final boolean zza(zzas zzasVar) {
        return zzasVar == null || zzasVar.zzb(this.zzf.zzb());
    }

    public final zzas zzb() {
        return zzb(zzai.zza(this.zze), "*");
    }

    public final void zzb(String str) {
        zzas zzb2 = zzb();
        if (!zza(zzb2)) {
            zza(this.zzg.zzc(zzl(), zzb2.zza, str));
            return;
        }
        throw new IOException("token not available");
    }

    public final void zzb(boolean z) {
        this.zzk.zza(z);
    }

    public final String zzc() {
        return getToken(zzai.zza(this.zze), "*");
    }

    public final void zzc(String str) {
        zzas zzb2 = zzb();
        if (!zza(zzb2)) {
            zza(this.zzg.zzd(zzl(), zzb2.zza, str));
            return;
        }
        throw new IOException("token not available");
    }

    public final void zze() {
        synchronized (this) {
            zzb.zzb();
            if (this.zzk.zza()) {
                zzk();
            }
        }
    }

    public final boolean zzf() {
        return this.zzf.zza() != 0;
    }

    public final void zzg() {
        zzb.zzc("");
        zzk();
    }

    public final boolean zzh() {
        return this.zzk.zza();
    }

    public final /* synthetic */ void zzi() {
        if (this.zzk.zza()) {
            zzj();
        }
    }
}
