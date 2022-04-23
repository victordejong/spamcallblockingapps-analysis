package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BooleanResult.class */
public class BooleanResult implements Result {

    /* renamed from: a */
    public final Status f23036a;

    /* renamed from: b */
    public final boolean f23037b;

    @Override // com.google.android.gms.common.api.Result
    @KeepForSdk
    /* renamed from: d */
    public Status mo8632d() {
        return this.f23036a;
    }

    @KeepForSdk
    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.f23036a.equals(booleanResult.f23036a) && this.f23037b == booleanResult.f23037b;
    }

    @KeepForSdk
    public final int hashCode() {
        return ((this.f23036a.hashCode() + 527) * 31) + (this.f23037b ? 1 : 0);
    }
}
