package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.uz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uz.class */
public abstract class AbstractBinderC7052uz extends BinderC6649k2 implements AbstractC7089vz {
    public AbstractBinderC7052uz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                AbstractC6253a mo9830b = mo9830b();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9830b);
                return true;
            case 3:
                String mo9829c = mo9829c();
                parcel2.writeNoException();
                parcel2.writeString(mo9829c);
                return true;
            case 4:
                List mo9827e = mo9827e();
                parcel2.writeNoException();
                parcel2.writeList(mo9827e);
                return true;
            case 5:
                String mo9831a = mo9831a();
                parcel2.writeNoException();
                parcel2.writeString(mo9831a);
                return true;
            case 6:
                AbstractC6533gz mo9828d = mo9828d();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9828d);
                return true;
            case 7:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 8:
                String mo9826f = mo9826f();
                parcel2.writeNoException();
                parcel2.writeString(mo9826f);
                return true;
            case 9:
                Bundle zzi = zzi();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, zzi);
                return true;
            case 10:
                mo9825g();
                parcel2.writeNoException();
                return true;
            case 11:
                AbstractC6640ju mo9824h = mo9824h();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9824h);
                return true;
            case 12:
                mo9832Q3((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean mo9820s3 = mo9820s3((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo9820s3);
                return true;
            case 14:
                mo9833L((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                AbstractC7199yy mo9821n = mo9821n();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9821n);
                return true;
            case 16:
                AbstractC6253a mo9822l = mo9822l();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9822l);
                return true;
            case 17:
                String mo9823k = mo9823k();
                parcel2.writeNoException();
                parcel2.writeString(mo9823k);
                return true;
            default:
                return false;
        }
    }
}
