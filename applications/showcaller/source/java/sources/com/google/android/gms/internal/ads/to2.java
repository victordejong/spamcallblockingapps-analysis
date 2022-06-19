package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/to2.class */
public final class to2 {

    /* renamed from: a */
    private final String f30093a = C7013tx.f30410b.m12799e();

    /* renamed from: a */
    public final String m10593a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f30093a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
