package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import p081h.p203i.p204a.p224e.p235d.p240n.C7000k0;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/BinderWrapper.class */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new C7000k0();

    /* renamed from: a */
    public IBinder f6583a;

    public BinderWrapper() {
        this.f6583a = null;
    }

    public BinderWrapper(Parcel parcel) {
        this.f6583a = null;
        this.f6583a = parcel.readStrongBinder();
    }

    public /* synthetic */ BinderWrapper(Parcel parcel, C7000k0 k0Var) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f6583a);
    }
}
