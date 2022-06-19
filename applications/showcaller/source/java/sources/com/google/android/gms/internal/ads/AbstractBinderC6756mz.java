package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.mz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mz.class */
public abstract class AbstractBinderC6756mz extends BinderC6649k2 implements AbstractC6793nz {
    /* renamed from: E6 */
    public static AbstractC6793nz m13045E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof AbstractC6793nz ? (AbstractC6793nz) queryLocalInterface : new C6719lz(iBinder);
    }
}
