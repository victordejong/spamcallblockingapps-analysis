package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5039j;
import com.google.android.exoplayer2.source.AbstractC5282p;
import com.google.android.exoplayer2.source.C5283q;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.C5491s;
import com.google.android.exoplayer2.util.C5508e;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DashMediaSource$Factory.class */
public final class DashMediaSource$Factory {

    /* renamed from: a */
    private final AbstractC5215a f16381a;

    /* renamed from: b */
    private final AbstractC5478j.AbstractC5479a f16382b;

    /* renamed from: c */
    private AbstractC5040k<?> f16383c;

    /* renamed from: d */
    private AbstractC5282p f16384d;

    /* renamed from: e */
    private AbstractC5493u f16385e;

    /* renamed from: f */
    private long f16386f;

    public DashMediaSource$Factory(AbstractC5215a abstractC5215a, AbstractC5478j.AbstractC5479a abstractC5479a) {
        this.f16381a = (AbstractC5215a) C5508e.m18911e(abstractC5215a);
        this.f16382b = abstractC5479a;
        this.f16383c = C5039j.m20776d();
        this.f16385e = new C5491s();
        this.f16386f = 30000L;
        this.f16384d = new C5283q();
    }

    public DashMediaSource$Factory(AbstractC5478j.AbstractC5479a abstractC5479a) {
        this(new C5216b(abstractC5479a), abstractC5479a);
    }
}
