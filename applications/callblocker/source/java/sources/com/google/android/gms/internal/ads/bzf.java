package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzf.class */
public final class bzf implements dht<bzd> {

    /* renamed from: a */
    private final dig<Context> f12528a;

    /* renamed from: b */
    private final dig<String> f12529b;

    private bzf(dig<Context> digVar, dig<String> digVar2) {
        this.f12528a = digVar;
        this.f12529b = digVar2;
    }

    /* renamed from: a */
    public static bzd m11540a(Context context, String str) {
        return new bzd(context, str);
    }

    /* renamed from: a */
    public static bzf m11539a(dig<Context> digVar, dig<String> digVar2) {
        return new bzf(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11540a(this.f12528a.mo9430a(), this.f12529b.mo9430a());
    }
}
