package com.google.android.gms.auth.api.signin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.BinderC2443w;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/RevocationBoundService.class */
public final class RevocationBoundService extends Service {
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        BinderC2443w binderC2443w;
        if ("com.google.android.gms.auth.api.signin.RevocationBoundService.disconnect".equals(intent.getAction()) || "com.google.android.gms.auth.api.signin.RevocationBoundService.clearClientState".equals(intent.getAction())) {
            if (Log.isLoggable("RevocationService", 2)) {
                String valueOf = String.valueOf(intent.getAction());
                Log.v("RevocationService", valueOf.length() != 0 ? "RevocationBoundService handling ".concat(valueOf) : new String("RevocationBoundService handling "));
            }
            binderC2443w = new BinderC2443w(this);
        } else {
            String valueOf2 = String.valueOf(intent.getAction());
            Log.w("RevocationService", valueOf2.length() != 0 ? "Unknown action sent to RevocationBoundService: ".concat(valueOf2) : new String("Unknown action sent to RevocationBoundService: "));
            binderC2443w = null;
        }
        return binderC2443w;
    }
}
