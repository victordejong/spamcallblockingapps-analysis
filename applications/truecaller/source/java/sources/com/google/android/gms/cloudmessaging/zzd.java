package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1652d.C24899b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzd.class */
public final class zzd implements Parcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new C24899b();

    /* renamed from: a */
    public Messenger f5628a;

    public zzd(IBinder iBinder) {
        this.f5628a = new Messenger(iBinder);
    }

    /* renamed from: a */
    public final IBinder m39083a() {
        Messenger messenger = this.f5628a;
        Objects.requireNonNull(messenger);
        return messenger.getBinder();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return m39083a().equals(((zzd) obj).m39083a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public final int hashCode() {
        return m39083a().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f5628a;
        Objects.requireNonNull(messenger);
        parcel.writeStrongBinder(messenger.getBinder());
    }
}
