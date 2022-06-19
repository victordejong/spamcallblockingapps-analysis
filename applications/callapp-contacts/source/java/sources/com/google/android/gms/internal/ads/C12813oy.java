package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
/* renamed from: com.google.android.gms.internal.ads.oy */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oy.class */
public class C12813oy {
    /* renamed from: a */
    public static AbstractC12807os m14290a(String str) throws RemoteException {
        try {
            return new BinderC12817pb((RtbAdapter) Class.forName(str, false, C12813oy.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
