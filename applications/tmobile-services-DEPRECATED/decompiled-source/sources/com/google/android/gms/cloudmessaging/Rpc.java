package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.GmsRpc;
import com.google.firebase.messaging.Constants;
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

    /* renamed from: h */
    private static int f6908h;

    /* renamed from: i */
    private static PendingIntent f6909i;

    /* renamed from: j */
    private static final Executor f6910j = zzz.f6962f;

    /* renamed from: b */
    private final Context f6912b;

    /* renamed from: c */
    private final zzr f6913c;

    /* renamed from: d */
    private final ScheduledExecutorService f6914d;

    /* renamed from: f */
    private Messenger f6916f;

    /* renamed from: g */
    private zza f6917g;
    @GuardedBy

    /* renamed from: a */
    private final SimpleArrayMap<String, TaskCompletionSource<Bundle>> f6911a = new SimpleArrayMap<>();

    /* renamed from: e */
    private Messenger f6915e = new Messenger(new zzy(this, Looper.getMainLooper()));

    public Rpc(@NonNull Context context) {
        this.f6912b = context;
        this.f6913c = new zzr(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f6914d = scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static final /* synthetic */ Bundle m15131b(Task task) throws Exception {
        if (task.mo10782n()) {
            return (Bundle) task.mo10786j();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(task.mo10787i());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Error making request: ");
            sb.append(valueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException(GmsRpc.ERROR_SERVICE_NOT_AVAILABLE, task.mo10787i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static final /* synthetic */ Task m15130c(Bundle bundle) throws Exception {
        return m15121l(bundle) ? Tasks.m10820e(null) : Tasks.m10820e(bundle);
    }

    /* renamed from: e */
    private static String m15128e() {
        String num;
        synchronized (Rpc.class) {
            try {
                int i = f6908h;
                f6908h = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        return num;
    }

    /* renamed from: f */
    private static void m15127f(Context context, Intent intent) {
        synchronized (Rpc.class) {
            try {
                if (f6909i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f6909i = PendingIntent.getBroadcast(context, 0, intent2, 0);
                }
                intent.putExtra("app", f6909i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public final void m15126g(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zza.C2477zza());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zza) {
                        this.f6917g = (zza) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f6916f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if ("com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    String stringExtra = intent2.getStringExtra("registration_id");
                    String str = stringExtra;
                    if (stringExtra == null) {
                        str = intent2.getStringExtra("unregistered");
                    }
                    if (str == null) {
                        String stringExtra2 = intent2.getStringExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
                        if (stringExtra2 == null) {
                            String valueOf = String.valueOf(intent2.getExtras());
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                            sb.append("Unexpected response, no error or registration id ");
                            sb.append(valueOf);
                            Log.w("Rpc", sb.toString());
                            return;
                        }
                        if (Log.isLoggable("Rpc", 3)) {
                            String valueOf2 = String.valueOf(stringExtra2);
                            Log.d("Rpc", valueOf2.length() != 0 ? "Received InstanceID error ".concat(valueOf2) : new String("Received InstanceID error "));
                        }
                        if (stringExtra2.startsWith("|")) {
                            String[] split = stringExtra2.split("\\|");
                            if (split.length <= 2 || !"ID".equals(split[1])) {
                                String valueOf3 = String.valueOf(stringExtra2);
                                Log.w("Rpc", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
                                return;
                            }
                            String str2 = split[2];
                            String str3 = split[3];
                            String str4 = str3;
                            if (str3.startsWith(":")) {
                                str4 = str3.substring(1);
                            }
                            m15123j(str2, intent2.putExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR, str4).getExtras());
                            return;
                        }
                        synchronized (this.f6911a) {
                            for (int i = 0; i < this.f6911a.size(); i++) {
                                m15123j(this.f6911a.m21007k(i), intent2.getExtras());
                            }
                        }
                        return;
                    }
                    Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(str);
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        String group2 = matcher.group(2);
                        if (group != null) {
                            Bundle extras = intent2.getExtras();
                            extras.putString("registration_id", group2);
                            m15123j(group, extras);
                            return;
                        }
                        return;
                    } else if (Log.isLoggable("Rpc", 3)) {
                        String valueOf4 = String.valueOf(str);
                        Log.d("Rpc", valueOf4.length() != 0 ? "Unexpected response string: ".concat(valueOf4) : new String("Unexpected response string: "));
                        return;
                    } else {
                        return;
                    }
                } else if (Log.isLoggable("Rpc", 3)) {
                    String valueOf5 = String.valueOf(action);
                    Log.d("Rpc", valueOf5.length() != 0 ? "Unexpected response action: ".concat(valueOf5) : new String("Unexpected response action: "));
                    return;
                } else {
                    return;
                }
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static final /* synthetic */ void m15124i(TaskCompletionSource taskCompletionSource) {
        if (taskCompletionSource.m10827d(new IOException("TIMEOUT"))) {
            Log.w("Rpc", "No response");
        }
    }

    /* renamed from: j */
    private final void m15123j(String str, @Nullable Bundle bundle) {
        synchronized (this.f6911a) {
            TaskCompletionSource<Bundle> remove = this.f6911a.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.m10828c(bundle);
        }
    }

    /* renamed from: l */
    private static boolean m15121l(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    @AnyThread
    /* renamed from: m */
    private final Task<Bundle> m15120m(Bundle bundle) {
        final String e = m15128e();
        final TaskCompletionSource<Bundle> taskCompletionSource = new TaskCompletionSource<>();
        synchronized (this.f6911a) {
            this.f6911a.put(e, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f6913c.m15100a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        m15127f(this.f6912b, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(e).length() + 5);
        sb.append("|ID|");
        sb.append(e);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(valueOf);
            Log.d("Rpc", sb2.toString());
        }
        intent.putExtra("google.messenger", this.f6915e);
        if (!(this.f6916f == null && this.f6917g == null)) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                if (this.f6916f != null) {
                    this.f6916f.send(obtain);
                } else {
                    this.f6917g.m15118b(obtain);
                }
            } catch (RemoteException e2) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            final ScheduledFuture<?> schedule = this.f6914d.schedule(new Runnable(taskCompletionSource) { // from class: com.google.android.gms.cloudmessaging.zzu

                /* renamed from: f */
                private final TaskCompletionSource f6954f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6954f = taskCompletionSource;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Rpc.m15124i(this.f6954f);
                }
            }, 30L, TimeUnit.SECONDS);
            taskCompletionSource.m10830a().mo10793c(f6910j, new OnCompleteListener(this, e, schedule) { // from class: com.google.android.gms.cloudmessaging.zzx

                /* renamed from: f */
                private final Rpc f6958f;

                /* renamed from: g */
                private final String f6959g;

                /* renamed from: h */
                private final ScheduledFuture f6960h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6958f = this;
                    this.f6959g = e;
                    this.f6960h = schedule;
                }

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f6958f.m15122k(this.f6959g, this.f6960h, task);
                }
            });
            return taskCompletionSource.m10830a();
        }
        if (this.f6913c.m15100a() == 2) {
            this.f6912b.sendBroadcast(intent);
        } else {
            this.f6912b.startService(intent);
        }
        final ScheduledFuture schedule2 = this.f6914d.schedule(new Runnable(taskCompletionSource) { // from class: com.google.android.gms.cloudmessaging.zzu

            /* renamed from: f */
            private final TaskCompletionSource f6954f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6954f = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Rpc.m15124i(this.f6954f);
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.m10830a().mo10793c(f6910j, new OnCompleteListener(this, e, schedule2) { // from class: com.google.android.gms.cloudmessaging.zzx

            /* renamed from: f */
            private final Rpc f6958f;

            /* renamed from: g */
            private final String f6959g;

            /* renamed from: h */
            private final ScheduledFuture f6960h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6958f = this;
                this.f6959g = e;
                this.f6960h = schedule2;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f6958f.m15122k(this.f6959g, this.f6960h, task);
            }
        });
        return taskCompletionSource.m10830a();
    }

    @NonNull
    /* renamed from: a */
    public Task<Bundle> m15132a(@NonNull final Bundle bundle) {
        boolean z = true;
        if (this.f6913c.m15098c() >= 12000000) {
            return zze.m15115c(this.f6912b).m15112f(1, bundle).mo10789g(f6910j, zzt.f6953a);
        }
        if (this.f6913c.m15100a() == 0) {
            z = false;
        }
        return !z ? Tasks.m10821d(new IOException("MISSING_INSTANCEID_SERVICE")) : m15120m(bundle).mo10788h(f6910j, new Continuation(this, bundle) { // from class: com.google.android.gms.cloudmessaging.zzv

            /* renamed from: a */
            private final Rpc f6955a;

            /* renamed from: b */
            private final Bundle f6956b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6955a = this;
                this.f6956b = bundle;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f6955a.m15129d(this.f6956b, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final /* synthetic */ Task m15129d(Bundle bundle, Task task) throws Exception {
        if (task.mo10782n() && m15121l((Bundle) task.mo10786j())) {
            return m15120m(bundle).mo10780p(f6910j, zzw.f6957a);
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final /* synthetic */ void m15122k(String str, ScheduledFuture scheduledFuture, Task task) {
        synchronized (this.f6911a) {
            this.f6911a.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
