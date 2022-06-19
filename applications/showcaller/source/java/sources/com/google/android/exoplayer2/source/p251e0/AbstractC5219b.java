package com.google.android.exoplayer2.source.p251e0;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.upstream.C5496w;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C5508e;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.e0.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/e0/b.class */
public abstract class AbstractC5219b implements Loader.AbstractC5465e {

    /* renamed from: a */
    public final C5481l f16396a;

    /* renamed from: b */
    public final int f16397b;

    /* renamed from: c */
    public final Format f16398c;

    /* renamed from: d */
    public final int f16399d;

    /* renamed from: e */
    public final Object f16400e;

    /* renamed from: f */
    public final long f16401f;

    /* renamed from: g */
    public final long f16402g;

    /* renamed from: h */
    protected final C5496w f16403h;

    public AbstractC5219b(AbstractC5478j abstractC5478j, C5481l c5481l, int i, Format format, int i2, Object obj, long j, long j2) {
        this.f16403h = new C5496w(abstractC5478j);
        this.f16396a = (C5481l) C5508e.m18911e(c5481l);
        this.f16397b = i;
        this.f16398c = format;
        this.f16399d = i2;
        this.f16400e = obj;
        this.f16401f = j;
        this.f16402g = j2;
    }

    /* renamed from: b */
    public final long m20104b() {
        return this.f16403h.m18947d();
    }

    /* renamed from: d */
    public final long m20103d() {
        return this.f16402g - this.f16401f;
    }

    /* renamed from: e */
    public final Map<String, List<String>> m20102e() {
        return this.f16403h.m18945f();
    }

    /* renamed from: f */
    public final Uri m20101f() {
        return this.f16403h.m18946e();
    }
}
