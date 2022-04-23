package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehu.class */
public final class ehu {

    /* renamed from: a  reason: collision with root package name */
    int f27852a;

    /* renamed from: b  reason: collision with root package name */
    int f27853b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27854c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ehq f27855d;

    private ehu(ehq ehqVar, byte[] bArr) {
        this.f27855d = ehqVar;
        this.f27854c = bArr;
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.f27855d.f27850b) {
                    this.f27855d.f27849a.a(this.f27854c);
                    this.f27855d.f27849a.a(this.f27852a);
                    this.f27855d.f27849a.b(this.f27853b);
                    this.f27855d.f27849a.b();
                    this.f27855d.f27849a.a();
                }
            } catch (RemoteException e) {
                za.zzb("Clearcut log failed", e);
            }
        }
    }
}
