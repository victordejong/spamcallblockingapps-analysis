package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.cloudmessaging.AbstractC5954a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zza.class */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new C5958d();

    /* renamed from: d */
    private Messenger f19145d;

    /* renamed from: e */
    private AbstractC5954a f19146e;

    /* renamed from: com.google.android.gms.cloudmessaging.zza$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zza$a.class */
    public static final class C5981a extends ClassLoader {
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
            this.f19145d = new Messenger(iBinder);
        } else {
            this.f19146e = new AbstractC5954a.C5955a(iBinder);
        }
    }

    /* renamed from: a */
    private final IBinder m17508a() {
        Messenger messenger = this.f19145d;
        return messenger != null ? messenger.getBinder() : this.f19146e.asBinder();
    }

    /* renamed from: b */
    public final void m17507b(Message message) {
        Messenger messenger = this.f19145d;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f19146e.mo17544x1(message);
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
            return m17508a().equals(((zza) obj).m17508a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return m17508a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.f19145d;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f19146e.asBinder());
        }
    }
}
