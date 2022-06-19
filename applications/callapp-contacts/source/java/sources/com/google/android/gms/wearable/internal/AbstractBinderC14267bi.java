package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.BinderC13725b;
import com.google.android.gms.internal.wearable.C13726c;
/* renamed from: com.google.android.gms.wearable.internal.bi */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bi.class */
public abstract class AbstractBinderC14267bi extends BinderC13725b implements AbstractC14266bh {
    public AbstractBinderC14267bi() {
        super("com.google.android.gms.wearable.internal.IWearableCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.BinderC13725b
    /* renamed from: a */
    public final boolean mo11417a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 2:
                C13726c.m12279a(parcel, zzdw.CREATOR);
                mo11434a();
                break;
            case 3:
                C13726c.m12279a(parcel, zzfu.CREATOR);
                mo11429f();
                break;
            case 4:
                C13726c.m12279a(parcel, zzec.CREATOR);
                mo11428g();
                break;
            case 5:
                C13726c.m12279a(parcel, DataHolder.CREATOR);
                mo11427h();
                break;
            case 6:
                C13726c.m12279a(parcel, zzdg.CREATOR);
                mo11426i();
                break;
            case 7:
                mo11390a((zzga) C13726c.m12279a(parcel, zzga.CREATOR));
                break;
            case 8:
                C13726c.m12279a(parcel, zzee.CREATOR);
                mo11425j();
                break;
            case 9:
                C13726c.m12279a(parcel, zzeg.CREATOR);
                mo11424k();
                break;
            case 10:
                C13726c.m12279a(parcel, zzea.CREATOR);
                mo11423l();
                break;
            case 11:
                mo11392a((Status) C13726c.m12279a(parcel, Status.CREATOR));
                break;
            case 12:
                C13726c.m12279a(parcel, zzge.CREATOR);
                mo11421n();
                break;
            case 13:
                C13726c.m12279a(parcel, zzdy.CREATOR);
                mo11433b();
                break;
            case 14:
                C13726c.m12279a(parcel, zzfq.CREATOR);
                mo11422m();
                break;
            case 15:
                mo11397a((zzbt) C13726c.m12279a(parcel, zzbt.CREATOR));
                break;
            case 16:
                mo11396b((zzbt) C13726c.m12279a(parcel, zzbt.CREATOR));
                break;
            case 17:
                mo11394a((zzdm) C13726c.m12279a(parcel, zzdm.CREATOR));
                break;
            case 18:
                mo11393a((zzdo) C13726c.m12279a(parcel, zzdo.CREATOR));
                break;
            case 19:
                mo11389a((zzbn) C13726c.m12279a(parcel, zzbn.CREATOR));
                break;
            case 20:
                mo11391a((zzbp) C13726c.m12279a(parcel, zzbp.CREATOR));
                break;
            case 21:
            case 24:
            case 25:
            default:
                return false;
            case 22:
                mo11395a((zzdk) C13726c.m12279a(parcel, zzdk.CREATOR));
                break;
            case 23:
                C13726c.m12279a(parcel, zzdi.CREATOR);
                mo11420o();
                break;
            case 26:
                C13726c.m12279a(parcel, zzf.CREATOR);
                mo11419p();
                break;
            case 27:
                C13726c.m12279a(parcel, zzfy.CREATOR);
                mo11418q();
                break;
            case 28:
                C13726c.m12279a(parcel, zzdr.CREATOR);
                mo11432c();
                break;
            case 29:
                C13726c.m12279a(parcel, zzdv.CREATOR);
                mo11430e();
                break;
            case 30:
                C13726c.m12279a(parcel, zzdt.CREATOR);
                mo11431d();
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
