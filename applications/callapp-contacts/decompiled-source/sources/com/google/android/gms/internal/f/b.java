package com.google.android.gms.internal.f;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/b.class */
public final class b extends e implements d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.f.d
    public final int a(int i, String str, String str2) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        a2.writeString(str);
        a2.writeString(str2);
        Parcel a3 = a(1, a2);
        int readInt = a3.readInt();
        a3.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        a2.writeString(null);
        g.a(a2, bundle);
        Parcel a3 = a(8, a2);
        Bundle bundle2 = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle a(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(3);
        a2.writeString(str);
        a2.writeString(str2);
        g.a(a2, bundle);
        Parcel a3 = a(2, a2);
        Bundle bundle2 = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle a(String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(10);
        a2.writeString(str);
        a2.writeString(str2);
        g.a(a2, bundle);
        g.a(a2, bundle2);
        Parcel a3 = a(901, a2);
        Bundle bundle3 = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle3;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle a(String str, String str2, String str3) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(3);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        a2.writeString(null);
        Parcel a3 = a(3, a2);
        Bundle bundle = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle a(String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(9);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        g.a(a2, bundle);
        Parcel a3 = a(11, a2);
        Bundle bundle2 = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle a(String str, List<String> list, String str2) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(5);
        a2.writeString(str);
        a2.writeStringList(list);
        a2.writeString(str2);
        a2.writeString("subs");
        a2.writeString(null);
        Parcel a3 = a(7, a2);
        Bundle bundle = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle b(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(8);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString("subs");
        g.a(a2, bundle);
        Parcel a3 = a(EventTypeExtended.EVENT_TYPE_EXTENDED_BURL_VALUE, a2);
        Bundle bundle2 = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle b(String str, String str2, String str3) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(3);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeString(str3);
        Parcel a3 = a(4, a2);
        Bundle bundle = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.f.d
    public final Bundle c(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(9);
        a2.writeString(str);
        a2.writeString(str2);
        g.a(a2, bundle);
        Parcel a3 = a(902, a2);
        Bundle bundle2 = (Bundle) g.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }
}
