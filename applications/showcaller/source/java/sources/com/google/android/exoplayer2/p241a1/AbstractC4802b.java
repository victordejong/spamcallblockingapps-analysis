package com.google.android.exoplayer2.p241a1;

import android.view.Surface;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C5411g;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.a1.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/a1/b.class */
public interface AbstractC4802b {

    /* renamed from: com.google.android.exoplayer2.a1.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/a1/b$a.class */
    public static final class C4803a {

        /* renamed from: a */
        public final long f14501a;

        /* renamed from: b */
        public final AbstractC5585y0 f14502b;

        /* renamed from: c */
        public final int f14503c;

        /* renamed from: d */
        public final AbstractC5294v.C5295a f14504d;

        /* renamed from: e */
        public final long f14505e;

        /* renamed from: f */
        public final long f14506f;

        /* renamed from: g */
        public final long f14507g;

        public C4803a(long j, AbstractC5585y0 abstractC5585y0, int i, AbstractC5294v.C5295a c5295a, long j2, long j3, long j4) {
            this.f14501a = j;
            this.f14502b = abstractC5585y0;
            this.f14503c = i;
            this.f14504d = c5295a;
            this.f14505e = j2;
            this.f14506f = j3;
            this.f14507g = j4;
        }
    }

    /* renamed from: A */
    void m21696A(C4803a c4803a, boolean z);

    /* renamed from: B */
    void m21695B(C4803a c4803a, boolean z);

    /* renamed from: C */
    void m21694C(C4803a c4803a, int i, long j);

    /* renamed from: D */
    void m21693D(C4803a c4803a);

    /* renamed from: E */
    void m21692E(C4803a c4803a, int i);

    /* renamed from: F */
    void m21691F(C4803a c4803a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c);

    /* renamed from: G */
    void m21690G(C4803a c4803a);

    /* renamed from: H */
    void m21689H(C4803a c4803a, Surface surface);

    /* renamed from: I */
    void m21688I(C4803a c4803a, int i, C4857d c4857d);

    /* renamed from: J */
    void m21687J(C4803a c4803a);

    /* renamed from: K */
    void m21686K(C4803a c4803a);

    /* renamed from: L */
    void m21685L(C4803a c4803a, int i);

    /* renamed from: M */
    void m21684M(C4803a c4803a, ExoPlaybackException exoPlaybackException);

    /* renamed from: a */
    void m21683a(C4803a c4803a, int i, long j, long j2);

    /* renamed from: b */
    void m21682b(C4803a c4803a, int i, int i2, int i3, float f);

    /* renamed from: c */
    void m21681c(C4803a c4803a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c);

    /* renamed from: d */
    void m21680d(C4803a c4803a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c);

    /* renamed from: e */
    void m21679e(C4803a c4803a, int i, Format format);

    /* renamed from: f */
    void m21678f(C4803a c4803a);

    /* renamed from: g */
    void m21677g(C4803a c4803a, int i, String str, long j);

    /* renamed from: h */
    void m21676h(C4803a c4803a, int i);

    /* renamed from: i */
    void m21675i(C4803a c4803a, Exception exc);

    /* renamed from: j */
    void m21674j(C4803a c4803a);

    /* renamed from: k */
    void m21673k(C4803a c4803a);

    /* renamed from: l */
    void m21672l(C4803a c4803a, int i);

    /* renamed from: m */
    void m21671m(C4803a c4803a, C5102l0 c5102l0);

    /* renamed from: n */
    void m21670n(C4803a c4803a, boolean z);

    /* renamed from: o */
    void m21669o(C4803a c4803a, int i, long j, long j2);

    /* renamed from: p */
    void m21668p(C4803a c4803a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c, IOException iOException, boolean z);

    /* renamed from: q */
    void m21667q(C4803a c4803a, int i, C4857d c4857d);

    /* renamed from: r */
    void m21666r(C4803a c4803a, Metadata metadata);

    /* renamed from: s */
    void m21665s(C4803a c4803a, int i);

    /* renamed from: t */
    void m21664t(C4803a c4803a, boolean z, int i);

    /* renamed from: u */
    void m21663u(C4803a c4803a);

    /* renamed from: v */
    void m21662v(C4803a c4803a);

    /* renamed from: w */
    void m21661w(C4803a c4803a, float f);

    /* renamed from: x */
    void m21660x(C4803a c4803a, TrackGroupArray trackGroupArray, C5411g c5411g);

    /* renamed from: y */
    void m21659y(C4803a c4803a, AbstractC5297w.C5301c c5301c);

    /* renamed from: z */
    void m21658z(C4803a c4803a, int i, int i2);
}
