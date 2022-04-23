package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapn.class */
public class zzapn {
    /* renamed from: a */
    public static zzaph m16485a(String str) throws RemoteException {
        try {
            return new zzapq((RtbAdapter) Class.forName(str, false, zzapn.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
