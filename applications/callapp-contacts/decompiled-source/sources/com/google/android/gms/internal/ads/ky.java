package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ky.class */
public final class ky implements zt<ju> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kv f28139a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ky(kz kzVar, kv kvVar) {
        this.f28139a = kvVar;
    }

    @Override // com.google.android.gms.internal.ads.zt
    public final /* synthetic */ void a(ju juVar) {
        zzd.zzed("Getting a new session for JS Engine.");
        this.f28139a.a(juVar.c());
    }
}
