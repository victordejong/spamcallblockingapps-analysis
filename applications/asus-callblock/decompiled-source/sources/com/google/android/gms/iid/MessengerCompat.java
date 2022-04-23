package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.iid.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/MessengerCompat.class */
public class MessengerCompat implements Parcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new Parcelable.Creator<MessengerCompat>() { // from class: com.google.android.gms.iid.MessengerCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ MessengerCompat createFromParcel(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            return readStrongBinder != null ? new MessengerCompat(readStrongBinder) : null;
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ MessengerCompat[] newArray(int i) {
            return new MessengerCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    Messenger f4090a;

    /* renamed from: b  reason: collision with root package name */
    a f4091b;

    public MessengerCompat(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4090a = new Messenger(iBinder);
        } else {
            this.f4091b = a.AbstractBinderC0120a.a(iBinder);
        }
    }

    private IBinder a() {
        return this.f4090a != null ? this.f4090a.getBinder() : this.f4091b.asBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                z = a().equals(((MessengerCompat) obj).a());
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public int hashCode() {
        return a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f4090a != null) {
            parcel.writeStrongBinder(this.f4090a.getBinder());
        } else {
            parcel.writeStrongBinder(this.f4091b.asBinder());
        }
    }
}
