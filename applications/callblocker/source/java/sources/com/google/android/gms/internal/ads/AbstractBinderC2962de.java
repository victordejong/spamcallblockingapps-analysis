package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.de */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/de.class */
public abstract class AbstractBinderC2962de extends dkl implements AbstractC2952db {
    public AbstractBinderC2962de() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.db] */
    /* renamed from: a */
    public static AbstractC2952db m10010a(IBinder iBinder) {
        C2961dd c2961dd;
        if (iBinder == null) {
            c2961dd = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
            c2961dd = queryLocalInterface instanceof AbstractC2952db ? (AbstractC2952db) queryLocalInterface : new C2961dd(iBinder);
        }
        return c2961dd;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C2896ct c2896ct;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c2896ct = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                c2896ct = queryLocalInterface instanceof AbstractC2893cr ? (AbstractC2893cr) queryLocalInterface : new C2896ct(readStrongBinder);
            }
            mo7968a(c2896ct, parcel.readString());
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
