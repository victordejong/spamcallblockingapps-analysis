package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaer.class */
public abstract class zzaer extends zzgt implements zzaes {
    public zzaer() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                IObjectWrapper v = mo14240v();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, v);
                return true;
            case 3:
                String e = mo14248e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 4:
                List i3 = mo14243i();
                parcel2.writeNoException();
                parcel2.writeList(i3);
                return true;
            case 5:
                String g = mo14245g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 6:
                zzaee q = mo14242q();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, q);
                return true;
            case 7:
                String f = mo14246f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                String D = mo14253D();
                parcel2.writeNoException();
                parcel2.writeString(D);
                return true;
            case 10:
                String s = mo14241s();
                parcel2.writeNoException();
                parcel2.writeString(s);
                return true;
            case 11:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, extras);
                return true;
            case 12:
                destroy();
                parcel2.writeNoException();
                return true;
            case 13:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 14:
                mo14251a((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean b = mo14250b((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, b);
                return true;
            case 16:
                mo14247e((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                zzadw d = mo14249d();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, d);
                return true;
            case 18:
                IObjectWrapper h = mo14244h();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, h);
                return true;
            case 19:
                String a = mo14252a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            default:
                return false;
        }
    }
}
