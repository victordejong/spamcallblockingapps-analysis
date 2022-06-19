package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.common.internal.bg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bg.class */
final class C12008bg implements Parcelable.Creator<BinderWrapper> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BinderWrapper createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BinderWrapper[] newArray(int i) {
        return new BinderWrapper[i];
    }
}
