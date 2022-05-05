package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/MessengerCompat.class */
public class MessengerCompat implements ReflectedParcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new zzq();

    /* renamed from: f */
    private Messenger f7760f;

    /* renamed from: g */
    private zzl f7761g;

    public MessengerCompat(IBinder iBinder) {
        zzl zzlVar;
        if (Build.VERSION.SDK_INT >= 21) {
            this.f7760f = new Messenger(iBinder);
            return;
        }
        if (iBinder == null) {
            zzlVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
            zzlVar = queryLocalInterface instanceof zzl ? (zzl) queryLocalInterface : new zzm(iBinder);
        }
        this.f7761g = zzlVar;
    }

    /* renamed from: a */
    private final IBinder m14158a() {
        Messenger messenger = this.f7760f;
        return messenger != null ? messenger.getBinder() : this.f7761g.asBinder();
    }

    /* renamed from: b */
    public final void m14157b(Message message) throws RemoteException {
        Messenger messenger = this.f7760f;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f7761g.send(message);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return m14158a().equals(((MessengerCompat) obj).m14158a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m14158a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f7760f;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f7761g.asBinder());
        }
    }
}
