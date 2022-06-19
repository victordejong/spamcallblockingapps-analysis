package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cda.class */
public final class cda implements chb<cgy<Bundle>> {

    /* renamed from: a */
    private final Executor f45541a;

    /* renamed from: b */
    private final C13064yd f45542b;

    public cda(Executor executor, C13064yd c13064yd) {
        this.f45541a = executor;
        this.f45542b = c13064yd;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgy<Bundle>> mo17449a() {
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42693bC)).booleanValue() ? dbh.m16899a((Object) null) : daj.m16942a(this.f45542b.m13974e(), cdd.f45547a, this.f45541a);
    }
}
