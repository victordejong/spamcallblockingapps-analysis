package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehf.class */
final class ehf implements d.b {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f27837a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ egz f27838b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ehf(egz egzVar, zp zpVar) {
        this.f27838b = egzVar;
        this.f27837a = zpVar;
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        synchronized (this.f27838b.f27825c) {
            this.f27837a.setException(new RuntimeException("Connection failed."));
        }
    }
}
