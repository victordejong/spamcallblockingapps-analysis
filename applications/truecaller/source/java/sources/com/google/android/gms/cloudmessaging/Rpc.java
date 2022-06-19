package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.cloudmessaging.zza;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p1727n3.p1788g.C26187h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1652d.HandlerC24898a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/Rpc.class */
public class Rpc {

    /* renamed from: h */
    public static int f5617h;

    /* renamed from: i */
    public static PendingIntent f5618i;

    /* renamed from: j */
    public static final Executor f5619j = zzz.f5658a;

    /* renamed from: k */
    public static final Pattern f5620k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* renamed from: b */
    public final Context f5622b;

    /* renamed from: c */
    public final zzt f5623c;

    /* renamed from: d */
    public final ScheduledExecutorService f5624d;

    /* renamed from: f */
    public Messenger f5626f;

    /* renamed from: g */
    public zzd f5627g;

    /* renamed from: a */
    public final C26187h<String, TaskCompletionSource<Bundle>> f5621a = new C26187h<>();

    /* renamed from: e */
    public Messenger f5625e = new Messenger(new HandlerC24898a(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.f5622b = context;
        this.f5623c = new zzt(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f5624d = scheduledThreadPoolExecutor;
    }

    /* renamed from: a */
    public final Task<Bundle> m39085a(Bundle bundle) {
        final String num;
        synchronized (Rpc.class) {
            try {
                int i = f5617h;
                f5617h = i + 1;
                num = Integer.toString(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        final TaskCompletionSource<Bundle> taskCompletionSource = new TaskCompletionSource<>();
        synchronized (this.f5621a) {
            this.f5621a.put(num, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f5623c.m39080a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        Context context = this.f5622b;
        synchronized (Rpc.class) {
            try {
                if (f5618i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    f5618i = zza.zza(context, 0, intent2, zza.zza);
                }
                intent.putExtra("app", f5618i);
            } finally {
            }
        }
        intent.putExtra("kid", C22128a.m8610j(new StringBuilder(String.valueOf(num).length() + 5), "|ID|", num, "|"));
        if (Log.isLoggable("Rpc", 3)) {
            String.valueOf(intent.getExtras()).length();
        }
        intent.putExtra("google.messenger", this.f5625e);
        if (this.f5626f != null || this.f5627g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f5626f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    Messenger messenger2 = this.f5627g.f5628a;
                    Objects.requireNonNull(messenger2);
                    messenger2.send(obtain);
                }
            } catch (RemoteException e) {
                Log.isLoggable("Rpc", 3);
            }
            final ScheduledFuture<?> schedule = this.f5624d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzy
                @Override // java.lang.Runnable
                public final void run() {
                    if (TaskCompletionSource.this.m38516a(new IOException("TIMEOUT"))) {
                    }
                }
            }, 30L, TimeUnit.SECONDS);
            taskCompletionSource.f6493a.d(f5619j, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzw
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    Rpc rpc = Rpc.this;
                    String str = num;
                    ScheduledFuture scheduledFuture = schedule;
                    synchronized (rpc.f5621a) {
                        rpc.f5621a.remove(str);
                    }
                    scheduledFuture.cancel(false);
                }
            });
            return taskCompletionSource.f6493a;
        }
        if (this.f5623c.m39080a() == 2) {
            this.f5622b.sendBroadcast(intent);
        } else {
            this.f5622b.startService(intent);
        }
        final ScheduledFuture schedule2 = this.f5624d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzy
            @Override // java.lang.Runnable
            public final void run() {
                if (TaskCompletionSource.this.m38516a(new IOException("TIMEOUT"))) {
                }
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.f6493a.d(f5619j, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzw
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                Rpc rpc = Rpc.this;
                String str = num;
                ScheduledFuture scheduledFuture = schedule2;
                synchronized (rpc.f5621a) {
                    rpc.f5621a.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return taskCompletionSource.f6493a;
    }

    /* renamed from: b */
    public final void m39084b(String str, Bundle bundle) {
        synchronized (this.f5621a) {
            TaskCompletionSource<Bundle> remove = this.f5621a.remove(str);
            if (remove != null) {
                remove.f6493a.w(bundle);
                return;
            }
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Missing callback for ".concat(valueOf);
            } else {
                new String("Missing callback for ");
            }
        }
    }
}
