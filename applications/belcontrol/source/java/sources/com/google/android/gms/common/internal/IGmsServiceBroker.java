package com.google.android.gms.common.internal;

import android.os.IInterface;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsServiceBroker.class */
public interface IGmsServiceBroker extends IInterface {
    @KeepForSdk
    void getService(@RecentlyNonNull IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest);
}
