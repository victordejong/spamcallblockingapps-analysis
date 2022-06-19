package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
/* renamed from: com.google.firebase.iid.as */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/as.class */
public class C4958as implements Parcelable {
    public static final Parcelable.Creator<C4958as> CREATOR = new C4957ar();

    /* renamed from: a */
    private Messenger f21101a;

    /* renamed from: b */
    private AbstractC4973bf f21102b;

    /* renamed from: com.google.firebase.iid.as$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/as$a.class */
    public static final class C4959a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) {
            Class<?> loadClass;
            if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
                if (FirebaseInstanceId.m1987f()) {
                    Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
                }
                loadClass = C4958as.class;
            } else {
                loadClass = super.loadClass(str, z);
            }
            return loadClass;
        }
    }

    public C4958as(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f21101a = new Messenger(iBinder);
        } else {
            this.f21102b = new C4972be(iBinder);
        }
    }

    /* renamed from: a */
    private final IBinder m1957a() {
        return this.f21101a != null ? this.f21101a.getBinder() : this.f21102b.asBinder();
    }

    /* renamed from: a */
    public final void m1956a(Message message) {
        if (this.f21101a != null) {
            this.f21101a.send(message);
        } else {
            this.f21102b.mo1940a(message);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj == null) {
            z = false;
        } else {
            try {
                z = m1957a().equals(((C4958as) obj).m1957a());
            } catch (ClassCastException e) {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return m1957a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f21101a != null) {
            parcel.writeStrongBinder(this.f21101a.getBinder());
        } else {
            parcel.writeStrongBinder(this.f21102b.asBinder());
        }
    }
}
