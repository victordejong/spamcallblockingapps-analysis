package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyy.class */
public final class zzcyy {

    /* renamed from: a */
    public final ConcurrentHashMap<String, zzaph> f26776a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public final zzcku f26777b;

    public zzcyy(zzcku zzckuVar) {
        this.f26777b = zzckuVar;
    }

    /* renamed from: a */
    public final void m13759a(String str) {
        try {
            this.f26776a.put(str, this.f26777b.m14104a(str));
        } catch (RemoteException e) {
            zzbbq.m15855b("Couldn't create RTB adapter : ", e);
        }
    }

    /* renamed from: b */
    public final zzaph m13758b(String str) {
        if (this.f26776a.containsKey(str)) {
            return this.f26776a.get(str);
        }
        return null;
    }
}
