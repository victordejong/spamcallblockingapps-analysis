package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zal.class */
public final class zal {
    private final SparseIntArray zaa;
    private GoogleApiAvailabilityLight zab;

    public zal() {
        this(GoogleApiAvailability.getInstance());
    }

    public zal(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.zaa = new SparseIntArray();
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.zab = googleApiAvailabilityLight;
    }

    public final int zaa(Context context, Api.Client client) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int zab = zab(context, minApkVersion);
        if (zab == -1) {
            int i = 0;
            while (true) {
                if (i >= this.zaa.size()) {
                    zab = -1;
                    break;
                }
                int keyAt = this.zaa.keyAt(i);
                if (keyAt > minApkVersion && this.zaa.get(keyAt) == 0) {
                    zab = 0;
                    break;
                }
                i++;
            }
            if (zab == -1) {
                zab = this.zab.isGooglePlayServicesAvailable(context, minApkVersion);
            }
            this.zaa.put(minApkVersion, zab);
        }
        return zab;
    }

    public final int zab(Context context, int i) {
        return this.zaa.get(i, -1);
    }

    public final void zac() {
        this.zaa.clear();
    }
}
