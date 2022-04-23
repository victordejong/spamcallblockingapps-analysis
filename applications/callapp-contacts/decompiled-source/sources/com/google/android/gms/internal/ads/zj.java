package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zj.class */
public final class zj implements dbi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f28581a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zj(String str) {
        this.f28581a = str;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        zzr.zzkz().a(th, this.f28581a);
    }
}
