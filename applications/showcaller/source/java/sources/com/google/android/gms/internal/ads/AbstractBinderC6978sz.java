package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.sz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sz.class */
public abstract class AbstractBinderC6978sz extends BinderC6649k2 implements AbstractC7015tz {
    public AbstractBinderC6978sz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                AbstractC6253a mo10466b = mo10466b();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10466b);
                return true;
            case 3:
                String mo10465c = mo10465c();
                parcel2.writeNoException();
                parcel2.writeString(mo10465c);
                return true;
            case 4:
                List mo10463e = mo10463e();
                parcel2.writeNoException();
                parcel2.writeList(mo10463e);
                return true;
            case 5:
                String mo10467a = mo10467a();
                parcel2.writeNoException();
                parcel2.writeString(mo10467a);
                return true;
            case 6:
                AbstractC6533gz mo10464d = mo10464d();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10464d);
                return true;
            case 7:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 8:
                double mo10462f = mo10462f();
                parcel2.writeNoException();
                parcel2.writeDouble(mo10462f);
                return true;
            case 9:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 10:
                String mo10461g = mo10461g();
                parcel2.writeNoException();
                parcel2.writeString(mo10461g);
                return true;
            case 11:
                Bundle mo10460h = mo10460h();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo10460h);
                return true;
            case 12:
                mo10459i();
                parcel2.writeNoException();
                return true;
            case 13:
                AbstractC6640ju mo10458j = mo10458j();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10458j);
                return true;
            case 14:
                mo10468L((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean mo10455m0 = mo10455m0((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo10455m0);
                return true;
            case 16:
                mo10457j0((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                AbstractC7199yy mo10456k = mo10456k();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10456k);
                return true;
            case 18:
                AbstractC6253a mo10453s = mo10453s();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10453s);
                return true;
            case 19:
                String mo10454o = mo10454o();
                parcel2.writeNoException();
                parcel2.writeString(mo10454o);
                return true;
            default:
                return false;
        }
    }
}
