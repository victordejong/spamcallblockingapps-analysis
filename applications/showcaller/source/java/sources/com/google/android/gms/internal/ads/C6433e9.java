package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.e9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e9.class */
public final class C6433e9 {

    /* renamed from: a */
    private Uri f22046a;

    /* renamed from: b */
    private final int f22047b = 1;

    /* renamed from: c */
    private Map<String, String> f22048c = Collections.emptyMap();

    /* renamed from: d */
    private long f22049d;

    /* renamed from: e */
    private int f22050e;

    /* renamed from: a */
    public final C6433e9 m15533a(Uri uri) {
        this.f22046a = uri;
        return this;
    }

    /* renamed from: b */
    public final C6433e9 m15532b(Map<String, String> map) {
        this.f22048c = map;
        return this;
    }

    /* renamed from: c */
    public final C6433e9 m15531c(long j) {
        this.f22049d = j;
        return this;
    }

    /* renamed from: d */
    public final C6433e9 m15530d(int i) {
        this.f22050e = 6;
        return this;
    }

    /* renamed from: e */
    public final C6472fb m15529e() {
        Uri uri = this.f22046a;
        if (uri != null) {
            return new C6472fb(uri, 0L, 1, null, this.f22048c, this.f22049d, -1L, null, this.f22050e, null, null);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}
