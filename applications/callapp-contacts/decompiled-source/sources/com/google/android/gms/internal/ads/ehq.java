package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehq.class */
public final class ehq {

    /* renamed from: a  reason: collision with root package name */
    dvg f27849a;

    /* renamed from: b  reason: collision with root package name */
    boolean f27850b;

    public ehq() {
    }

    public ehq(Context context) {
        aq.a(context);
        if (((Boolean) ekb.e().a(aq.cN)).booleanValue()) {
            try {
                this.f27849a = (dvg) yz.a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", ehs.f27851a);
                d.a(context);
                this.f27849a.a(d.a(context), "GMA_SDK");
                this.f27850b = true;
            } catch (RemoteException | zzbap | NullPointerException e) {
                za.zzdz("Cannot dynamite load clearcut");
            }
        }
    }

    public ehq(Context context, String str, String str2) {
        aq.a(context);
        try {
            this.f27849a = (dvg) yz.a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", ehp.f27848a);
            d.a(context);
            this.f27849a.b(d.a(context), str);
            this.f27850b = true;
        } catch (RemoteException | zzbap | NullPointerException e) {
            za.zzdz("Cannot dynamite load clearcut");
        }
    }

    public final ehu a(byte[] bArr) {
        return new ehu(this, bArr);
    }
}
