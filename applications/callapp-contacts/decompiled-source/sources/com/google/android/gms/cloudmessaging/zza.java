package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cloudmessaging.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/zza.class */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new d();
    private Messenger zza;
    private com.google.android.gms.cloudmessaging.a zzb;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/zza$a.class */
    public static final class a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (Log.isLoggable("CloudMessengerCompat", 3) || Build.VERSION.SDK_INT != 23) {
                return zza.class;
            }
            Log.isLoggable("CloudMessengerCompat", 3);
            return zza.class;
        }
    }

    public zza(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.zza = new Messenger(iBinder);
        } else {
            this.zzb = new a.C0452a(iBinder);
        }
    }

    private final IBinder zza() {
        Messenger messenger = this.zza;
        return messenger != null ? messenger.getBinder() : this.zzb.asBinder();
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
            return zza().equals(((zza) obj).zza());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return zza().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.zza;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.zzb.asBinder());
        }
    }

    public final void zza(Message message) throws RemoteException {
        Messenger messenger = this.zza;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.zzb.a(message);
        }
    }
}
