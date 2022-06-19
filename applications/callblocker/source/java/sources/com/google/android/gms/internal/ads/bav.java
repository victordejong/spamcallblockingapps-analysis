package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C2387p;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bav.class */
public final class bav implements dht<auq<C2387p.C2388a>> {

    /* renamed from: a */
    private final bap f10818a;

    /* renamed from: b */
    private final dig<bdn> f10819b;

    /* renamed from: c */
    private final dig<Executor> f10820c;

    public bav(bap bapVar, dig<bdn> digVar, dig<Executor> digVar2) {
        this.f10818a = bapVar;
        this.f10819b = digVar;
        this.f10820c = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(new auq(this.f10819b.mo9430a(), this.f10820c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
