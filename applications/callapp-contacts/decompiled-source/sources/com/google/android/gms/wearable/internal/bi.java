package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.b;
import com.google.android.gms.internal.wearable.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bi.class */
public abstract class bi extends b implements bh {
    public bi() {
        super("com.google.android.gms.wearable.internal.IWearableCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 2:
                c.a(parcel, zzdw.CREATOR);
                a();
                break;
            case 3:
                c.a(parcel, zzfu.CREATOR);
                f();
                break;
            case 4:
                c.a(parcel, zzec.CREATOR);
                g();
                break;
            case 5:
                c.a(parcel, DataHolder.CREATOR);
                h();
                break;
            case 6:
                c.a(parcel, zzdg.CREATOR);
                i();
                break;
            case 7:
                a((zzga) c.a(parcel, zzga.CREATOR));
                break;
            case 8:
                c.a(parcel, zzee.CREATOR);
                j();
                break;
            case 9:
                c.a(parcel, zzeg.CREATOR);
                k();
                break;
            case 10:
                c.a(parcel, zzea.CREATOR);
                l();
                break;
            case 11:
                a((Status) c.a(parcel, Status.CREATOR));
                break;
            case 12:
                c.a(parcel, zzge.CREATOR);
                n();
                break;
            case 13:
                c.a(parcel, zzdy.CREATOR);
                b();
                break;
            case 14:
                c.a(parcel, zzfq.CREATOR);
                m();
                break;
            case 15:
                a((zzbt) c.a(parcel, zzbt.CREATOR));
                break;
            case 16:
                b((zzbt) c.a(parcel, zzbt.CREATOR));
                break;
            case 17:
                a((zzdm) c.a(parcel, zzdm.CREATOR));
                break;
            case 18:
                a((zzdo) c.a(parcel, zzdo.CREATOR));
                break;
            case 19:
                a((zzbn) c.a(parcel, zzbn.CREATOR));
                break;
            case 20:
                a((zzbp) c.a(parcel, zzbp.CREATOR));
                break;
            case 21:
            case 24:
            case 25:
            default:
                return false;
            case 22:
                a((zzdk) c.a(parcel, zzdk.CREATOR));
                break;
            case 23:
                c.a(parcel, zzdi.CREATOR);
                o();
                break;
            case 26:
                c.a(parcel, zzf.CREATOR);
                p();
                break;
            case 27:
                c.a(parcel, zzfy.CREATOR);
                q();
                break;
            case 28:
                c.a(parcel, zzdr.CREATOR);
                c();
                break;
            case 29:
                c.a(parcel, zzdv.CREATOR);
                e();
                break;
            case 30:
                c.a(parcel, zzdt.CREATOR);
                d();
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
