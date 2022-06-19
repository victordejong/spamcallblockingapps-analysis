package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResolvableApiException.class */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(@RecentlyNonNull Status status) {
        super(status);
    }

    @RecentlyNonNull
    public PendingIntent getResolution() {
        return getStatus().m17490l0();
    }

    public void startResolutionForResult(@RecentlyNonNull Activity activity, int i) {
        getStatus().m17485q0(activity, i);
    }
}
