package com.google.android.gms.common;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zac.class */
public final class zac extends zap {
    final /* synthetic */ GoogleApiAvailability zaa;
    private final Context zab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zac(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.zaa = googleApiAvailability;
        this.zab = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 1) {
            int isGooglePlayServicesAvailable = this.zaa.isGooglePlayServicesAvailable(this.zab);
            if (!this.zaa.isUserResolvableError(isGooglePlayServicesAvailable)) {
                return;
            }
            this.zaa.showErrorNotification(this.zab, isGooglePlayServicesAvailable);
            return;
        }
        int i = message.what;
        StringBuilder sb = new StringBuilder(50);
        sb.append("Don't know how to handle this message: ");
        sb.append(i);
        Log.w("GoogleApiAvailability", sb.toString());
    }
}
