package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuj.class */
public final class cuj {

    /* renamed from: a  reason: collision with root package name */
    private final String f26419a = ci.f25868b.a();

    public final String a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f26419a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
