package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atx.class */
public final class atx implements dht<atf> {

    /* renamed from: a */
    private final atf f10374a;

    private atx(atf atfVar) {
        this.f10374a = atfVar;
    }

    /* renamed from: a */
    public static atx m12432a(atf atfVar) {
        return new atx(atfVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        atf atfVar = this.f10374a;
        if (atfVar == null) {
            throw null;
        }
        return (atf) dhz.m9438a(atfVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
