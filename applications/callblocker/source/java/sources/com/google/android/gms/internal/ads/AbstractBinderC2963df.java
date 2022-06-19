package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.df */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/df.class */
public abstract class AbstractBinderC2963df extends dkl implements AbstractC2964dg {
    public AbstractBinderC2963df() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dg] */
    /* renamed from: a */
    public static AbstractC2964dg m9852a(IBinder iBinder) {
        C2998di c2998di;
        if (iBinder == null) {
            c2998di = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
            c2998di = queryLocalInterface instanceof AbstractC2964dg ? (AbstractC2964dg) queryLocalInterface : new C2998di(iBinder);
        }
        return c2998di;
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
            mo7862a(c2896ct);
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
