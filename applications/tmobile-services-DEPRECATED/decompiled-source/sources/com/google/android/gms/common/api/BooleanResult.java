package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BooleanResult.class */
public class BooleanResult implements Result {

    /* renamed from: f */
    private final Status f7009f;

    /* renamed from: g */
    private final boolean f7010g;

    @KeepForSdk
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.f7009f.equals(booleanResult.f7009f) && this.f7010g == booleanResult.f7010g;
    }

    @KeepForSdk
    public final int hashCode() {
        return ((this.f7009f.hashCode() + 527) * 31) + (this.f7010g ? 1 : 0);
    }

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    /* renamed from: k */
    public Status mo10851k() {
        return this.f7009f;
    }
}
