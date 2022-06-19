package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.BinderC13725b;
import com.google.android.gms.internal.wearable.C13726c;
/* renamed from: com.google.android.gms.wearable.internal.bk */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bk.class */
public abstract class AbstractBinderC14269bk extends BinderC13725b implements AbstractC14268bj {
    public AbstractBinderC14269bk() {
        super("com.google.android.gms.wearable.internal.IWearableListener");
    }

    @Override // com.google.android.gms.internal.wearable.BinderC13725b
    /* renamed from: a */
    public final boolean mo11417a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 1:
                mo11384a((DataHolder) C13726c.m12279a(parcel, DataHolder.CREATOR));
                return true;
            case 2:
                mo11381a((zzfe) C13726c.m12279a(parcel, zzfe.CREATOR));
                return true;
            case 3:
                mo11380a((zzfo) C13726c.m12279a(parcel, zzfo.CREATOR));
                return true;
            case 4:
                mo11375b((zzfo) C13726c.m12279a(parcel, zzfo.CREATOR));
                return true;
            case 5:
                mo11377a(parcel.createTypedArrayList(zzfo.CREATOR));
                return true;
            case 6:
                mo11378a((zzl) C13726c.m12279a(parcel, zzl.CREATOR));
                return true;
            case 7:
                mo11382a((zzaw) C13726c.m12279a(parcel, zzaw.CREATOR));
                return true;
            case 8:
                mo11383a((zzah) C13726c.m12279a(parcel, zzah.CREATOR));
                return true;
            case 9:
                mo11379a((zzi) C13726c.m12279a(parcel, zzi.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
