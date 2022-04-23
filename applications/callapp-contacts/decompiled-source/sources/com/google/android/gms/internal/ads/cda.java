package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cda.class */
public final class cda implements chb<cgy<Bundle>> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25614a;

    /* renamed from: b  reason: collision with root package name */
    private final yd f25615b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cda(Executor executor, yd ydVar) {
        this.f25614a = executor;
        this.f25615b = ydVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgy<Bundle>> a() {
        return ((Boolean) ekb.e().a(aq.bC)).booleanValue() ? dbh.a((Object) null) : daj.a(this.f25615b.e(), cdd.f25620a, this.f25614a);
    }
}
