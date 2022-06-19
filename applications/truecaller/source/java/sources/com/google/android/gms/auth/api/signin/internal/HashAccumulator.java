package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/HashAccumulator.class */
public class HashAccumulator {

    /* renamed from: a */
    public int f5551a = 1;

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: a */
    public HashAccumulator m39116a(Object obj) {
        this.f5551a = (31 * this.f5551a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final HashAccumulator m39115b(boolean z) {
        this.f5551a = (31 * this.f5551a) + (z ? 1 : 0);
        return this;
    }
}
