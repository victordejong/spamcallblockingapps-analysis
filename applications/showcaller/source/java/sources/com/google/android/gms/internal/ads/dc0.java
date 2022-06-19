package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.p266y.AbstractC5863c;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dc0.class */
public final class dc0 {

    /* renamed from: a */
    private static yg0 f21581a;

    /* renamed from: b */
    private final Context f21582b;

    /* renamed from: c */
    private final AdFormat f21583c;

    /* renamed from: d */
    private final C6862pu f21584d;

    public dc0(Context context, AdFormat adFormat, C6862pu c6862pu) {
        this.f21582b = context;
        this.f21583c = adFormat;
        this.f21584d = c6862pu;
    }

    /* renamed from: a */
    public static yg0 m15833a(Context context) {
        yg0 yg0Var;
        synchronized (dc0.class) {
            try {
                if (f21581a == null) {
                    f21581a = C7118wr.m9484b().m10185o(context, new p70());
                }
                yg0Var = f21581a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return yg0Var;
    }

    /* renamed from: b */
    public final void m15832b(AbstractC5863c abstractC5863c) {
        yg0 m15833a = m15833a(this.f21582b);
        if (m15833a == null) {
            abstractC5863c.mo17733a("Internal Error, query info generator is null.");
            return;
        }
        AbstractC6253a m16744m2 = BinderC6255b.m16744m2(this.f21582b);
        C6862pu c6862pu = this.f21584d;
        try {
            m15833a.mo8828w6(m16744m2, new zzcfr(null, this.f21583c.name(), null, c6862pu == null ? new C7043uq().m10258a() : C7154xq.f32156a.m9085a(this.f21582b, c6862pu)), new cc0(this, abstractC5863c));
        } catch (RemoteException e) {
            abstractC5863c.mo17733a("Internal Error.");
        }
    }
}
