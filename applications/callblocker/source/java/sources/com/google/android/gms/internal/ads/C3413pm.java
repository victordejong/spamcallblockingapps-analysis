package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.pm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pm.class */
public final class C3413pm {

    /* renamed from: a */
    private final int f17189a;

    /* renamed from: b */
    private final List<dnv> f17190b;

    /* renamed from: c */
    private final int f17191c;

    /* renamed from: d */
    private final InputStream f17192d;

    public C3413pm(int i, List<dnv> list) {
        this(i, list, -1, null);
    }

    public C3413pm(int i, List<dnv> list, int i2, InputStream inputStream) {
        this.f17189a = i;
        this.f17190b = list;
        this.f17191c = i2;
        this.f17192d = inputStream;
    }

    /* renamed from: a */
    public final int m7342a() {
        return this.f17189a;
    }

    /* renamed from: b */
    public final List<dnv> m7341b() {
        return Collections.unmodifiableList(this.f17190b);
    }

    /* renamed from: c */
    public final int m7340c() {
        return this.f17191c;
    }

    /* renamed from: d */
    public final InputStream m7339d() {
        return this.f17192d;
    }
}
