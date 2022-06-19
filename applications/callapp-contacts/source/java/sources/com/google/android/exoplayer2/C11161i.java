package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.base.C15391m;
/* renamed from: com.google.android.exoplayer2.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/i.class */
public final class C11161i implements AbstractC11259r {

    /* renamed from: a */
    private final float f36547a;

    /* renamed from: b */
    private final float f36548b;

    /* renamed from: c */
    private final long f36549c;

    /* renamed from: d */
    private final float f36550d;

    /* renamed from: e */
    private final long f36551e;

    /* renamed from: f */
    private final long f36552f;

    /* renamed from: g */
    private final float f36553g;

    /* renamed from: h */
    private long f36554h;

    /* renamed from: i */
    private long f36555i;

    /* renamed from: j */
    private long f36556j;

    /* renamed from: k */
    private long f36557k;

    /* renamed from: l */
    private long f36558l;

    /* renamed from: m */
    private long f36559m;

    /* renamed from: n */
    private float f36560n;

    /* renamed from: o */
    private float f36561o;

    /* renamed from: p */
    private float f36562p;

    /* renamed from: q */
    private long f36563q;

    /* renamed from: r */
    private long f36564r;

    /* renamed from: s */
    private long f36565s;

    /* renamed from: com.google.android.exoplayer2.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/i$a.class */
    public static final class C11163a {

        /* renamed from: a */
        float f36566a = 0.97f;

        /* renamed from: b */
        float f36567b = 1.03f;

        /* renamed from: c */
        long f36568c = 1000;

        /* renamed from: d */
        float f36569d = 1.0E-7f;

        /* renamed from: e */
        long f36570e = C11158f.m21372b(20);

        /* renamed from: f */
        long f36571f = C11158f.m21372b(500);

        /* renamed from: g */
        float f36572g = 0.999f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C11161i(float f, float f2, long j, float f3, long j2, long j3, float f4) {
        this.f36547a = f;
        this.f36548b = f2;
        this.f36549c = j;
        this.f36550d = f3;
        this.f36551e = j2;
        this.f36552f = j3;
        this.f36553g = f4;
        this.f36554h = -9223372036854775807L;
        this.f36555i = -9223372036854775807L;
        this.f36557k = -9223372036854775807L;
        this.f36558l = -9223372036854775807L;
        this.f36561o = f;
        this.f36560n = f2;
        this.f36562p = 1.0f;
        this.f36563q = -9223372036854775807L;
        this.f36556j = -9223372036854775807L;
        this.f36559m = -9223372036854775807L;
        this.f36564r = -9223372036854775807L;
        this.f36565s = -9223372036854775807L;
    }

    /* renamed from: a */
    private static long m21358a(long j, long j2, float f) {
        return (((float) j) * f) + ((1.0f - f) * ((float) j2));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: c */
    private void m21357c() {
        char c;
        char c2 = this.f36554h;
        if (c2 != -9223372036854775807L) {
            ?? r0 = this.f36555i;
            if (r0 != -9223372036854775807L) {
                c2 = r0;
            }
            ?? r02 = this.f36557k;
            char c3 = c2;
            if (r02 != -9223372036854775807L) {
                c3 = c2;
                if (c2 < r02) {
                    c3 = r02;
                }
            }
            ?? r03 = this.f36558l;
            c = c3;
            if (r03 != -9223372036854775807L) {
                c = c3;
                if (c3 > r03) {
                    c = r03;
                }
            }
        } else {
            c = 1;
        }
        if (this.f36556j == c) {
            return;
        }
        this.f36556j = c;
        this.f36559m = c;
        this.f36564r = -9223372036854775807L;
        this.f36565s = -9223372036854775807L;
        this.f36563q = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75 */
    @Override // com.google.android.exoplayer2.AbstractC11259r
    /* renamed from: a */
    public final float mo21027a(long j, long j2) {
        char c;
        if (this.f36554h == -9223372036854775807L) {
            return 1.0f;
        }
        long j3 = j - j2;
        long j4 = this.f36564r;
        if (j4 == -9223372036854775807L) {
            this.f36564r = j3;
            this.f36565s = 0L;
        } else {
            long max = Math.max(j3, m21358a(j4, j3, this.f36553g));
            this.f36564r = max;
            this.f36565s = m21358a(this.f36565s, Math.abs(j3 - max), this.f36553g);
        }
        if (this.f36563q != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f36563q < this.f36549c) {
            return this.f36562p;
        }
        this.f36563q = SystemClock.elapsedRealtime();
        long j5 = this.f36564r + (this.f36565s * 3);
        if (this.f36559m > j5) {
            float m21372b = (float) C11158f.m21372b(this.f36549c);
            int i = 1;
            ?? r0 = {j5, this.f36556j, this.f36559m - (((this.f36562p - 1.0f) * m21372b) + ((this.f36560n - 1.0f) * m21372b))};
            C15391m.m8943a(true);
            char c2 = r0[0];
            while (true) {
                c = c2;
                if (i >= 3) {
                    break;
                }
                char c3 = c;
                if (r0[i] > c) {
                    c3 = r0[i];
                }
                i++;
                c2 = c3;
            }
            this.f36559m = c;
        } else {
            long m19993a = C11599af.m19993a(j - (Math.max((float) BitmapDescriptorFactory.HUE_RED, this.f36562p - 1.0f) / this.f36550d), this.f36559m, j5);
            this.f36559m = m19993a;
            long j6 = this.f36558l;
            if (j6 != -9223372036854775807L && m19993a > j6) {
                this.f36559m = j6;
            }
        }
        long j7 = j - this.f36559m;
        if (Math.abs(j7) < this.f36551e) {
            this.f36562p = 1.0f;
        } else {
            this.f36562p = C11599af.m20000a((this.f36550d * ((float) j7)) + 1.0f, this.f36561o, this.f36560n);
        }
        return this.f36562p;
    }

    @Override // com.google.android.exoplayer2.AbstractC11259r
    /* renamed from: a */
    public final void mo21029a() {
        long j = this.f36559m;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.f36552f;
        this.f36559m = j2;
        long j3 = this.f36558l;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.f36559m = j3;
        }
        this.f36563q = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.AbstractC11259r
    /* renamed from: a */
    public final void mo21028a(long j) {
        this.f36555i = j;
        m21357c();
    }

    @Override // com.google.android.exoplayer2.AbstractC11259r
    /* renamed from: a */
    public final void mo21026a(MediaItem.LiveConfiguration liveConfiguration) {
        this.f36554h = C11158f.m21372b(liveConfiguration.targetOffsetMs);
        this.f36557k = C11158f.m21372b(liveConfiguration.minOffsetMs);
        this.f36558l = C11158f.m21372b(liveConfiguration.maxOffsetMs);
        this.f36561o = liveConfiguration.minPlaybackSpeed != -3.4028235E38f ? liveConfiguration.minPlaybackSpeed : this.f36547a;
        this.f36560n = liveConfiguration.maxPlaybackSpeed != -3.4028235E38f ? liveConfiguration.maxPlaybackSpeed : this.f36548b;
        m21357c();
    }

    @Override // com.google.android.exoplayer2.AbstractC11259r
    /* renamed from: b */
    public final long mo21025b() {
        return this.f36559m;
    }
}
