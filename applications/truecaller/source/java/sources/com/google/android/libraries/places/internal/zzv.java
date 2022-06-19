package com.google.android.libraries.places.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import p193e.p1432d.p1443e.C22168a;
import p193e.p1432d.p1443e.C22181k;
import p193e.p1432d.p1443e.C22182l;
import p193e.p1432d.p1443e.C22183n;
import p193e.p1432d.p1443e.C22195t;
import p193e.p1432d.p1443e.C22196u;
import p193e.p1432d.p1443e.C22197v;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzv.class */
public final class zzv {
    public static ApiException zza(C22197v c22197v) {
        int i = c22197v instanceof C22181k ? 7 : c22197v instanceof C22196u ? 15 : ((c22197v instanceof C22195t) || (c22197v instanceof C22183n)) ? 8 : c22197v instanceof C22168a ? 9011 : 13;
        C22182l c22182l = c22197v.f61658a;
        return new ApiException(new Status(i, String.format("Unexpected server error (HTTP Code: %s. Message: %s.)", c22182l == null ? "N/A" : String.valueOf(c22182l.f61631a), c22197v)));
    }
}
