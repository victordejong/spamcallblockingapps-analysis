package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c00.class */
public abstract class c00 extends BinderC6649k2 implements d00 {
    /* renamed from: E6 */
    public static d00 m16170E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
        return queryLocalInterface instanceof d00 ? (d00) queryLocalInterface : new b00(iBinder);
    }
}
