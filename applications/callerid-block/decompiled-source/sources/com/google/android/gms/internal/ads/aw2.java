package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aw2.class */
public final class aw2 {

    /* renamed from: a */
    ok2 f6095a;

    /* renamed from: b */
    boolean f6096b;

    public aw2() {
    }

    public aw2(Context context) {
        C1842m3.m6600a(context);
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7283L2)).booleanValue()) {
            try {
                this.f6095a = (ok2) C1947so.m5642a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", xv2.a);
                b.g3(context);
                this.f6095a.m6313U2(b.g3(context), "GMA_SDK");
                this.f6096b = true;
            } catch (RemoteException | zzbbn | NullPointerException e) {
                C1894po.m6185a("Cannot dynamite load clearcut");
            }
        }
    }
}
