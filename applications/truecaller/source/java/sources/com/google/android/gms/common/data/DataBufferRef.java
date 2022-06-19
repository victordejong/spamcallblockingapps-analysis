package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import java.util.Arrays;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/DataBufferRef.class */
public abstract class DataBufferRef {
    @KeepForSdk

    /* renamed from: a */
    public int f5919a;

    @KeepForSdk
    public boolean equals(Object obj) {
        return (obj instanceof DataBufferRef) && Objects.m38910a(Integer.valueOf(((DataBufferRef) obj).f5919a), Integer.valueOf(this.f5919a)) && Objects.m38910a(0, 0);
    }

    @KeepForSdk
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f5919a), 0, null});
    }
}
