package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuj.class */
public final class cuj {

    /* renamed from: a */
    private final String f46568a = C12273ci.f45829b.mo17481a();

    /* renamed from: a */
    public final String m17217a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f46568a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
