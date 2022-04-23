package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import p081h.p203i.p325c.p364t.AbstractC9904s;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseIidMessengerCompat.class */
public class FirebaseIidMessengerCompat implements Parcelable {
    public static final Parcelable.Creator<FirebaseIidMessengerCompat> CREATOR = new C3670a();

    /* renamed from: a */
    public Messenger f7745a;

    /* renamed from: b */
    public AbstractC9904s f7746b;

    /* renamed from: com.google.firebase.iid.FirebaseIidMessengerCompat$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseIidMessengerCompat$a.class */
    public class C3670a implements Parcelable.Creator<FirebaseIidMessengerCompat> {
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
    }

    /* renamed from: com.google.firebase.iid.FirebaseIidMessengerCompat$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseIidMessengerCompat$b.class */
    public static final class C3671b extends ClassLoader {
        @Override // java.lang.ClassLoader
        public final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            FirebaseInstanceId.m31078k();
            return FirebaseIidMessengerCompat.class;
        }
    }

    public FirebaseIidMessengerCompat(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f7745a = new Messenger(iBinder);
        } else {
            this.f7746b = new AbstractC9904s.C9905a(iBinder);
        }
    }

    /* renamed from: a */
    public IBinder m31109a() {
        Messenger messenger = this.f7745a;
        return messenger != null ? messenger.getBinder() : this.f7746b.asBinder();
    }

    /* renamed from: a */
    public void m31108a(Message message) throws RemoteException {
        Messenger messenger = this.f7745a;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f7746b.mo13980a(message);
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
            return m31109a().equals(((FirebaseIidMessengerCompat) obj).m31109a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m31109a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f7745a;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f7746b.asBinder());
        }
    }
}
