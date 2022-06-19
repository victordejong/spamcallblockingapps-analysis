package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.common.internal.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a0.class */
final class C1565a0 implements Parcelable.Creator<BinderWrapper> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BinderWrapper createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BinderWrapper[] newArray(int i) {
        return new BinderWrapper[i];
    }
}
