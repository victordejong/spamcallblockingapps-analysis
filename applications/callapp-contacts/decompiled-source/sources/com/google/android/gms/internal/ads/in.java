package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/in.class */
public final class in implements d.b {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f28066a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public in(ih ihVar, zp zpVar) {
        this.f28066a = zpVar;
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        this.f28066a.setException(new RuntimeException("Connection failed."));
    }
}
