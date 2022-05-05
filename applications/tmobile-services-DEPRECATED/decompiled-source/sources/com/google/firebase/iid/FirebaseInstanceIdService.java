package com.google.firebase.iid;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.ShowFirstParty;
@ShowFirstParty
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdService.class */
public class FirebaseInstanceIdService extends Service {
    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Deprecated
    @WorkerThread
    public void onTokenRefresh() {
    }
}
