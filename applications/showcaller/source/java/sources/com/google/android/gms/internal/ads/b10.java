package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b10.class */
public abstract class b10 extends BinderC6649k2 implements c10 {
    public b10() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        x00 x00Var;
        switch (i) {
            case 2:
                String mo16159a = mo16159a();
                parcel2.writeNoException();
                parcel2.writeString(mo16159a);
                return true;
            case 3:
                List mo16158d = mo16158d();
                parcel2.writeNoException();
                parcel2.writeList(mo16158d);
                return true;
            case 4:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 5:
                AbstractC6533gz mo16156f = mo16156f();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo16156f);
                return true;
            case 6:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 7:
                String mo16155g = mo16155g();
                parcel2.writeNoException();
                parcel2.writeString(mo16155g);
                return true;
            case 8:
                double mo16154h = mo16154h();
                parcel2.writeNoException();
                parcel2.writeDouble(mo16154h);
                return true;
            case 9:
                String mo16152i = mo16152i();
                parcel2.writeNoException();
                parcel2.writeString(mo16152i);
                return true;
            case 10:
                String mo16151j = mo16151j();
                parcel2.writeNoException();
                parcel2.writeString(mo16151j);
                return true;
            case 11:
                AbstractC6640ju mo16147m = mo16147m();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo16147m);
                return true;
            case 12:
                String mo16146n = mo16146n();
                parcel2.writeNoException();
                parcel2.writeString(mo16146n);
                return true;
            case 13:
                mo16149l();
                parcel2.writeNoException();
                return true;
            case 14:
                AbstractC7199yy mo16150k = mo16150k();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo16150k);
                return true;
            case 15:
                mo16157e5((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean mo16148l4 = mo16148l4((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo16148l4);
                return true;
            case 17:
                mo16139z3((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                AbstractC6253a zzu = zzu();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, zzu);
                return true;
            case 19:
                AbstractC6253a mo16141w = mo16141w();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo16141w);
                return true;
            case 20:
                Bundle mo16164G = mo16164G();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo16164G);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    x00Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    x00Var = queryLocalInterface instanceof z00 ? (z00) queryLocalInterface : new x00(readStrongBinder);
                }
                mo16144q1(x00Var);
                parcel2.writeNoException();
                return true;
            case 22:
                mo16142v();
                parcel2.writeNoException();
                return true;
            case 23:
                List mo16145q = mo16145q();
                parcel2.writeNoException();
                parcel2.writeList(mo16145q);
                return true;
            case 24:
                boolean mo16143u = mo16143u();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo16143u);
                return true;
            case 25:
                mo16161M1(AbstractBinderC6935rt.m11297E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                mo16153h4(AbstractBinderC6824ot.m12533E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                mo16163H();
                parcel2.writeNoException();
                return true;
            case 28:
                mo16162I();
                parcel2.writeNoException();
                return true;
            case 29:
                AbstractC6421dz mo16140z = mo16140z();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo16140z);
                return true;
            case 30:
                boolean mo16165F = mo16165F();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo16165F);
                return true;
            case 31:
                AbstractC6491fu mo16166D = mo16166D();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo16166D);
                return true;
            case 32:
                mo16160P1(AbstractBinderC6342bu.m16206E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
