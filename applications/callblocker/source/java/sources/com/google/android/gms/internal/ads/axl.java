package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axl.class */
public final class axl implements dht<azg> {

    /* renamed from: a */
    private final axk f10526a;

    private axl(axk axkVar) {
        this.f10526a = axkVar;
    }

    /* renamed from: a */
    public static axl m12355a(axk axkVar) {
        return new axl(axkVar);
    }

    /* renamed from: b */
    public static azg m12354b(axk axkVar) {
        return (azg) dhz.m9438a(axkVar.m12357a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12354b(this.f10526a);
    }
}
