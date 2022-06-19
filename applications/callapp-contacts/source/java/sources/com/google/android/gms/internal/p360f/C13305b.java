package com.google.android.gms.internal.p360f;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.List;
/* renamed from: com.google.android.gms.internal.f.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/b.class */
public final class C13305b extends C13308e implements AbstractC13307d {
    public C13305b(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final int mo13367a(int i, String str, String str2) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(i);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        Parcel m13356a = m13356a(1, m13357a);
        int readInt = m13356a.readInt();
        m13356a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final Bundle mo13366a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(i);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        m13357a.writeString(str3);
        m13357a.writeString(null);
        C13310g.m13354a(m13357a, bundle);
        Parcel m13356a = m13356a(8, m13357a);
        Bundle bundle2 = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final Bundle mo13365a(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(3);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        C13310g.m13354a(m13357a, bundle);
        Parcel m13356a = m13356a(2, m13357a);
        Bundle bundle2 = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final Bundle mo13364a(String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(10);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        C13310g.m13354a(m13357a, bundle);
        C13310g.m13354a(m13357a, bundle2);
        Parcel m13356a = m13356a(901, m13357a);
        Bundle bundle3 = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle3;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final Bundle mo13363a(String str, String str2, String str3) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(3);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        m13357a.writeString(str3);
        m13357a.writeString(null);
        Parcel m13356a = m13356a(3, m13357a);
        Bundle bundle = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final Bundle mo13362a(String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(9);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        m13357a.writeString(str3);
        C13310g.m13354a(m13357a, bundle);
        Parcel m13356a = m13356a(11, m13357a);
        Bundle bundle2 = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: a */
    public final Bundle mo13361a(String str, List<String> list, String str2) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(5);
        m13357a.writeString(str);
        m13357a.writeStringList(list);
        m13357a.writeString(str2);
        m13357a.writeString("subs");
        m13357a.writeString(null);
        Parcel m13356a = m13356a(7, m13357a);
        Bundle bundle = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: b */
    public final Bundle mo13360b(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(8);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        m13357a.writeString("subs");
        C13310g.m13354a(m13357a, bundle);
        Parcel m13356a = m13356a(EventTypeExtended.EVENT_TYPE_EXTENDED_BURL_VALUE, m13357a);
        Bundle bundle2 = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: b */
    public final Bundle mo13359b(String str, String str2, String str3) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(3);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        m13357a.writeString(str3);
        Parcel m13356a = m13356a(4, m13357a);
        Bundle bundle = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.p360f.AbstractC13307d
    /* renamed from: c */
    public final Bundle mo13358c(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel m13357a = m13357a();
        m13357a.writeInt(9);
        m13357a.writeString(str);
        m13357a.writeString(str2);
        C13310g.m13354a(m13357a, bundle);
        Parcel m13356a = m13356a(902, m13357a);
        Bundle bundle2 = (Bundle) C13310g.m13355a(m13356a, Bundle.CREATOR);
        m13356a.recycle();
        return bundle2;
    }
}
