package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BinderWrapper.class */
public final class BinderWrapper implements Parcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new C1565a0();

    /* renamed from: b */
    private IBinder f5825b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderWrapper(Parcel parcel, C1565a0 a0Var) {
        this.f5825b = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f5825b);
    }
}
