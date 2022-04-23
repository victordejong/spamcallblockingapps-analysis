package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.j;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/l.class */
public final class l {
    private static final AtomicLong h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f21618a;

    /* renamed from: b  reason: collision with root package name */
    public final j f21619b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f21620c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f21621d;
    public final long e;
    public final long f;
    public final long g;

    public l(long j, j jVar, long j2) {
        this(j, jVar, jVar.f22204a, Collections.emptyMap(), j2, 0L, 0L);
    }

    public l(long j, j jVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.f21618a = j;
        this.f21619b = jVar;
        this.f21620c = uri;
        this.f21621d = map;
        this.e = j2;
        this.f = j3;
        this.g = j4;
    }

    public static long a() {
        return h.getAndIncrement();
    }
}
