package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pr.class */
public final class pr extends qa {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, String> f28295a;

    /* renamed from: b  reason: collision with root package name */
    final Context f28296b;

    public pr(adt adtVar, Map<String, String> map) {
        super(adtVar, MRAIDNativeFeature.STORE_PICTURE);
        this.f28295a = map;
        this.f28296b = adtVar.d();
    }
}
