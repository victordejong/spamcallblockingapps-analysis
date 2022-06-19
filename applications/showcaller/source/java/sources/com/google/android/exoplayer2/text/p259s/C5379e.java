package com.google.android.exoplayer2.text.p259s;

import android.text.Layout;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5526o;
/* renamed from: com.google.android.exoplayer2.text.s.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/e.class */
public final class C5379e extends C5317b {

    /* renamed from: s */
    public final long f17217s;

    /* renamed from: t */
    public final long f17218t;

    /* renamed from: com.google.android.exoplayer2.text.s.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/e$b.class */
    public static class C5381b {

        /* renamed from: a */
        private long f17219a;

        /* renamed from: b */
        private long f17220b;

        /* renamed from: c */
        private CharSequence f17221c;

        /* renamed from: d */
        private int f17222d;

        /* renamed from: e */
        private float f17223e;

        /* renamed from: f */
        private int f17224f;

        /* renamed from: g */
        private int f17225g;

        /* renamed from: h */
        private float f17226h;

        /* renamed from: i */
        private int f17227i;

        /* renamed from: j */
        private float f17228j;

        public C5381b() {
            m19408g();
        }

        /* renamed from: b */
        private static float m19413b(float f, int i) {
            int i2 = (f > (-3.4028235E38f) ? 1 : (f == (-3.4028235E38f) ? 0 : -1));
            if (i2 == 0 || i != 0 || (f >= 0.0f && f <= 1.0f)) {
                return i2 != 0 ? f : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        /* renamed from: c */
        private static Layout.Alignment m19412c(int i) {
            if (i != 1) {
                if (i == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            C5526o.m18742f("WebvttCueBuilder", "Unknown textAlignment: " + i);
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        /* renamed from: d */
        private static float m19411d(int i, float f) {
            if (i != 0) {
                if (i == 1) {
                    return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
                } else if (i != 2) {
                    throw new IllegalStateException(String.valueOf(i));
                } else {
                    return f;
                }
            }
            return 1.0f - f;
        }

        /* renamed from: e */
        private static float m19410e(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        /* renamed from: f */
        private static int m19409f(int i) {
            if (i != 1) {
                if (i == 3) {
                    return 2;
                }
                if (i == 4) {
                    return 0;
                }
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        /* renamed from: a */
        public C5379e m19414a() {
            this.f17223e = m19413b(this.f17223e, this.f17224f);
            if (this.f17226h == -3.4028235E38f) {
                this.f17226h = m19410e(this.f17222d);
            }
            if (this.f17227i == Integer.MIN_VALUE) {
                this.f17227i = m19409f(this.f17222d);
            }
            this.f17228j = Math.min(this.f17228j, m19411d(this.f17227i, this.f17226h));
            return new C5379e(this.f17219a, this.f17220b, (CharSequence) C5508e.m18911e(this.f17221c), m19412c(this.f17222d), this.f17223e, this.f17224f, this.f17225g, this.f17226h, this.f17227i, this.f17228j);
        }

        /* renamed from: g */
        public void m19408g() {
            this.f17219a = 0L;
            this.f17220b = 0L;
            this.f17221c = null;
            this.f17222d = 2;
            this.f17223e = -3.4028235E38f;
            this.f17224f = 1;
            this.f17225g = 0;
            this.f17226h = -3.4028235E38f;
            this.f17227i = Integer.MIN_VALUE;
            this.f17228j = 1.0f;
        }

        /* renamed from: h */
        public C5381b m19407h(long j) {
            this.f17220b = j;
            return this;
        }

        /* renamed from: i */
        public C5381b m19406i(float f) {
            this.f17223e = f;
            return this;
        }

        /* renamed from: j */
        public C5381b m19405j(int i) {
            this.f17225g = i;
            return this;
        }

        /* renamed from: k */
        public C5381b m19404k(int i) {
            this.f17224f = i;
            return this;
        }

        /* renamed from: l */
        public C5381b m19403l(float f) {
            this.f17226h = f;
            return this;
        }

        /* renamed from: m */
        public C5381b m19402m(int i) {
            this.f17227i = i;
            return this;
        }

        /* renamed from: n */
        public C5381b m19401n(long j) {
            this.f17219a = j;
            return this;
        }

        /* renamed from: o */
        public C5381b m19400o(CharSequence charSequence) {
            this.f17221c = charSequence;
            return this;
        }

        /* renamed from: p */
        public C5381b m19399p(int i) {
            this.f17222d = i;
            return this;
        }

        /* renamed from: q */
        public C5381b m19398q(float f) {
            this.f17228j = f;
            return this;
        }
    }

    private C5379e(long j, long j2, CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3);
        this.f17217s = j;
        this.f17218t = j2;
    }

    /* renamed from: a */
    public boolean m19415a() {
        return this.f16907h == -3.4028235E38f && this.f16910k == 0.5f;
    }
}
