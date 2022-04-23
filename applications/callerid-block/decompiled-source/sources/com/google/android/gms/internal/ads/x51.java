package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/x51.class */
public final class x51 {

    /* renamed from: a */
    private final ConcurrentHashMap<String, AbstractC1752gg> f9086a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private final fp0 f9087b;

    public x51(fp0 fp0Var) {
        this.f9087b = fp0Var;
    }

    /* renamed from: a */
    public final void m4966a(String str) {
        try {
            this.f9086a.put(str, this.f9087b.m7468c(str));
        } catch (RemoteException e) {
            C1894po.m6182d("Couldn't create RTB adapter : ", e);
        }
    }

    @CheckForNull
    /* renamed from: b */
    public final AbstractC1752gg m4965b(String str) {
        if (this.f9086a.containsKey(str)) {
            return this.f9086a.get(str);
        }
        return null;
    }
}
