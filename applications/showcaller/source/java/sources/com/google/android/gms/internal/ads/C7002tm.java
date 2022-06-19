package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.tm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tm.class */
public final class C7002tm {

    /* renamed from: a */
    AbstractC6286ab f30054a;

    /* renamed from: b */
    boolean f30055b;

    public C7002tm() {
    }

    public C7002tm(Context context) {
        C6679kw.m13770a(context);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25762o3)).booleanValue()) {
            try {
                this.f30054a = (AbstractC6286ab) hi0.m14638a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", C6891qm.f28558a);
                BinderC6255b.m16744m2(context);
                this.f30054a.mo8883D4(BinderC6255b.m16744m2(context), "GMA_SDK");
                this.f30055b = true;
            } catch (RemoteException | zzcgw | NullPointerException e) {
                ei0.m15469a("Cannot dynamite load clearcut");
            }
        }
    }
}
