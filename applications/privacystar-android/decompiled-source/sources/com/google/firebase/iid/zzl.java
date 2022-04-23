package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzl.class */
public class zzl implements Parcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    private Messenger zzag;
    private zzv zzah;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzl$zza.class */
    public static final class zza extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (!FirebaseInstanceId.zzl()) {
                return zzl.class;
            }
            Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
            return zzl.class;
        }
    }

    public zzl(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.zzag = new Messenger(iBinder);
        } else {
            this.zzah = new zzw(iBinder);
        }
    }

    private final IBinder getBinder() {
        return this.zzag != null ? this.zzag.getBinder() : this.zzah.asBinder();
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
            return getBinder().equals(((zzl) obj).getBinder());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    public final void send(Message message) throws RemoteException {
        if (this.zzag != null) {
            this.zzag.send(message);
        } else {
            this.zzah.send(message);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzag != null) {
            parcel.writeStrongBinder(this.zzag.getBinder());
        } else {
            parcel.writeStrongBinder(this.zzah.asBinder());
        }
    }
}
