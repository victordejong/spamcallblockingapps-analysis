package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.rm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rm.class */
public final class C6928rm {

    /* renamed from: a */
    private final byte[] f29034a;

    /* renamed from: b */
    private int f29035b;

    /* renamed from: c */
    final /* synthetic */ C7002tm f29036c;

    public /* synthetic */ C6928rm(C7002tm c7002tm, byte[] bArr, C6965sm c6965sm) {
        this.f29036c = c7002tm;
        this.f29034a = bArr;
    }

    /* renamed from: a */
    public final void m11382a() {
        synchronized (this) {
            try {
                C7002tm c7002tm = this.f29036c;
                if (!c7002tm.f30055b) {
                    return;
                }
                c7002tm.f30054a.mo8878q4(this.f29034a);
                this.f29036c.f30054a.mo8880V3(0);
                this.f29036c.f30054a.mo8881M4(this.f29035b);
                this.f29036c.f30054a.mo8882I3(null);
                this.f29036c.f30054a.mo8879d();
            } catch (RemoteException e) {
                ei0.m15468b("Clearcut log failed", e);
            }
        }
    }

    /* renamed from: b */
    public final C6928rm m11381b(int i) {
        this.f29035b = i;
        return this;
    }
}
