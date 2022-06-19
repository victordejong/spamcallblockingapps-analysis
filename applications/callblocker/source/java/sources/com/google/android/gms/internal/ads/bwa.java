package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwa.class */
public final class bwa implements cah<cae<Bundle>> {

    /* renamed from: a */
    private final Executor f12369a;

    /* renamed from: b */
    private final C3542ug f12370b;

    public bwa(Executor executor, C3542ug c3542ug) {
        this.f12369a = executor;
        this.f12370b = c3542ug;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<Bundle>> mo11479a() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16423bc)).booleanValue() ? crg.m10778a((Object) null) : crg.m10783a(this.f12370b.m7082j(), bvz.f12368a, this.f12369a);
    }
}
