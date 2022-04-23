package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zn.class */
public final class zn implements dbi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f28587a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zn(String str) {
        this.f28587a = str;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        zzr.zzkz().b(th, this.f28587a);
    }
}
