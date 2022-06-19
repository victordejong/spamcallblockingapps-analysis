package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
/* renamed from: com.google.android.gms.internal.ads.mu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mu.class */
public class C3340mu {
    /* renamed from: a */
    public static AbstractC3333mn m7438a(String str) {
        try {
            return new BinderC3339mt((RtbAdapter) Class.forName(str, false, C3340mu.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
