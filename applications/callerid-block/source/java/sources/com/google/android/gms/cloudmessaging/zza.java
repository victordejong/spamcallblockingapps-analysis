package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.cloudmessaging.AbstractC1526a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zza.class */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new C1529d();

    /* renamed from: b */
    private Messenger f5801b;

    /* renamed from: c */
    private AbstractC1526a f5802c;

    /* renamed from: com.google.android.gms.cloudmessaging.zza$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zza$a.class */
    public static final class C1545a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) {
            if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
                if (!(Log.isLoggable("CloudMessengerCompat", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("CloudMessengerCompat", 3)))) {
                    return zza.class;
                }
                Log.d("CloudMessengerCompat", "Using renamed FirebaseIidMessengerCompat class");
                return zza.class;
            }
            return super.loadClass(str, z);
        }
    }

    public zza(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f5801b = new Messenger(iBinder);
        } else {
            this.f5802c = new AbstractC1526a.a(iBinder);
        }
    }

    /* renamed from: a */
    private final IBinder m8473a() {
        Messenger messenger = this.f5801b;
        return messenger != null ? messenger.getBinder() : this.f5802c.asBinder();
    }

    /* renamed from: b */
    public final void m8472b(Message message) {
        Messenger messenger = this.f5801b;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f5802c.m8509x2(message);
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
            return m8473a().equals(((zza) obj).m8473a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m8473a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f5801b;
        parcel.writeStrongBinder(messenger != null ? messenger.getBinder() : this.f5802c.asBinder());
    }
}
