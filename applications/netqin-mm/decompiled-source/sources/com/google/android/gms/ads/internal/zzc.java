package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzc.class */
public abstract class zzc<T extends IInterface> extends BaseGmsClient<T> {
    public zzc(Context context, Looper looper, int i, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        super(context, looper, i, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }
}
