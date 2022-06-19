package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import androidx.p014c.C0374a;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzan.class */
public final class zzan {
    private final Executor zza;
    private final Map<Pair<String, String>, Task<InstanceIdResult>> zzb = new C0374a();

    public zzan(Executor executor) {
        this.zza = executor;
    }

    public final /* synthetic */ Task zza(Pair pair, Task task) {
        synchronized (this) {
            this.zzb.remove(pair);
        }
        return task;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Task<InstanceIdResult> zza(String str, String str2, zzap zzapVar) {
        synchronized (this) {
            Pair pair = new Pair(str, str2);
            Task<InstanceIdResult> task = this.zzb.get(pair);
            if (task != null) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 29);
                    sb.append("Joining ongoing request for: ");
                    sb.append(valueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                return task;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(pair);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("Making new request for: ");
                sb2.append(valueOf2);
                Log.d("FirebaseInstanceId", sb2.toString());
            }
            Task continueWithTask = zzapVar.zza().continueWithTask(this.zza, new Continuation(this, pair) { // from class: com.google.firebase.iid.zzam
                private final zzan zza;
                private final Pair zzb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                    this.zzb = pair;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return this.zza.zza(this.zzb, task2);
                }
            });
            this.zzb.put(pair, continueWithTask);
            return continueWithTask;
        }
    }
}
