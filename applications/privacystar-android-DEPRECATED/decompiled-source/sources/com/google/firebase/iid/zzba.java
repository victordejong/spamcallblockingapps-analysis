package com.google.firebase.iid;

import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.p001v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzba.class */
public final class zzba {
    @GuardedBy("itself")
    private final zzaw zzaj;
    @GuardedBy("this")
    private int zzdl = 0;
    @GuardedBy("this")
    private final Map<Integer, TaskCompletionSource<Void>> zzdm = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzba(zzaw zzawVar) {
        this.zzaj = zzawVar;
    }

    @WorkerThread
    private static boolean zza(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] split = str.split("!");
        if (split.length != 2) {
            return true;
        }
        String str2 = split[0];
        String str3 = split[1];
        char c = 65535;
        try {
            int hashCode = str2.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && str2.equals("U")) {
                    c = 1;
                }
            } else if (str2.equals("S")) {
                c = 0;
            }
            switch (c) {
                case 0:
                    firebaseInstanceId.zzb(str3);
                    if (!FirebaseInstanceId.zzl()) {
                        return true;
                    }
                    Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                    return true;
                case 1:
                    firebaseInstanceId.zzc(str3);
                    if (!FirebaseInstanceId.zzl()) {
                        return true;
                    }
                    Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                    return true;
                default:
                    return true;
            }
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.e("FirebaseInstanceId", valueOf.length() != 0 ? "Topic sync failed: ".concat(valueOf) : new String("Topic sync failed: "));
            return false;
        }
    }

    @GuardedBy("this")
    @Nullable
    private final String zzar() {
        String zzak;
        synchronized (this.zzaj) {
            zzak = this.zzaj.zzak();
        }
        if (TextUtils.isEmpty(zzak)) {
            return null;
        }
        String[] split = zzak.split(",");
        if (split.length <= 1 || TextUtils.isEmpty(split[1])) {
            return null;
        }
        return split[1];
    }

    private final boolean zzk(String str) {
        synchronized (this) {
            synchronized (this.zzaj) {
                String zzak = this.zzaj.zzak();
                String valueOf = String.valueOf(",");
                String valueOf2 = String.valueOf(str);
                if (!zzak.startsWith(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf))) {
                    return false;
                }
                String valueOf3 = String.valueOf(",");
                String valueOf4 = String.valueOf(str);
                this.zzaj.zzf(zzak.substring((valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3)).length()));
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Task<Void> zza(String str) {
        String zzak;
        Task<Void> task;
        synchronized (this) {
            synchronized (this.zzaj) {
                zzak = this.zzaj.zzak();
                zzaw zzawVar = this.zzaj;
                StringBuilder sb = new StringBuilder(String.valueOf(zzak).length() + 1 + String.valueOf(str).length());
                sb.append(zzak);
                sb.append(",");
                sb.append(str);
                zzawVar.zzf(sb.toString());
            }
            TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();
            this.zzdm.put(Integer.valueOf(this.zzdl + (TextUtils.isEmpty(zzak) ? 0 : zzak.split(",").length - 1)), taskCompletionSource);
            task = taskCompletionSource.getTask();
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzaq() {
        boolean z;
        synchronized (this) {
            z = zzar() != null;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (com.google.firebase.iid.FirebaseInstanceId.zzl() == false) goto L_0x0019;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
        android.util.Log.d("FirebaseInstanceId", "topic sync succeeded");
     */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.firebase.iid.FirebaseInstanceId r5) {
        /*
            r4 = this;
        L_0x0000:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            java.lang.String r0 = r0.zzar()     // Catch: all -> 0x0062
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x001d
            boolean r0 = com.google.firebase.iid.FirebaseInstanceId.zzl()     // Catch: all -> 0x0062
            if (r0 == 0) goto L_0x0019
            java.lang.String r0 = "FirebaseInstanceId"
            java.lang.String r1 = "topic sync succeeded"
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x0062
        L_0x0019:
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x0062
            r0 = 1
            return r0
        L_0x001d:
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x0062
            r0 = r5
            r1 = r6
            boolean r0 = zza(r0, r1)
            if (r0 != 0) goto L_0x0029
            r0 = 0
            return r0
        L_0x0029:
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            java.util.Map<java.lang.Integer, com.google.android.gms.tasks.TaskCompletionSource<java.lang.Void>> r0 = r0.zzdm     // Catch: all -> 0x005d
            r1 = r4
            int r1 = r1.zzdl     // Catch: all -> 0x005d
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: all -> 0x005d
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x005d
            com.google.android.gms.tasks.TaskCompletionSource r0 = (com.google.android.gms.tasks.TaskCompletionSource) r0     // Catch: all -> 0x005d
            r7 = r0
            r0 = r4
            r1 = r6
            boolean r0 = r0.zzk(r1)     // Catch: all -> 0x005d
            r0 = r4
            r1 = r4
            int r1 = r1.zzdl     // Catch: all -> 0x005d
            r2 = 1
            int r1 = r1 + r2
            r0.zzdl = r1     // Catch: all -> 0x005d
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x005d
            r0 = r7
            if (r0 == 0) goto L_0x0000
            r0 = r7
            r1 = 0
            r0.setResult(r1)
            goto L_0x0000
        L_0x005d:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x005d
            r0 = r5
            throw r0
        L_0x0062:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x0062
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzba.zzc(com.google.firebase.iid.FirebaseInstanceId):boolean");
    }
}
