package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ui */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ui.class */
public abstract class AbstractBinderC12959ui extends dvd implements AbstractC12956uf {
    public AbstractBinderC12959ui() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    /* renamed from: a */
    public static AbstractC12956uf m14105a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof AbstractC12956uf ? (AbstractC12956uf) queryLocalInterface : new C12958uh(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo14116a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 2:
                mo14115a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                mo14113b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 4:
                mo14111c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 5:
                mo14110d(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 6:
                mo14109e(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 7:
                mo14114a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzavy) dvc.m15675a(parcel, zzavy.CREATOR));
                break;
            case 8:
                mo14108f(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 9:
                mo14112b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                mo14107g(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 11:
                mo14106h(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 12:
                mo14117a((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
