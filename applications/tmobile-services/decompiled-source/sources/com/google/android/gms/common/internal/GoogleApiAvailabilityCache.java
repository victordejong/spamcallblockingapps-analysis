package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GoogleApiAvailabilityCache.class */
public class GoogleApiAvailabilityCache {

    /* renamed from: a */
    private final SparseIntArray f7509a;

    /* renamed from: b */
    private GoogleApiAvailabilityLight f7510b;

    public GoogleApiAvailabilityCache() {
        this(GoogleApiAvailability.m15080r());
    }

    public GoogleApiAvailabilityCache(@NonNull GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f7509a = new SparseIntArray();
        Preconditions.m14523k(googleApiAvailabilityLight);
        this.f7510b = googleApiAvailabilityLight;
    }

    /* renamed from: a */
    public void m14543a() {
        this.f7509a.clear();
    }

    /* renamed from: b */
    public int m14542b(@NonNull Context context, @NonNull Api.Client client) {
        Preconditions.m14523k(context);
        Preconditions.m14523k(client);
        int i = 0;
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int i2 = this.f7509a.get(minApkVersion, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.f7509a.size()) {
                i = i2;
                break;
            }
            int keyAt = this.f7509a.keyAt(i3);
            if (keyAt > minApkVersion && this.f7509a.get(keyAt) == 0) {
                break;
            }
            i3++;
        }
        int i4 = i;
        if (i == -1) {
            i4 = this.f7510b.mo15062j(context, minApkVersion);
        }
        this.f7509a.put(minApkVersion, i4);
        return i4;
    }
}
