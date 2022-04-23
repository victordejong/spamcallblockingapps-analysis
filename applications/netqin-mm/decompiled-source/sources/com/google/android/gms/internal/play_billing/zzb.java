package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzb.class */
public final class zzb extends zze implements zzd {
    public zzb(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final int mo9439a(int i, String str, String str2) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(i);
        w.writeString(str);
        w.writeString(str2);
        Parcel a = m9429a(1, w);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9438a(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(9);
        w.writeString(str);
        w.writeString(str2);
        zzg.m9426a(w, bundle);
        Parcel a = m9429a(902, w);
        Bundle bundle2 = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9437a(int i, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(10);
        w.writeString(str);
        w.writeString(str2);
        zzg.m9426a(w, bundle);
        zzg.m9426a(w, bundle2);
        Parcel a = m9429a(901, w);
        Bundle bundle3 = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle3;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9436a(int i, String str, String str2, String str3) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(3);
        w.writeString(str);
        w.writeString(str2);
        w.writeString(str3);
        Parcel a = m9429a(4, w);
        Bundle bundle = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9435a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(9);
        w.writeString(str);
        w.writeString(str2);
        w.writeString(str3);
        zzg.m9426a(w, bundle);
        Parcel a = m9429a(11, w);
        Bundle bundle2 = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9434a(int i, String str, String str2, String str3, String str4) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(3);
        w.writeString(str);
        w.writeString(str2);
        w.writeString(str3);
        w.writeString(null);
        Parcel a = m9429a(3, w);
        Bundle bundle = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9433a(int i, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(i);
        w.writeString(str);
        w.writeString(str2);
        w.writeString(str3);
        w.writeString(null);
        zzg.m9426a(w, bundle);
        Parcel a = m9429a(8, w);
        Bundle bundle2 = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: a */
    public final Bundle mo9432a(int i, String str, List<String> list, String str2, String str3, String str4) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(5);
        w.writeString(str);
        w.writeStringList(list);
        w.writeString(str2);
        w.writeString("subs");
        w.writeString(null);
        Parcel a = m9429a(7, w);
        Bundle bundle = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: b */
    public final int mo9431b(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(7);
        w.writeString(str);
        w.writeString(str2);
        zzg.m9426a(w, bundle);
        Parcel a = m9429a(10, w);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    /* renamed from: c */
    public final Bundle mo9430c(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel w = m9428w();
        w.writeInt(3);
        w.writeString(str);
        w.writeString(str2);
        zzg.m9426a(w, bundle);
        Parcel a = m9429a(2, w);
        Bundle bundle2 = (Bundle) zzg.m9427a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }
}
