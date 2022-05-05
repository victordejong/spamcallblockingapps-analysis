package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.cloudmessaging.IMessengerCompat;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zza.class */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new zzc();

    /* renamed from: f */
    private Messenger f6918f;

    /* renamed from: g */
    private IMessengerCompat f6919g;

    /* renamed from: com.google.android.gms.cloudmessaging.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zza$zza.class */
    public static final class C2477zza extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (!(Log.isLoggable("CloudMessengerCompat", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("CloudMessengerCompat", 3)))) {
                return zza.class;
            }
            Log.d("CloudMessengerCompat", "Using renamed FirebaseIidMessengerCompat class");
            return zza.class;
        }
    }

    public zza(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f6918f = new Messenger(iBinder);
        } else {
            this.f6919g = new IMessengerCompat.Proxy(iBinder);
        }
    }

    /* renamed from: a */
    private final IBinder m15119a() {
        Messenger messenger = this.f6918f;
        return messenger != null ? messenger.getBinder() : this.f6919g.asBinder();
    }

    /* renamed from: b */
    public final void m15118b(Message message) throws RemoteException {
        Messenger messenger = this.f6918f;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f6919g.send(message);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return m15119a().equals(((zza) obj).m15119a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m15119a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f6918f;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f6919g.asBinder());
        }
    }
}
