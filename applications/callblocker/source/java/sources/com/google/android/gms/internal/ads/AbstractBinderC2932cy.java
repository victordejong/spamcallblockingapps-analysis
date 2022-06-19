package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.cy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cy.class */
public abstract class AbstractBinderC2932cy extends dkl implements AbstractC2902cv {
    public AbstractBinderC2932cy() {
        super("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.cv] */
    /* renamed from: a */
    public static AbstractC2902cv m10408a(IBinder iBinder) {
        C2922cx c2922cx;
        if (iBinder == null) {
            c2922cx = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
            c2922cx = queryLocalInterface instanceof AbstractC2902cv ? (AbstractC2902cv) queryLocalInterface : new C2922cx(iBinder);
        }
        return c2922cx;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C2863cl c2863cl;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c2863cl = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                c2863cl = queryLocalInterface instanceof AbstractC2861cj ? (AbstractC2861cj) queryLocalInterface : new C2863cl(readStrongBinder);
            }
            mo8104a(c2863cl);
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
