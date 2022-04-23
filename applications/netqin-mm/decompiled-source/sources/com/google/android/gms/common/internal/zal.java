package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zal.class */
public final class zal {

    /* renamed from: a */
    public final SparseIntArray f23471a;

    /* renamed from: b */
    public GoogleApiAvailabilityLight f23472b;

    public zal() {
        this(GoogleApiAvailability.m17826a());
    }

    public zal(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f23471a = new SparseIntArray();
        Preconditions.m17288a(googleApiAvailabilityLight);
        this.f23472b = googleApiAvailabilityLight;
    }

    /* renamed from: a */
    public final int m17181a(Context context, Api.Client client) {
        Preconditions.m17288a(context);
        Preconditions.m17288a(client);
        int i = 0;
        if (!client.mo17609i()) {
            return 0;
        }
        int j = client.mo17608j();
        int i2 = this.f23471a.get(j, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.f23471a.size()) {
                i = i2;
                break;
            }
            int keyAt = this.f23471a.keyAt(i3);
            if (keyAt > j && this.f23471a.get(keyAt) == 0) {
                break;
            }
            i3++;
        }
        int i4 = i;
        if (i == -1) {
            i4 = this.f23472b.mo17809a(context, j);
        }
        this.f23471a.put(j, i4);
        return i4;
    }

    /* renamed from: a */
    public final void m17182a() {
        this.f23471a.clear();
    }
}
