package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zz3.class */
public final class zz3 {

    /* renamed from: a */
    private final int f33465a;

    /* renamed from: b */
    private final List<wy3> f33466b;

    /* renamed from: c */
    private final int f33467c;

    /* renamed from: d */
    private final InputStream f33468d;

    public zz3(int i, List<wy3> list, int i2, InputStream inputStream) {
        this.f33465a = i;
        this.f33466b = list;
        this.f33467c = i2;
        this.f33468d = inputStream;
    }

    /* renamed from: a */
    public final int m8123a() {
        return this.f33465a;
    }

    /* renamed from: b */
    public final List<wy3> m8122b() {
        return Collections.unmodifiableList(this.f33466b);
    }

    /* renamed from: c */
    public final int m8121c() {
        return this.f33467c;
    }

    /* renamed from: d */
    public final InputStream m8120d() {
        InputStream inputStream = this.f33468d;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }
}
