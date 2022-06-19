package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaur.class */
public interface zzaur extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getMediationAdapterClassName();

    boolean isLoaded();

    void pause();

    void resume();

    void setAppPackageName(String str);

    void setCustomData(String str);

    void setImmersiveMode(boolean z);

    void setUserId(String str);

    void show();

    void zza(zzaup zzaupVar);

    void zza(zzauu zzauuVar);

    void zza(zzava zzavaVar);

    void zza(zzxs zzxsVar);

    void zzi(IObjectWrapper iObjectWrapper);

    void zzj(IObjectWrapper iObjectWrapper);

    void zzk(IObjectWrapper iObjectWrapper);

    zzyx zzki();

    void zzl(IObjectWrapper iObjectWrapper);

    boolean zzrw();
}
