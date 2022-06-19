package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.p262u.AbstractC5850a;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.gl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gl.class */
public final class C6519gl extends AbstractC5850a {

    /* renamed from: a */
    private final AbstractC6668kl f23384a;

    /* renamed from: b */
    private final String f23385b;

    /* renamed from: c */
    private final BinderC6556hl f23386c = new BinderC6556hl();

    /* renamed from: d */
    AbstractC5621i f23387d;

    public C6519gl(AbstractC6668kl abstractC6668kl, String str) {
        this.f23384a = abstractC6668kl;
        this.f23385b = str;
    }

    @Override // com.google.android.gms.ads.p262u.AbstractC5850a
    /* renamed from: b */
    public final void mo14914b(AbstractC5621i abstractC5621i) {
        this.f23387d = abstractC5621i;
        this.f23386c.m14597E6(abstractC5621i);
    }

    @Override // com.google.android.gms.ads.p262u.AbstractC5850a
    /* renamed from: c */
    public final void mo14913c(Activity activity) {
        try {
            this.f23384a.mo10481j1(BinderC6255b.m16744m2(activity), this.f23386c);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }
}
