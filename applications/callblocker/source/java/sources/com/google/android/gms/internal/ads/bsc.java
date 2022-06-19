package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsc.class */
public final class bsc implements dht<bsa> {

    /* renamed from: a */
    private final bsa f12150a;

    private bsc(bsa bsaVar) {
        this.f12150a = bsaVar;
    }

    /* renamed from: a */
    public static bsc m11685a(bsa bsaVar) {
        return new bsc(bsaVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        bsa bsaVar = this.f12150a;
        if (bsaVar == null) {
            throw null;
        }
        return (bsa) dhz.m9438a(bsaVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
