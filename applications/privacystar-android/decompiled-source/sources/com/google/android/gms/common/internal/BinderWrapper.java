package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
@KeepForSdk
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/BinderWrapper.class */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new zza();
    private IBinder zzcy;

    public BinderWrapper() {
        this.zzcy = null;
    }

    @KeepForSdk
    public BinderWrapper(IBinder iBinder) {
        this.zzcy = null;
        this.zzcy = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.zzcy = null;
        this.zzcy = parcel.readStrongBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderWrapper(Parcel parcel, zza zzaVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzcy);
    }
}
