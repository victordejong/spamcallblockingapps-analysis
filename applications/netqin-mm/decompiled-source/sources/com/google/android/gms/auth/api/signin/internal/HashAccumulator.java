package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/HashAccumulator.class */
public class HashAccumulator {
    @VisibleForTesting

    /* renamed from: b */
    public static int f22959b = 31;

    /* renamed from: a */
    public int f22960a = 1;

    @KeepForSdk
    /* renamed from: a */
    public int m17861a() {
        return this.f22960a;
    }

    @KeepForSdk
    /* renamed from: a */
    public HashAccumulator m17860a(Object obj) {
        this.f22960a = (f22959b * this.f22960a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    /* renamed from: a */
    public final HashAccumulator m17859a(boolean z) {
        this.f22960a = (f22959b * this.f22960a) + (z ? 1 : 0);
        return this;
    }
}
