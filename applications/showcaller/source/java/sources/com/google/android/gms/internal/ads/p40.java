package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p40.class */
public abstract class p40 extends BinderC6649k2 implements q40 {
    /* renamed from: E6 */
    public static q40 m12380E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
        return queryLocalInterface instanceof q40 ? (q40) queryLocalInterface : new o40(iBinder);
    }
}
