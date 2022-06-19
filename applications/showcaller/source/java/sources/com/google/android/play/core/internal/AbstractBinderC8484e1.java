package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.play.core.internal.e1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/e1.class */
public abstract class AbstractBinderC8484e1 extends BinderC8525x0 implements AbstractC8487f1 {
    public AbstractBinderC8484e1() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // com.google.android.play.core.internal.BinderC8525x0
    /* renamed from: c0 */
    protected final boolean mo3422c0(int i, Parcel parcel) {
        C8490g1 c8490g1;
        C8490g1 c8490g12;
        if (i == 2) {
            Bundle bundle = (Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c8490g1 = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                c8490g1 = queryLocalInterface instanceof AbstractC8493h1 ? (AbstractC8493h1) queryLocalInterface : new C8490g1(readStrongBinder);
            }
            mo3518Q2(bundle, c8490g1);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            Bundle bundle2 = (Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                c8490g12 = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                c8490g12 = queryLocalInterface2 instanceof AbstractC8493h1 ? (AbstractC8493h1) queryLocalInterface2 : new C8490g1(readStrongBinder2);
            }
            mo3517Y0(c8490g12);
            return true;
        }
    }
}
