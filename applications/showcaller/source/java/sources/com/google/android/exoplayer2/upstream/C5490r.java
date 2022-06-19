package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.upstream.r */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/r.class */
public final class C5490r extends HttpDataSource.AbstractC5459a {

    /* renamed from: b */
    private final String f17824b;

    /* renamed from: c */
    private final AbstractC5497x f17825c;

    /* renamed from: d */
    private final int f17826d;

    /* renamed from: e */
    private final int f17827e;

    /* renamed from: f */
    private final boolean f17828f;

    public C5490r(String str, AbstractC5497x abstractC5497x) {
        this(str, abstractC5497x, 8000, 8000, false);
    }

    public C5490r(String str, AbstractC5497x abstractC5497x, int i, int i2, boolean z) {
        this.f17824b = C5508e.m18912d(str);
        this.f17825c = abstractC5497x;
        this.f17826d = i;
        this.f17827e = i2;
        this.f17828f = z;
    }

    /* renamed from: d */
    public C5489q mo18963c(HttpDataSource.C5460b c5460b) {
        C5489q c5489q = new C5489q(this.f17824b, this.f17826d, this.f17827e, this.f17828f, c5460b);
        AbstractC5497x abstractC5497x = this.f17825c;
        if (abstractC5497x != null) {
            c5489q.mo18950a(abstractC5497x);
        }
        return c5489q;
    }
}
