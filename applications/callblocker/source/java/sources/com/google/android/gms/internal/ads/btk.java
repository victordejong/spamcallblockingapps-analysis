package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btk.class */
public final class btk {

    /* renamed from: a */
    private final azg f12235a;

    /* renamed from: b */
    private final bte f12236b = new bte();

    /* renamed from: c */
    private final apv f12237c;

    public btk(azg azgVar) {
        this.f12235a = azgVar;
        this.f12237c = new apv(this.f12236b, this.f12235a.m12212e()) { // from class: com.google.android.gms.internal.ads.btj

            /* renamed from: a */
            private final bte f12233a;

            /* renamed from: b */
            private final AbstractC3179gv f12234b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12233a = bteVar;
                this.f12234b = m12212e;
            }

            @Override // com.google.android.gms.internal.ads.apv
            /* renamed from: a */
            public final void mo11258a(int i) {
                bte bteVar2 = this.f12233a;
                AbstractC3179gv abstractC3179gv = this.f12234b;
                bteVar2.mo11258a(i);
                if (abstractC3179gv != null) {
                    try {
                        abstractC3179gv.mo7806a(i);
                    } catch (RemoteException e) {
                        C3645yb.m6744e("#007 Could not call remote method.", e);
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public final axk m11641a() {
        return new axk(this.f12235a, this.f12236b.m11651i());
    }

    /* renamed from: a */
    public final void m11640a(dza dzaVar) {
        this.f12236b.m11653a(dzaVar);
    }

    /* renamed from: b */
    public final AbstractC2792app m11639b() {
        return this.f12236b;
    }

    /* renamed from: c */
    public final arg m11638c() {
        return this.f12236b;
    }

    /* renamed from: d */
    public final apv m11637d() {
        return this.f12237c;
    }

    /* renamed from: e */
    public final aqi m11636e() {
        return this.f12236b;
    }

    /* renamed from: f */
    public final dxs m11635f() {
        return this.f12236b;
    }
}
