package p012b.p076s.p078b.p079a.p083p0;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.n */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/n.class */
public final class C1288n {

    /* renamed from: a */
    public final C1289a f5102a;

    /* renamed from: b */
    public int f5103b;

    /* renamed from: c */
    public long f5104c;

    /* renamed from: d */
    public long f5105d;

    /* renamed from: e */
    public long f5106e;

    /* renamed from: f */
    public long f5107f;

    /* renamed from: b.s.b.a.p0.n$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/n$a.class */
    public static final class C1289a {

        /* renamed from: a */
        public final AudioTrack f5108a;

        /* renamed from: b */
        public final AudioTimestamp f5109b = new AudioTimestamp();

        /* renamed from: c */
        public long f5110c;

        /* renamed from: d */
        public long f5111d;

        /* renamed from: e */
        public long f5112e;

        public C1289a(AudioTrack audioTrack) {
            this.f5108a = audioTrack;
        }

        /* renamed from: a */
        public long m33874a() {
            return this.f5112e;
        }

        /* renamed from: b */
        public long m33873b() {
            return this.f5109b.nanoTime / 1000;
        }

        /* renamed from: c */
        public boolean m33872c() {
            boolean timestamp = this.f5108a.getTimestamp(this.f5109b);
            if (timestamp) {
                long j = this.f5109b.framePosition;
                if (this.f5111d > j) {
                    this.f5110c++;
                }
                this.f5111d = j;
                this.f5112e = j + (this.f5110c << 32);
            }
            return timestamp;
        }
    }

    public C1288n(AudioTrack audioTrack) {
        if (C1167d0.f4688a >= 19) {
            this.f5102a = new C1289a(audioTrack);
            m33875g();
            return;
        }
        this.f5102a = null;
        m33882a(3);
    }

    /* renamed from: a */
    public void m33883a() {
        if (this.f5103b == 4) {
            m33875g();
        }
    }

    /* renamed from: a */
    public final void m33882a(int i) {
        this.f5103b = i;
        if (i == 0) {
            this.f5106e = 0L;
            this.f5107f = -1L;
            this.f5104c = System.nanoTime() / 1000;
            this.f5105d = 5000L;
        } else if (i == 1) {
            this.f5105d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f5105d = 10000000L;
        } else if (i == 4) {
            this.f5105d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public boolean m33881a(long j) {
        C1289a aVar = this.f5102a;
        boolean z = false;
        if (aVar != null) {
            if (j - this.f5106e < this.f5105d) {
                z = false;
            } else {
                this.f5106e = j;
                boolean c = aVar.m33872c();
                int i = this.f5103b;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    throw new IllegalStateException();
                                }
                            } else if (c) {
                                m33875g();
                            }
                        } else if (!c) {
                            m33875g();
                        }
                    } else if (!c) {
                        m33875g();
                    } else if (this.f5102a.m33874a() > this.f5107f) {
                        m33882a(2);
                    }
                } else if (c) {
                    z = false;
                    if (this.f5102a.m33873b() >= this.f5104c) {
                        this.f5107f = this.f5102a.m33874a();
                        m33882a(1);
                    }
                } else if (j - this.f5104c > 500000) {
                    m33882a(3);
                }
                z = c;
            }
        }
        return z;
    }

    /* renamed from: b */
    public long m33880b() {
        C1289a aVar = this.f5102a;
        return aVar != null ? aVar.m33874a() : -1L;
    }

    /* renamed from: c */
    public long m33879c() {
        C1289a aVar = this.f5102a;
        return aVar != null ? aVar.m33873b() : -9223372036854775807L;
    }

    /* renamed from: d */
    public boolean m33878d() {
        int i = this.f5103b;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: e */
    public boolean m33877e() {
        return this.f5103b == 2;
    }

    /* renamed from: f */
    public void m33876f() {
        m33882a(4);
    }

    /* renamed from: g */
    public void m33875g() {
        if (this.f5102a != null) {
            m33882a(0);
        }
    }
}
