package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dk3.class */
public final class dk3 {

    /* renamed from: a */
    private static final AtomicLong f21664a = new AtomicLong();

    /* renamed from: b */
    public final C6472fb f21665b;

    /* renamed from: c */
    public final Uri f21666c;

    /* renamed from: d */
    public final Map<String, List<String>> f21667d;

    public dk3(long j, C6472fb c6472fb, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.f21665b = c6472fb;
        this.f21666c = uri;
        this.f21667d = map;
    }

    /* renamed from: a */
    public static long m15776a() {
        return f21664a.getAndIncrement();
    }
}
