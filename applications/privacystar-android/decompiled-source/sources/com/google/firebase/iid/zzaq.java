package com.google.firebase.iid;

import android.support.p001v4.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzaq.class */
public final class zzaq {
    private final Executor zzbj;
    @GuardedBy("this")
    private final Map<Pair<String, String>, Task<String>> zzco = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(Executor executor) {
        this.zzbj = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task zza(Pair pair, Task task) throws Exception {
        synchronized (this) {
            this.zzco.remove(pair);
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final Task<String> zza(String str, String str2, zzas zzasVar) {
        synchronized (this) {
            final Pair pair = new Pair(str, str2);
            Task<String> task = this.zzco.get(pair);
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
            Task continueWithTask = zzasVar.zzs().continueWithTask(this.zzbj, new Continuation(this, pair) { // from class: com.google.firebase.iid.zzar
                private final zzaq zzcp;
                private final Pair zzcq;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcp = this;
                    this.zzcq = pair;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return this.zzcp.zza(this.zzcq, task2);
                }
            });
            this.zzco.put(pair, continueWithTask);
            return continueWithTask;
        }
    }
}
