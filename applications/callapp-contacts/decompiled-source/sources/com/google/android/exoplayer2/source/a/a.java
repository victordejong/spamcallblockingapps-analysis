package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.t;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/a/a.class */
public abstract class a implements Loader.d {

    /* renamed from: a  reason: collision with root package name */
    public final long f21536a = l.a();

    /* renamed from: b  reason: collision with root package name */
    public final j f21537b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21538c;

    /* renamed from: d  reason: collision with root package name */
    public final Format f21539d;
    public final int e;
    public final Object f;
    public final long g;
    public final long h;
    protected final t i;

    public a(h hVar, j jVar, int i, Format format, int i2, Object obj, long j, long j2) {
        this.i = new t(hVar);
        this.f21537b = (j) com.google.android.exoplayer2.util.a.b(jVar);
        this.f21538c = i;
        this.f21539d = format;
        this.e = i2;
        this.f = obj;
        this.g = j;
        this.h = j2;
    }
}
