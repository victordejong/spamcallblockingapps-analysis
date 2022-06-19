package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kq1.class */
public final class kq1 {

    /* renamed from: a */
    private final String f7033a = C1990v4.f8865b.m6222e();

    /* renamed from: a */
    public final String m6770a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f7033a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
