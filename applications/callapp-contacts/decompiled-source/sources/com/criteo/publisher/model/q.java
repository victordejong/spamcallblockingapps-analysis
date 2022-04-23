package com.criteo.publisher.model;

import com.criteo.publisher.m0.a;
import com.criteo.publisher.model.i;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.j;
import com.mopub.common.AdType;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/q.class */
public abstract class q {
    public static q a(String str, String str2, a aVar, AdSize adSize) {
        return new i(str, str2, aVar == a.CRITEO_CUSTOM_NATIVE ? Boolean.TRUE : null, aVar == a.CRITEO_INTERSTITIAL ? Boolean.TRUE : null, Collections.singletonList(adSize.getFormattedSize()));
    }

    public static j<q> a(f fVar) {
        return new i.a(fVar);
    }

    @b(a = "impId")
    public abstract String a();

    @b(a = "placementId")
    public abstract String b();

    @b(a = "sizes")
    public abstract Collection<String> c();

    @b(a = AdType.INTERSTITIAL)
    public abstract Boolean d();

    @b(a = "isNative")
    public abstract Boolean e();
}
