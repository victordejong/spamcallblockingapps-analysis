package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f00.class */
public abstract class f00 extends BinderC6649k2 implements g00 {
    /* renamed from: E6 */
    public static g00 m15329E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
        return queryLocalInterface instanceof g00 ? (g00) queryLocalInterface : new e00(iBinder);
    }
}
