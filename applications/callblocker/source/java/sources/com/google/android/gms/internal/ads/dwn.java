package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwn.class */
public final class dwn {

    /* renamed from: a */
    dko f15936a;

    /* renamed from: b */
    boolean f15937b;

    public dwn() {
    }

    public dwn(Context context) {
        edi.m7866a(context);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16481ch)).booleanValue()) {
            try {
                this.f15936a = (dko) C3644ya.m6755a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", dwq.f15941a);
                BinderC2734b.m13794a(context);
                this.f15936a.mo9315a(BinderC2734b.m13794a(context), "GMA_SDK");
                this.f15937b = true;
            } catch (RemoteException | zzazx | NullPointerException e) {
                C3645yb.m6751b("Cannot dynamite load clearcut");
            }
        }
    }

    public dwn(Context context, String str, String str2) {
        edi.m7866a(context);
        try {
            this.f15936a = (dko) C3644ya.m6755a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", dwr.f15942a);
            BinderC2734b.m13794a(context);
            this.f15936a.mo9314a(BinderC2734b.m13794a(context), str, null);
            this.f15937b = true;
        } catch (RemoteException | zzazx | NullPointerException e) {
            C3645yb.m6751b("Cannot dynamite load clearcut");
        }
    }

    /* renamed from: a */
    public final dws m8433a(byte[] bArr) {
        return new dws(this, bArr);
    }
}
