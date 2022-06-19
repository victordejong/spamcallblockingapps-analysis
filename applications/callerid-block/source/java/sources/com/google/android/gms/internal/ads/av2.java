package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.p071t.AbstractC1503a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/av2.class */
public final class av2 {

    /* renamed from: a */
    private AbstractC2007w f6087a;

    /* renamed from: b */
    private final Context f6088b;

    /* renamed from: c */
    private final String f6089c;

    /* renamed from: d */
    private final C1932s1 f6090d;

    /* renamed from: e */
    private final int f6091e;

    /* renamed from: f */
    private final AbstractC1503a.a f6092f;

    /* renamed from: g */
    private final de f6093g = new de();

    /* renamed from: h */
    private final sz2 f6094h = sz2.f8580a;

    public av2(Context context, String str, C1932s1 c1932s1, int i, AbstractC1503a.a aVar) {
        this.f6088b = context;
        this.f6089c = str;
        this.f6090d = c1932s1;
        this.f6091e = i;
        this.f6092f = aVar;
    }

    /* renamed from: a */
    public final void m8068a() {
        try {
            this.f6087a = m03.m6635b().m6893a(this.f6088b, zzyx.B(), this.f6089c, this.f6093g);
            zzzd zzzdVar = new zzzd(this.f6091e);
            AbstractC2007w abstractC2007w = this.f6087a;
            if (abstractC2007w == null) {
                return;
            }
            abstractC2007w.m5147i2(zzzdVar);
            this.f6087a.m5141o3(new mu2(this.f6092f, this.f6089c));
            this.f6087a.m5137q0(this.f6094h.m5551a(this.f6088b, this.f6090d));
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }
}
