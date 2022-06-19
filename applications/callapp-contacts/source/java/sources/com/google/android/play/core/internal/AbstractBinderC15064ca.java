package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.ca */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ca.class */
public abstract class AbstractBinderC15064ca extends BinderC15050bn implements AbstractC15065cb {
    public AbstractBinderC15064ca() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // com.google.android.play.core.internal.BinderC15050bn
    /* renamed from: a */
    protected final boolean mo9515a(int i, Parcel parcel) throws RemoteException {
        C15066cc c15066cc;
        C15066cc c15066cc2;
        if (i == 2) {
            Bundle bundle = (Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c15066cc = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                c15066cc = queryLocalInterface instanceof AbstractC15067cd ? (AbstractC15067cd) queryLocalInterface : new C15066cc(readStrongBinder);
            }
            mo9520a(bundle, c15066cc);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            C15051bo.m9549a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                c15066cc2 = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                c15066cc2 = queryLocalInterface2 instanceof AbstractC15067cd ? (AbstractC15067cd) queryLocalInterface2 : new C15066cc(readStrongBinder2);
            }
            mo9519a(c15066cc2);
            return true;
        }
    }
}
