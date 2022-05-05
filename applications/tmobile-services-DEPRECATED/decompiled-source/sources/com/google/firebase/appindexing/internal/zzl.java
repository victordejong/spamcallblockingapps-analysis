package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.appindexing.FirebaseAppIndex;
import com.google.firebase.appindexing.FirebaseAppIndexingException;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzl.class */
public final class zzl extends TaskApiCall<zze, Void> {
    final /* synthetic */ zzj zzfh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzj zzjVar) {
        this.zzfh = zzjVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final /* synthetic */ void doExecute(zze zzeVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        zzy zzyVar;
        Queue queue;
        Queue queue2;
        Queue queue3;
        TaskCompletionSource taskCompletionSource2;
        Queue queue4;
        int i;
        Queue queue5;
        zzo zzoVar = new zzo(this, taskCompletionSource);
        zzyVar = this.zzfh.zzfc;
        zzg zza = ((zzr) zzeVar.getService()).zza(zzoVar, zzyVar);
        int i2 = zza == null ? 2 : zza.status;
        boolean z = false;
        boolean z2 = true;
        zzj zzjVar = null;
        zzjVar = null;
        if (i2 == 3) {
            if (zzt.isLoggable(4)) {
                Log.i(FirebaseAppIndex.APP_INDEXING_API_TAG, "Queue was full. API call will be retried.");
            }
            if (taskCompletionSource.m10826e(null)) {
                queue4 = this.zzfh.zzfe.zzff;
                synchronized (queue4) {
                    i = this.zzfh.zzfe.zzfg;
                    if (i == 0) {
                        queue5 = this.zzfh.zzfe.zzff;
                        zzjVar = (zzj) queue5.peek();
                        if (zzjVar == this.zzfh) {
                            z = true;
                        }
                        Preconditions.m14520n(z);
                    } else {
                        this.zzfh.zzfe.zzfg = 2;
                    }
                }
            }
        } else {
            if (i2 != 1) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("API call failed. Status code: ");
                sb.append(i2);
                String sb2 = sb.toString();
                if (zzt.isLoggable(6)) {
                    Log.e(FirebaseAppIndex.APP_INDEXING_API_TAG, sb2);
                }
                if (taskCompletionSource.m10826e(null)) {
                    taskCompletionSource2 = this.zzfh.zzfd;
                    taskCompletionSource2.m10829b(new FirebaseAppIndexingException("Indexing error."));
                }
            }
            queue = this.zzfh.zzfe.zzff;
            synchronized (queue) {
                queue2 = this.zzfh.zzfe.zzff;
                if (((zzj) queue2.poll()) != this.zzfh) {
                    z2 = false;
                }
                Preconditions.m14520n(z2);
                queue3 = this.zzfh.zzfe.zzff;
                zzjVar = (zzj) queue3.peek();
                this.zzfh.zzfe.zzfg = 0;
            }
        }
        if (zzjVar != null) {
            zzjVar.execute();
        }
    }
}
