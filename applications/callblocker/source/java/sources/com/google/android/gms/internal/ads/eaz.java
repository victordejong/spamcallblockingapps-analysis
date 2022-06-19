package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eaz.class */
public abstract class eaz extends dkl implements eba {
    public eaz() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eba] */
    /* renamed from: a */
    public static eba m8092a(IBinder iBinder) {
        ebc ebcVar;
        if (iBinder == null) {
            ebcVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            ebcVar = queryLocalInterface instanceof eba ? (eba) queryLocalInterface : new ebc(iBinder);
        }
        return ebcVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        ebd ebdVar;
        boolean z;
        switch (i) {
            case 1:
                mo7658a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7655b();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7656a(dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                boolean d = mo7653d();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, d);
                z = true;
                break;
            case 5:
                int e = mo7652e();
                parcel2.writeNoException();
                parcel2.writeInt(e);
                z = true;
                break;
            case 6:
                float f = mo7651f();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                z = true;
                break;
            case 7:
                float g = mo7650g();
                parcel2.writeNoException();
                parcel2.writeFloat(g);
                z = true;
                break;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ebdVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    ebdVar = queryLocalInterface instanceof ebb ? (ebb) queryLocalInterface : new ebd(readStrongBinder);
                }
                mo7657a(ebdVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                float i3 = mo7648i();
                parcel2.writeNoException();
                parcel2.writeFloat(i3);
                z = true;
                break;
            case 10:
                boolean j = mo7647j();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, j);
                z = true;
                break;
            case 11:
                ebb h = mo7649h();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, h);
                z = true;
                break;
            case 12:
                boolean k = mo7646k();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, k);
                z = true;
                break;
            case 13:
                mo7654c();
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
