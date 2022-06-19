package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axm.class */
public final class axm implements dht<axk> {

    /* renamed from: a */
    private final axk f10527a;

    private axm(axk axkVar) {
        this.f10527a = axkVar;
    }

    /* renamed from: a */
    public static axm m12353a(axk axkVar) {
        return new axm(axkVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        axk axkVar = this.f10527a;
        if (axkVar == null) {
            throw null;
        }
        return (axk) dhz.m9438a(axkVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
