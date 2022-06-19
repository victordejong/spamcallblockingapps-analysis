package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.base.zap;
import p007a6.C0028d;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zac.class */
public final class zac extends zap {
    public final /* synthetic */ GoogleApiAvailability zaa;
    private final Context zab;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zac(GoogleApiAvailability googleApiAvailability, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.zaa = googleApiAvailability;
        this.zab = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            C0028d.m8913g(50, "Don't know how to handle this message: ", i, "GoogleApiAvailability");
            return;
        }
        int isGooglePlayServicesAvailable = this.zaa.isGooglePlayServicesAvailable(this.zab);
        if (!this.zaa.isUserResolvableError(isGooglePlayServicesAvailable)) {
            return;
        }
        this.zaa.showErrorNotification(this.zab, isGooglePlayServicesAvailable);
    }
}
