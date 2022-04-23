package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxv.class */
public abstract class zzxv extends zzgt implements zzxs {
    public zzxv() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                initialize();
                parcel2.writeNoException();
                return true;
            case 2:
                mo10934a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                mo10925p(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                mo10927g(zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                mo10933a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo10929b(parcel.readString(), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float y0 = mo10923y0();
                parcel2.writeNoException();
                parcel2.writeFloat(y0);
                return true;
            case 8:
                boolean b2 = mo10928b2();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, b2);
                return true;
            case 9:
                String n1 = mo10926n1();
                parcel2.writeNoException();
                parcel2.writeString(n1);
                return true;
            case 10:
                mo10924q(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo10930a(zzane.m16637a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                mo10931a(zzaiw.m16733a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzaiq> S1 = mo10935S1();
                parcel2.writeNoException();
                parcel2.writeTypedList(S1);
                return true;
            case 14:
                mo10932a((zzaae) zzgw.m12080a(parcel, zzaae.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                mo10937J1();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
