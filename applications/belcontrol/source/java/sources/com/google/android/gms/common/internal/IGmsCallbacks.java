package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsCallbacks.class */
public interface IGmsCallbacks extends IInterface {
    void onPostInitComplete(int i, @RecentlyNonNull IBinder iBinder, @RecentlyNonNull Bundle bundle);

    void zzb(int i, @RecentlyNonNull Bundle bundle);

    void zzc(int i, IBinder iBinder, zzi zziVar);
}
