package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dja.class */
public final class dja extends djz {

    /* renamed from: d */
    private final Activity f14466d;

    /* renamed from: e */
    private final View f14467e;

    public dja(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2, View view, Activity activity) {
        super(dinVar, str, str2, c2799a, i, 62);
        this.f14467e = view;
        this.f14466d = activity;
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (this.f14467e == null) {
            return;
        }
        boolean booleanValue = ((Boolean) dyx.m8158e().m7876a(edi.f16366aY)).booleanValue();
        Object[] objArr = (Object[]) this.f14502c.invoke(null, this.f14467e, this.f14466d, Boolean.valueOf(booleanValue));
        synchronized (this.f14501b) {
            this.f14501b.m12597E(((Long) objArr[0]).longValue());
            this.f14501b.m12596F(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.f14501b.m12568h((String) objArr[2]);
            }
        }
    }
}
