package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzm.class */
public abstract class dzm extends dkl implements dzn {
    public dzm() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dzn] */
    /* renamed from: a */
    public static dzn m8131a(IBinder iBinder) {
        dzq dzqVar;
        if (iBinder == null) {
            dzqVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            dzqVar = queryLocalInterface instanceof dzn ? (dzn) queryLocalInterface : new dzq(iBinder);
        }
        return dzqVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        eaw eawVar;
        dzt dztVar;
        eab eabVar;
        dzb dzbVar;
        dzy dzyVar;
        dzc dzcVar;
        boolean z;
        switch (i) {
            case 1:
                AbstractC2731a a = mo7967a();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 2:
                mo7947b();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                boolean c = mo7944c();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, c);
                z = true;
                break;
            case 4:
                boolean a2 = mo7965a((dya) dkk.m9323a(parcel, dya.CREATOR));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, a2);
                z = true;
                break;
            case 5:
                mo7943d();
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7942e();
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    dzcVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    dzcVar = queryLocalInterface instanceof dza ? (dza) queryLocalInterface : new dzc(readStrongBinder);
                }
                mo7961a(dzcVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    dzyVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    dzyVar = queryLocalInterface2 instanceof dzw ? (dzw) queryLocalInterface2 : new dzy(readStrongBinder2);
                }
                mo7959a(dzyVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7940g();
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7939h();
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7938i();
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                dyd j = mo7937j();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, j);
                z = true;
                break;
            case 13:
                mo7964a((dyd) dkk.m9323a(parcel, dyd.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                mo7953a(BinderC3381oh.m7360a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                mo7952a(BinderC3387on.m7358a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                z = false;
                break;
            case 18:
                String k = mo7936k();
                parcel2.writeNoException();
                parcel2.writeString(k);
                z = true;
                break;
            case 19:
                mo7950a(AbstractBinderC3616x.m6843a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    dzbVar = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    dzbVar = queryLocalInterface3 instanceof dyz ? (dyz) queryLocalInterface3 : new dzb(readStrongBinder3);
                }
                mo7962a(dzbVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    eabVar = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    eabVar = queryLocalInterface4 instanceof eac ? (eac) queryLocalInterface4 : new eab(readStrongBinder4);
                }
                mo7958a(eabVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 22:
                mo7948a(dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 23:
                boolean q = mo7930q();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, q);
                z = true;
                break;
            case 24:
                mo7951a(AbstractBinderC3459re.m7266a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 25:
                mo7949a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 26:
                eba r = mo7929r();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, r);
                z = true;
                break;
            case 29:
                mo7954a((ecn) dkk.m9323a(parcel, ecn.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 30:
                mo7956a((ebg) dkk.m9323a(parcel, ebg.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 31:
                String n = mo7933n();
                parcel2.writeNoException();
                parcel2.writeString(n);
                z = true;
                break;
            case 32:
                dzw o = mo7932o();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, o);
                z = true;
                break;
            case 33:
                dza p = mo7931p();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, p);
                z = true;
                break;
            case 34:
                mo7945b(dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 35:
                String l = mo7935l();
                parcel2.writeNoException();
                parcel2.writeString(l);
                z = true;
                break;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    dztVar = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    dztVar = queryLocalInterface5 instanceof dzr ? (dzr) queryLocalInterface5 : new dzt(readStrongBinder5);
                }
                mo7960a(dztVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 37:
                Bundle f = mo7941f();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, f);
                z = true;
                break;
            case 38:
                mo7946b(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 39:
                mo7963a((dyk) dkk.m9323a(parcel, dyk.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 40:
                mo7966a(dvh.m8510a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 41:
                eav m = mo7934m();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, m);
                z = true;
                break;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    eawVar = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    eawVar = queryLocalInterface6 instanceof eau ? (eau) queryLocalInterface6 : new eaw(readStrongBinder6);
                }
                mo7957a(eawVar);
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
