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
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzm.class */
public final class zzm extends TaskApiCall<zzd, Void> {
    final /* synthetic */ zzk zzcw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(zzk zzkVar) {
        this.zzcw = zzkVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final /* synthetic */ void doExecute(zzd zzdVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        zzx zzxVar;
        Queue queue;
        Queue queue2;
        Queue queue3;
        TaskCompletionSource taskCompletionSource2;
        Queue queue4;
        int i;
        Queue queue5;
        zzn zznVar = new zzn(this, taskCompletionSource);
        zzxVar = this.zzcw.zzcs;
        zzf zza = ((zzs) zzdVar.getService()).zza(zznVar, zzxVar);
        int i2 = zza == null ? 2 : zza.status;
        boolean z = false;
        boolean z2 = true;
        zzk zzkVar = null;
        zzkVar = null;
        if (i2 == 3) {
            if (zzu.isLoggable(4)) {
                Log.i(FirebaseAppIndex.APP_INDEXING_API_TAG, "Queue was full. API call will be retried.");
            }
            if (taskCompletionSource.trySetResult(null)) {
                queue4 = this.zzcw.zzcu.zzcq;
                synchronized (queue4) {
                    i = this.zzcw.zzcu.zzcr;
                    if (i == 0) {
                        queue5 = this.zzcw.zzcu.zzcq;
                        zzkVar = (zzk) queue5.peek();
                        if (zzkVar == this.zzcw) {
                            z = true;
                        }
                        Preconditions.checkState(z);
                    } else {
                        this.zzcw.zzcu.zzcr = 2;
                    }
                }
            }
        } else {
            if (i2 != 1) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("API call failed. Status code: ");
                sb.append(i2);
                String sb2 = sb.toString();
                if (zzu.isLoggable(6)) {
                    Log.e(FirebaseAppIndex.APP_INDEXING_API_TAG, sb2);
                }
                if (taskCompletionSource.trySetResult(null)) {
                    taskCompletionSource2 = this.zzcw.zzct;
                    taskCompletionSource2.setException(new FirebaseAppIndexingException("Indexing error."));
                }
            }
            queue = this.zzcw.zzcu.zzcq;
            synchronized (queue) {
                queue2 = this.zzcw.zzcu.zzcq;
                if (((zzk) queue2.poll()) != this.zzcw) {
                    z2 = false;
                }
                Preconditions.checkState(z2);
                queue3 = this.zzcw.zzcu.zzcq;
                zzkVar = (zzk) queue3.peek();
                this.zzcw.zzcu.zzcr = 0;
            }
        }
        if (zzkVar != null) {
            zzkVar.execute();
        }
    }
}
