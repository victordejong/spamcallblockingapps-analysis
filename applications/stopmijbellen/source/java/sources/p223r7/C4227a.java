package p223r7;

import com.koushikdutta.async.http.filter.ChunkedDataException;
import p124i4.C3102d;
import p148k7.AbstractC3360m;
import p148k7.C3358l;
import p148k7.C3367r;
import p237t.C4350g;
/* renamed from: r7.a */
/* loaded from: classes2-dex2jar.jar:r7/a.class */
public class C4227a extends C3367r {

    /* renamed from: h */
    public int f13240h = 0;

    /* renamed from: i */
    public int f13241i = 0;

    /* renamed from: j */
    public int f13242j = 1;

    /* renamed from: k */
    public C3358l f13243k = new C3358l();

    @Override // p148k7.C3367r, p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        if (this.f13242j == 8) {
            c3358l.m2339n();
            return;
        }
        while (c3358l.f11382c > 0) {
            try {
                int m1021c = C4350g.m1021c(this.f13242j);
                if (m1021c == 0) {
                    char m2346g = c3358l.m2346g();
                    if (m2346g == '\r') {
                        this.f13242j = 2;
                    } else {
                        int i = this.f13240h * 16;
                        this.f13240h = i;
                        if (m2346g >= 'a' && m2346g <= 'f') {
                            this.f13240h = (m2346g - 'a') + 10 + i;
                        } else if (m2346g >= '0' && m2346g <= '9') {
                            this.f13240h = (m2346g - '0') + i;
                        } else if (m2346g < 'A' || m2346g > 'F') {
                            mo1262n(new ChunkedDataException("invalid chunk length: " + m2346g));
                            return;
                        } else {
                            this.f13240h = (m2346g - 'A') + 10 + i;
                        }
                    }
                    this.f13241i = this.f13240h;
                } else if (m1021c != 1) {
                    if (m1021c == 3) {
                        int min = Math.min(this.f13241i, c3358l.f11382c);
                        int i2 = this.f13241i - min;
                        this.f13241i = i2;
                        if (i2 == 0) {
                            this.f13242j = 5;
                        }
                        if (min != 0) {
                            c3358l.m2349d(this.f13243k, min);
                            C3102d.m2623p(this, this.f13243k);
                        }
                    } else if (m1021c != 4) {
                        if (m1021c != 5) {
                            if (m1021c == 6) {
                                return;
                            }
                        } else if (!m1269p(c3358l.m2346g(), '\n')) {
                            return;
                        } else {
                            if (this.f13240h > 0) {
                                this.f13242j = 1;
                            } else {
                                this.f13242j = 7;
                                mo1262n(null);
                            }
                            this.f13240h = 0;
                        }
                    } else if (!m1269p(c3358l.m2346g(), '\r')) {
                        return;
                    } else {
                        this.f13242j = 6;
                    }
                } else if (!m1269p(c3358l.m2346g(), '\n')) {
                    return;
                } else {
                    this.f13242j = 4;
                }
            } catch (Exception e) {
                mo1262n(e);
                return;
            }
        }
    }

    @Override // p148k7.AbstractC3361n
    /* renamed from: n */
    public void mo1262n(Exception exc) {
        ChunkedDataException chunkedDataException = exc;
        if (exc == null) {
            chunkedDataException = exc;
            if (this.f13242j != 7) {
                chunkedDataException = new ChunkedDataException("chunked input ended before final chunk");
            }
        }
        super.mo1262n(chunkedDataException);
    }

    /* renamed from: p */
    public final boolean m1269p(char c, char c2) {
        if (c != c2) {
            this.f13242j = 8;
            mo1262n(new ChunkedDataException(c2 + " was expected, got " + c));
            return false;
        }
        return true;
    }
}
