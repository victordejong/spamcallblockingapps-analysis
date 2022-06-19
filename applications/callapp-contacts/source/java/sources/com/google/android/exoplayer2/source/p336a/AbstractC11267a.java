package com.google.android.exoplayer2.source.p336a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.C11305l;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.C11588t;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.source.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/a/a.class */
public abstract class AbstractC11267a implements Loader.AbstractC11529d {

    /* renamed from: a */
    public final long f36972a = C11305l.m20965a();

    /* renamed from: b */
    public final C11570j f36973b;

    /* renamed from: c */
    public final int f36974c;

    /* renamed from: d */
    public final Format f36975d;

    /* renamed from: e */
    public final int f36976e;

    /* renamed from: f */
    public final Object f36977f;

    /* renamed from: g */
    public final long f36978g;

    /* renamed from: h */
    public final long f36979h;

    /* renamed from: i */
    protected final C11588t f36980i;

    public AbstractC11267a(AbstractC11567h abstractC11567h, C11570j c11570j, int i, Format format, int i2, Object obj, long j, long j2) {
        this.f36980i = new C11588t(abstractC11567h);
        this.f36973b = (C11570j) C11593a.m20020b(c11570j);
        this.f36974c = i;
        this.f36975d = format;
        this.f36976e = i2;
        this.f36977f = obj;
        this.f36978g = j;
        this.f36979h = j2;
    }
}
