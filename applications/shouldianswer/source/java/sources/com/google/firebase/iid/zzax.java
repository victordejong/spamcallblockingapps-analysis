package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import androidx.p014c.C0374a;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzax.class */
public final class zzax {
    private int zza = 0;
    private final Map<Integer, TaskCompletionSource<Void>> zzb = new C0374a();
    private final zzat zzc;

    public zzax(zzat zzatVar) {
        this.zzc = zzatVar;
    }

    private static boolean zza(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] split = str.split("!");
        if (split.length == 2) {
            String str2 = split[0];
            String str3 = split[1];
            boolean z = true;
            try {
                int hashCode = str2.hashCode();
                if (hashCode != 83) {
                    if (hashCode == 85 && str2.equals("U")) {
                        z = true;
                    }
                } else if (str2.equals("S")) {
                    z = false;
                }
                if (!z) {
                    firebaseInstanceId.zzb(str3);
                    if (!FirebaseInstanceId.zzd()) {
                        return true;
                    }
                    Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                    return true;
                } else if (!z) {
                    return true;
                } else {
                    firebaseInstanceId.zzc(str3);
                    if (!FirebaseInstanceId.zzd()) {
                        return true;
                    }
                    Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                    return true;
                }
            } catch (IOException e) {
                if (!"SERVICE_NOT_AVAILABLE".equals(e.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e.getMessage())) {
                    if (e.getMessage() != null) {
                        throw e;
                    }
                    Log.e("FirebaseInstanceId", "Topic operation failed without exception message. Will retry Topic operation.");
                    return false;
                }
                String message = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 53);
                sb.append("Topic operation failed: ");
                sb.append(message);
                sb.append(". Will retry Topic operation.");
                Log.e("FirebaseInstanceId", sb.toString());
                return false;
            }
        }
        return true;
    }

    private final String zzb() {
        String zza;
        synchronized (this.zzc) {
            zza = this.zzc.zza();
        }
        if (!TextUtils.isEmpty(zza)) {
            String[] split = zza.split(",");
            if (split.length > 1 && !TextUtils.isEmpty(split[1])) {
                return split[1];
            }
            return null;
        }
        return null;
    }

    private final boolean zzb(String str) {
        synchronized (this) {
            synchronized (this.zzc) {
                String zza = this.zzc.zza();
                String valueOf = String.valueOf(str);
                if (zza.startsWith(valueOf.length() != 0 ? ",".concat(valueOf) : new String(","))) {
                    String valueOf2 = String.valueOf(str);
                    this.zzc.zza(zza.substring((valueOf2.length() != 0 ? ",".concat(valueOf2) : new String(",")).length()));
                    return true;
                }
                return false;
            }
        }
    }

    public final Task<Void> zza(String str) {
        String zza;
        Task<Void> task;
        synchronized (this) {
            synchronized (this.zzc) {
                zza = this.zzc.zza();
                zzat zzatVar = this.zzc;
                StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 1 + String.valueOf(str).length());
                sb.append(zza);
                sb.append(",");
                sb.append(str);
                zzatVar.zza(sb.toString());
            }
            TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();
            this.zzb.put(Integer.valueOf(this.zza + (TextUtils.isEmpty(zza) ? 0 : zza.split(",").length - 1)), taskCompletionSource);
            task = taskCompletionSource.getTask();
        }
        return task;
    }

    public final boolean zza() {
        boolean z;
        synchronized (this) {
            z = zzb() != null;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (com.google.firebase.iid.FirebaseInstanceId.zzd() == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
        android.util.Log.d("FirebaseInstanceId", "topic sync succeeded");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.firebase.iid.FirebaseInstanceId r5) {
        /*
            r4 = this;
        L0:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            java.lang.String r0 = r0.zzb()     // Catch: java.lang.Throwable -> L62
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L1d
            boolean r0 = com.google.firebase.iid.FirebaseInstanceId.zzd()     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L19
            java.lang.String r0 = "FirebaseInstanceId"
            java.lang.String r1 = "topic sync succeeded"
            int r0 = android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L62
        L19:
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L62
            r0 = 1
            return r0
        L1d:
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L62
            r0 = r5
            r1 = r6
            boolean r0 = zza(r0, r1)
            if (r0 != 0) goto L29
            r0 = 0
            return r0
        L29:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            java.util.Map<java.lang.Integer, com.google.android.gms.tasks.TaskCompletionSource<java.lang.Void>> r0 = r0.zzb     // Catch: java.lang.Throwable -> L5d
            r1 = r4
            int r1 = r1.zza     // Catch: java.lang.Throwable -> L5d
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> L5d
            com.google.android.gms.tasks.TaskCompletionSource r0 = (com.google.android.gms.tasks.TaskCompletionSource) r0     // Catch: java.lang.Throwable -> L5d
            r7 = r0
            r0 = r4
            r1 = r6
            boolean r0 = r0.zzb(r1)     // Catch: java.lang.Throwable -> L5d
            r0 = r4
            r1 = r4
            int r1 = r1.zza     // Catch: java.lang.Throwable -> L5d
            r2 = 1
            int r1 = r1 + r2
            r0.zza = r1     // Catch: java.lang.Throwable -> L5d
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5d
            r0 = r7
            if (r0 == 0) goto L0
            r0 = r7
            r1 = 0
            r0.setResult(r1)
            goto L0
        L5d:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5d
            r0 = r5
            throw r0
        L62:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L62
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzax.zza(com.google.firebase.iid.FirebaseInstanceId):boolean");
    }
}
