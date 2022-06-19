package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p22.class */
public final class p22 {

    /* renamed from: a */
    private final ConcurrentHashMap<String, r90> f27817a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private final ol1 f27818b;

    public p22(ol1 ol1Var) {
        this.f27818b = ol1Var;
    }

    /* renamed from: a */
    public final void m12461a(String str) {
        try {
            this.f27817a.put(str, this.f27818b.m12596c(str));
        } catch (RemoteException e) {
            ei0.m15466d("Couldn't create RTB adapter : ", e);
        }
    }

    /* renamed from: b */
    public final r90 m12460b(String str) {
        if (this.f27817a.containsKey(str)) {
            return this.f27817a.get(str);
        }
        return null;
    }
}
