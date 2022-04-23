package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oy.class */
public class oy {
    public static os a(String str) throws RemoteException {
        try {
            return new pb((RtbAdapter) Class.forName(str, false, oy.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
