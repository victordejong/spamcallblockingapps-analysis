package com.google.android.exoplayer2.source.smoothstreaming;

import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5039j;
import com.google.android.exoplayer2.source.AbstractC5282p;
import com.google.android.exoplayer2.source.C5283q;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.C5491s;
import com.google.android.exoplayer2.util.C5508e;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory.class */
public final class SsMediaSource$Factory {

    /* renamed from: a */
    private final AbstractC5289b f16768a;

    /* renamed from: b */
    private final AbstractC5478j.AbstractC5479a f16769b;

    /* renamed from: c */
    private AbstractC5282p f16770c;

    /* renamed from: d */
    private AbstractC5040k<?> f16771d;

    /* renamed from: e */
    private AbstractC5493u f16772e;

    /* renamed from: f */
    private long f16773f;

    public SsMediaSource$Factory(AbstractC5289b abstractC5289b, AbstractC5478j.AbstractC5479a abstractC5479a) {
        this.f16768a = (AbstractC5289b) C5508e.m18911e(abstractC5289b);
        this.f16769b = abstractC5479a;
        this.f16771d = C5039j.m20776d();
        this.f16772e = new C5491s();
        this.f16773f = 30000L;
        this.f16770c = new C5283q();
    }

    public SsMediaSource$Factory(AbstractC5478j.AbstractC5479a abstractC5479a) {
        this(new C5288a(abstractC5479a), abstractC5479a);
    }
}
