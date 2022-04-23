package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhf.class */
public final class bhf implements dbi<adt> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f24441a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Map f24442b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bhf(bgy bgyVar, String str, Map map) {
        this.f24441a = str;
        this.f24442b = map;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(adt adtVar) {
        adtVar.a(this.f24441a, this.f24442b);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
    }
}
