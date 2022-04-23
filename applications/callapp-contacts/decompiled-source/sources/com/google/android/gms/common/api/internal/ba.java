package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zak;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ba.class */
final class ba implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zak f22674a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ bc f22675b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(bc bcVar, zak zakVar) {
        this.f22675b = bcVar;
        this.f22674a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bc.a(this.f22675b, this.f22674a);
    }
}
