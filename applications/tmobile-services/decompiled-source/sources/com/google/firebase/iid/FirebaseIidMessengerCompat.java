package com.google.firebase.iid;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.iid.IMessengerCompat;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseIidMessengerCompat.class */
public class FirebaseIidMessengerCompat implements Parcelable {
    public static final Parcelable.Creator<FirebaseIidMessengerCompat> CREATOR = new Parcelable.Creator<FirebaseIidMessengerCompat>() { // from class: com.google.firebase.iid.FirebaseIidMessengerCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirebaseIidMessengerCompat createFromParcel(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                return new FirebaseIidMessengerCompat(readStrongBinder);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirebaseIidMessengerCompat[] newArray(int i) {
            return new FirebaseIidMessengerCompat[i];
        }
    };
    Messenger messenger;
    IMessengerCompat messengerCompat;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseIidMessengerCompat$HandleOldParcelNameClassLoader.class */
    public static final class HandleOldParcelNameClassLoader extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (!FirebaseInstanceId.isDebugLogEnabled()) {
                return FirebaseIidMessengerCompat.class;
            }
            Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
            return FirebaseIidMessengerCompat.class;
        }
    }

    @KeepForSdk
    public FirebaseIidMessengerCompat(Handler handler) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.messenger = new Messenger(handler);
        } else {
            this.messengerCompat = new IMessengerCompat.Impl(handler);
        }
    }

    public FirebaseIidMessengerCompat(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.messenger = new Messenger(iBinder);
        } else {
            this.messengerCompat = new IMessengerCompat.Proxy(iBinder);
        }
    }

    public static int getSendingUid(Message message) {
        return Build.VERSION.SDK_INT >= 21 ? getSendingUidNew(message) : message.arg2;
    }

    @TargetApi(21)
    private static int getSendingUidNew(Message message) {
        return message.sendingUid;
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
            return getBinder().equals(((FirebaseIidMessengerCompat) obj).getBinder());
        } catch (ClassCastException e) {
            return false;
        }
    }

    @KeepForSdk
    public IBinder getBinder() {
        Messenger messenger = this.messenger;
        return messenger != null ? messenger.getBinder() : this.messengerCompat.asBinder();
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    public void send(Message message) throws RemoteException {
        Messenger messenger = this.messenger;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.messengerCompat.send(message);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.messenger;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.messengerCompat.asBinder());
        }
    }
}
