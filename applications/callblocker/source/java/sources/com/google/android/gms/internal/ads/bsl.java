package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsl.class */
public final class bsl {

    /* renamed from: a */
    private final ConcurrentHashMap<String, AbstractC3333mn> f12160a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private final bfg f12161b;

    public bsl(bfg bfgVar) {
        this.f12161b = bfgVar;
    }

    /* renamed from: a */
    public final void m11675a(String str) {
        try {
            this.f12160a.put(str, this.f12161b.m12007a(str));
        } catch (RemoteException e) {
            C3556uu.m6748c("Couldn't create RTB adapter : ", e);
        }
    }

    @CheckForNull
    /* renamed from: b */
    public final AbstractC3333mn m11674b(String str) {
        return this.f12160a.containsKey(str) ? this.f12160a.get(str) : null;
    }
}
