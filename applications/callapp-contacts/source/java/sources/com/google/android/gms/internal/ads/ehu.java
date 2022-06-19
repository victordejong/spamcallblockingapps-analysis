package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehu.class */
public final class ehu {

    /* renamed from: a */
    int f49043a;

    /* renamed from: b */
    int f49044b;

    /* renamed from: c */
    private final byte[] f49045c;

    /* renamed from: d */
    private final /* synthetic */ ehq f49046d;

    /* JADX INFO: Access modifiers changed from: private */
    public ehu(ehq ehqVar, byte[] bArr) {
        this.f49046d = ehqVar;
        this.f49045c = bArr;
    }

    /* renamed from: a */
    public final void m14887a() {
        synchronized (this) {
            try {
                if (this.f49046d.f49041b) {
                    this.f49046d.f49040a.mo15666a(this.f49045c);
                    this.f49046d.f49040a.mo15668a(this.f49043a);
                    this.f49046d.f49040a.mo15664b(this.f49044b);
                    this.f49046d.f49040a.mo15665b();
                    this.f49046d.f49040a.mo15669a();
                }
            } catch (RemoteException e) {
                C13088za.zzb("Clearcut log failed", e);
            }
        }
    }
}
