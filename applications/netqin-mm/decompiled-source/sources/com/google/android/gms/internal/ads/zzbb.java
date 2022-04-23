package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbb.class */
public final class zzbb {

    /* renamed from: a */
    public final int f24724a;

    /* renamed from: b */
    public final List<zzu> f24725b;

    /* renamed from: c */
    public final int f24726c;

    /* renamed from: d */
    public final InputStream f24727d;

    public zzbb(int i, List<zzu> list) {
        this(i, list, -1, null);
    }

    public zzbb(int i, List<zzu> list, int i2, InputStream inputStream) {
        this.f24724a = i;
        this.f24725b = list;
        this.f24726c = i2;
        this.f24727d = inputStream;
    }

    /* renamed from: a */
    public final InputStream m15924a() {
        return this.f24727d;
    }

    /* renamed from: b */
    public final int m15923b() {
        return this.f24726c;
    }

    /* renamed from: c */
    public final int m15922c() {
        return this.f24724a;
    }

    /* renamed from: d */
    public final List<zzu> m15921d() {
        return Collections.unmodifiableList(this.f24725b);
    }
}
