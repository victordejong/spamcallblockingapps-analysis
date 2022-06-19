package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.C5482m;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.y */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/y.class */
public class C5584y implements AbstractC5092g0 {

    /* renamed from: a */
    private final C5482m f18160a;

    /* renamed from: b */
    private final long f18161b;

    /* renamed from: c */
    private final long f18162c;

    /* renamed from: d */
    private final long f18163d;

    /* renamed from: e */
    private final long f18164e;

    /* renamed from: f */
    private final long f18165f;

    /* renamed from: g */
    private final int f18166g;

    /* renamed from: h */
    private final boolean f18167h;

    /* renamed from: i */
    private final long f18168i;

    /* renamed from: j */
    private final boolean f18169j;

    /* renamed from: k */
    private int f18170k;

    /* renamed from: l */
    private boolean f18171l;

    /* renamed from: m */
    private boolean f18172m;

    protected C5584y(C5482m c5482m, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        m18382a(i4, 0, "bufferForPlaybackMs", "0");
        m18382a(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m18382a(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        m18382a(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        m18382a(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        m18382a(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        m18382a(i3, i, "maxBufferMs", "minBufferAudioMs");
        m18382a(i3, i2, "maxBufferMs", "minBufferVideoMs");
        m18382a(i7, 0, "backBufferDurationMs", "0");
        this.f18160a = c5482m;
        this.f18161b = C5543v.m18630a(i);
        this.f18162c = C5543v.m18630a(i2);
        this.f18163d = C5543v.m18630a(i3);
        this.f18164e = C5543v.m18630a(i4);
        this.f18165f = C5543v.m18630a(i5);
        this.f18166g = i6;
        this.f18167h = z;
        this.f18168i = C5543v.m18630a(i7);
        this.f18169j = z2;
    }

    @Deprecated
    public C5584y(C5482m c5482m, int i, int i2, int i3, int i4, int i5, boolean z) {
        this(c5482m, i, i, i2, i3, i4, i5, z, 0, false);
    }

    /* renamed from: a */
    private static void m18382a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        C5508e.m18914b(z, str + " cannot be less than " + str2);
    }

    /* renamed from: l */
    private static int m18371l(int i) {
        switch (i) {
            case 0:
                return 36438016;
            case 1:
                return 3538944;
            case 2:
                return 32768000;
            case 3:
            case 4:
            case 5:
                return 131072;
            case 6:
                return 0;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: m */
    private static boolean m18370m(AbstractC5187r0[] abstractC5187r0Arr, C5411g c5411g) {
        for (int i = 0; i < abstractC5187r0Arr.length; i++) {
            if (abstractC5187r0Arr[i].mo19258i() == 2 && c5411g.m19279a(i) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    private void m18369n(boolean z) {
        this.f18170k = 0;
        this.f18171l = false;
        if (z) {
            this.f18160a.m19007g();
        }
    }

    /* renamed from: b */
    protected int m18381b(AbstractC5187r0[] abstractC5187r0Arr, C5411g c5411g) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < abstractC5187r0Arr.length) {
                int i4 = i3;
                if (c5411g.m19279a(i) != null) {
                    i4 = i3 + m18371l(abstractC5187r0Arr[i].mo19258i());
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: c */
    public void mo18380c() {
        m18369n(false);
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: d */
    public boolean mo18379d() {
        return this.f18169j;
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: e */
    public long mo18378e() {
        return this.f18168i;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: f */
    public boolean mo18377f(long j, float f, boolean z) {
        long m18862J = C5515h0.m18862J(j, f);
        char c = z ? this.f18165f : this.f18164e;
        return c <= 0 || m18862J >= c || (!this.f18167h && this.f18160a.m19008f() >= this.f18170k);
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: g */
    public boolean mo18376g(long j, float f) {
        boolean z = this.f18160a.m19008f() >= this.f18170k;
        char c = this.f18172m ? this.f18162c : this.f18161b;
        char c2 = c;
        if (f > 1.0f) {
            c2 = Math.min(C5515h0.m18867E(c, f), this.f18163d);
        }
        if (j < c2) {
            boolean z2 = true;
            if (!this.f18167h) {
                z2 = !z;
            }
            this.f18171l = z2;
        } else if (j >= this.f18163d || z) {
            this.f18171l = false;
        }
        return this.f18171l;
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: h */
    public void mo18375h(AbstractC5187r0[] abstractC5187r0Arr, TrackGroupArray trackGroupArray, C5411g c5411g) {
        this.f18172m = m18370m(abstractC5187r0Arr, c5411g);
        int i = this.f18166g;
        int i2 = i;
        if (i == -1) {
            i2 = m18381b(abstractC5187r0Arr, c5411g);
        }
        this.f18170k = i2;
        this.f18160a.m19006h(i2);
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: i */
    public void mo18374i() {
        m18369n(true);
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: j */
    public AbstractC5472e mo18373j() {
        return this.f18160a;
    }

    @Override // com.google.android.exoplayer2.AbstractC5092g0
    /* renamed from: k */
    public void mo18372k() {
        m18369n(true);
    }
}
