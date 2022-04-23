package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anv.class */
public final class anv {

    /* renamed from: a  reason: collision with root package name */
    public final List<? extends dbt<? extends anp>> f23641a;

    public anv(anp anpVar) {
        this.f23641a = Collections.singletonList(dbh.a(anpVar));
    }

    public anv(List<? extends dbt<? extends anp>> list) {
        this.f23641a = list;
    }

    public static bsk<anv> a(bsk<? extends anp> bskVar) {
        return new bsj(bskVar, anx.f23643a);
    }
}
