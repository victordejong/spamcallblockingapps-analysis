package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cu.class */
public abstract class AbstractBinderC2900cu extends dkl implements AbstractC2893cr {
    public AbstractBinderC2900cu() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.cr] */
    /* renamed from: a */
    public static AbstractC2893cr m10652a(IBinder iBinder) {
        C2896ct c2896ct;
        if (iBinder == null) {
            c2896ct = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            c2896ct = queryLocalInterface instanceof AbstractC2893cr ? (AbstractC2893cr) queryLocalInterface : new C2896ct(iBinder);
        }
        return c2896ct;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                String a = mo10715a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 2:
                AbstractC2844bu b = mo10712b(parcel.readString());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b);
                z = true;
                break;
            case 3:
                List<String> a2 = mo10717a();
                parcel2.writeNoException();
                parcel2.writeStringList(a2);
                z = true;
                break;
            case 4:
                String b2 = mo10714b();
                parcel2.writeNoException();
                parcel2.writeString(b2);
                z = true;
                break;
            case 5:
                mo10710c(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo10711c();
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                eba d = mo10709d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            case 8:
                mo10708e();
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                AbstractC2731a f = mo10707f();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, f);
                z = true;
                break;
            case 10:
                boolean a3 = mo10716a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, a3);
                z = true;
                break;
            case 11:
                AbstractC2731a g = mo10706g();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, g);
                z = true;
                break;
            case 12:
                boolean h = mo10705h();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, h);
                z = true;
                break;
            case 13:
                boolean i3 = mo10704i();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, i3);
                z = true;
                break;
            case 14:
                mo10713b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                mo10703j();
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
