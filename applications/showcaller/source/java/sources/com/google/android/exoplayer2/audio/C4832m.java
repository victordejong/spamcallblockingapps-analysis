package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.audio.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/m.class */
final class C4832m {

    /* renamed from: a */
    private final C4833a f14632a;

    /* renamed from: b */
    private int f14633b;

    /* renamed from: c */
    private long f14634c;

    /* renamed from: d */
    private long f14635d;

    /* renamed from: e */
    private long f14636e;

    /* renamed from: f */
    private long f14637f;

    @TargetApi(19)
    /* renamed from: com.google.android.exoplayer2.audio.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/m$a.class */
    public static final class C4833a {

        /* renamed from: a */
        private final AudioTrack f14638a;

        /* renamed from: b */
        private final AudioTimestamp f14639b = new AudioTimestamp();

        /* renamed from: c */
        private long f14640c;

        /* renamed from: d */
        private long f14641d;

        /* renamed from: e */
        private long f14642e;

        public C4833a(AudioTrack audioTrack) {
            this.f14638a = audioTrack;
        }

        /* renamed from: a */
        public long m21546a() {
            return this.f14642e;
        }

        /* renamed from: b */
        public long m21545b() {
            return this.f14639b.nanoTime / 1000;
        }

        /* renamed from: c */
        public boolean m21544c() {
            boolean timestamp = this.f14638a.getTimestamp(this.f14639b);
            if (timestamp) {
                long j = this.f14639b.framePosition;
                if (this.f14641d > j) {
                    this.f14640c++;
                }
                this.f14641d = j;
                this.f14642e = j + (this.f14640c << 32);
            }
            return timestamp;
        }
    }

    public C4832m(AudioTrack audioTrack) {
        if (C5515h0.f17876a >= 19) {
            this.f14632a = new C4833a(audioTrack);
            m21548h();
            return;
        }
        this.f14632a = null;
        m21547i(3);
    }

    /* renamed from: i */
    private void m21547i(int i) {
        this.f14633b = i;
        if (i == 0) {
            this.f14636e = 0L;
            this.f14637f = -1L;
            this.f14634c = System.nanoTime() / 1000;
            this.f14635d = 5000L;
        } else if (i == 1) {
            this.f14635d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f14635d = 10000000L;
        } else if (i != 4) {
            throw new IllegalStateException();
        } else {
            this.f14635d = 500000L;
        }
    }

    /* renamed from: a */
    public void m21555a() {
        if (this.f14633b == 4) {
            m21548h();
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: b */
    public long m21554b() {
        C4833a c4833a = this.f14632a;
        return c4833a != null ? c4833a.m21546a() : (char) 65535;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: c */
    public long m21553c() {
        C4833a c4833a = this.f14632a;
        return c4833a != null ? c4833a.m21545b() : (char) 1;
    }

    /* renamed from: d */
    public boolean m21552d() {
        int i = this.f14633b;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: e */
    public boolean m21551e() {
        return this.f14633b == 2;
    }

    /* renamed from: f */
    public boolean m21550f(long j) {
        C4833a c4833a = this.f14632a;
        boolean z = false;
        if (c4833a != null) {
            if (j - this.f14636e < this.f14635d) {
                z = false;
            } else {
                this.f14636e = j;
                boolean m21544c = c4833a.m21544c();
                int i = this.f14633b;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    throw new IllegalStateException();
                                }
                            } else if (m21544c) {
                                m21548h();
                            }
                        } else if (!m21544c) {
                            m21548h();
                        }
                    } else if (!m21544c) {
                        m21548h();
                    } else if (this.f14632a.m21546a() > this.f14637f) {
                        m21547i(2);
                    }
                } else if (m21544c) {
                    z = false;
                    if (this.f14632a.m21545b() >= this.f14634c) {
                        this.f14637f = this.f14632a.m21546a();
                        m21547i(1);
                    }
                } else if (j - this.f14634c > 500000) {
                    m21547i(3);
                }
                z = m21544c;
            }
        }
        return z;
    }

    /* renamed from: g */
    public void m21549g() {
        m21547i(4);
    }

    /* renamed from: h */
    public void m21548h() {
        if (this.f14632a != null) {
            m21547i(0);
        }
    }
}
