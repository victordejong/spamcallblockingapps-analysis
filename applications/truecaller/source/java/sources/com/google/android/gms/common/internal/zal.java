package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zal.class */
public final class zal {

    /* renamed from: a */
    public final SparseIntArray f6024a;

    /* renamed from: b */
    public GoogleApiAvailabilityLight f6025b;

    public zal() {
        this(GoogleApiAvailability.f5673d);
    }

    public zal(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f6024a = new SparseIntArray();
        Objects.requireNonNull(googleApiAvailabilityLight, "null reference");
        this.f6025b = googleApiAvailabilityLight;
    }

    /* renamed from: a */
    public final int m38825a(Context context, Api.Client client) {
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(client, "null reference");
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int i = this.f6024a.get(minApkVersion, -1);
        if (i == -1) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.f6024a.size()) {
                    i = -1;
                    break;
                }
                int keyAt = this.f6024a.keyAt(i2);
                if (keyAt > minApkVersion && this.f6024a.get(keyAt) == 0) {
                    i = 0;
                    break;
                }
                i2++;
            }
            if (i == -1) {
                i = this.f6025b.mo39062e(context, minApkVersion);
            }
            this.f6024a.put(minApkVersion, i);
        }
        return i;
    }
}
