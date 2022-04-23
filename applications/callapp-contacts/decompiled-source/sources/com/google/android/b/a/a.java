package com.google.android.b.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.a.b;
import com.google.android.a.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/b/a/a.class */
public interface a extends IInterface {

    /* renamed from: com.google.android.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/b/a/a$a.class */
    public static abstract class AbstractBinderC0409a extends b implements a {

        /* renamed from: com.google.android.b.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/b/a/a$a$a.class */
        public static final class C0410a extends com.google.android.a.a implements a {
            C0410a(IBinder iBinder) {
                super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            }

            @Override // com.google.android.b.a.a
            public final Bundle a(Bundle bundle) throws RemoteException {
                Parcel a2 = a();
                c.a(a2, bundle);
                Parcel a3 = a(a2);
                Bundle bundle2 = (Bundle) c.a(a3, Bundle.CREATOR);
                a3.recycle();
                return bundle2;
            }
        }

        public AbstractBinderC0409a() {
            super("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return queryLocalInterface instanceof a ? (a) queryLocalInterface : new C0410a(iBinder);
        }
    }

    Bundle a(Bundle bundle) throws RemoteException;
}
