package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehq.class */
public final class ehq {

    /* renamed from: a */
    dvg f49040a;

    /* renamed from: b */
    boolean f49041b;

    public ehq() {
    }

    public ehq(Context context) {
        C12187aq.m18474a(context);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42757cN)).booleanValue()) {
            try {
                this.f49040a = (dvg) C13086yz.m13904a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", ehs.f49042a);
                BinderC12129d.m18979a(context);
                this.f49040a.mo15667a(BinderC12129d.m18979a(context), "GMA_SDK");
                this.f49041b = true;
            } catch (RemoteException | zzbap | NullPointerException e) {
                C13088za.zzdz("Cannot dynamite load clearcut");
            }
        }
    }

    public ehq(Context context, String str, String str2) {
        C12187aq.m18474a(context);
        try {
            this.f49040a = (dvg) C13086yz.m13904a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", ehp.f49039a);
            BinderC12129d.m18979a(context);
            this.f49040a.mo15663b(BinderC12129d.m18979a(context), str);
            this.f49041b = true;
        } catch (RemoteException | zzbap | NullPointerException e) {
            C13088za.zzdz("Cannot dynamite load clearcut");
        }
    }

    /* renamed from: a */
    public final ehu m15042a(byte[] bArr) {
        return new ehu(this, bArr);
    }
}
