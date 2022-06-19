package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzf.class */
public class zzf implements Parcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new zze();
    private Messenger zza;
    private zzo zzb;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzf$zza.class */
    public static final class zza extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) {
            if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
                if (!FirebaseInstanceId.zzd()) {
                    return zzf.class;
                }
                Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
                return zzf.class;
            }
            return super.loadClass(str, z);
        }
    }

    public zzf(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.zza = new Messenger(iBinder);
        } else {
            this.zzb = new zzr(iBinder);
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
            return zza().equals(((zzf) obj).zza());
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

    public final void zza(Message message) {
        Messenger messenger = this.zza;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.zzb.zza(message);
        }
    }
}
