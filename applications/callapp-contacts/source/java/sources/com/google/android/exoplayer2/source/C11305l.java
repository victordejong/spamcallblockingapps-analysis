package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.C11570j;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.android.exoplayer2.source.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/l.class */
public final class C11305l {

    /* renamed from: h */
    private static final AtomicLong f37111h = new AtomicLong();

    /* renamed from: a */
    public final long f37112a;

    /* renamed from: b */
    public final C11570j f37113b;

    /* renamed from: c */
    public final Uri f37114c;

    /* renamed from: d */
    public final Map<String, List<String>> f37115d;

    /* renamed from: e */
    public final long f37116e;

    /* renamed from: f */
    public final long f37117f;

    /* renamed from: g */
    public final long f37118g;

    public C11305l(long j, C11570j c11570j, long j2) {
        this(j, c11570j, c11570j.f38512a, Collections.emptyMap(), j2, 0L, 0L);
    }

    public C11305l(long j, C11570j c11570j, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.f37112a = j;
        this.f37113b = c11570j;
        this.f37114c = uri;
        this.f37115d = map;
        this.f37116e = j2;
        this.f37117f = j3;
        this.f37118g = j4;
    }

    /* renamed from: a */
    public static long m20965a() {
        return f37111h.getAndIncrement();
    }
}
