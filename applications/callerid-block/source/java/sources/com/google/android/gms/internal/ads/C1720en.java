package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.en */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/en.class */
public final class C1720en {

    /* renamed from: a */
    private final int f6426a;

    /* renamed from: b */
    private final List<pv2> f6427b;

    /* renamed from: c */
    private final int f6428c;

    /* renamed from: d */
    private final InputStream f6429d;

    public C1720en(int i, List<pv2> list, int i2, InputStream inputStream) {
        this.f6426a = i;
        this.f6427b = list;
        this.f6428c = i2;
        this.f6429d = inputStream;
    }

    /* renamed from: a */
    public final int m7604a() {
        return this.f6426a;
    }

    /* renamed from: b */
    public final List<pv2> m7603b() {
        return Collections.unmodifiableList(this.f6427b);
    }

    /* renamed from: c */
    public final int m7602c() {
        return this.f6428c;
    }

    /* renamed from: d */
    public final InputStream m7601d() {
        InputStream inputStream = this.f6429d;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }
}
