package com.linkedin.android.litr.g;

import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.linkedin.android.litr.b.b;
import com.linkedin.android.litr.b.c;
import com.linkedin.android.litr.d.d;
import com.linkedin.android.litr.d.e;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/a.class */
public class a extends c {
    private static final String p = "a";

    /* renamed from: a  reason: collision with root package name */
    int f33740a = 2;

    /* renamed from: b  reason: collision with root package name */
    int f33741b = 2;

    /* renamed from: c  reason: collision with root package name */
    int f33742c = 2;
    private MediaFormat q = this.f33746d.a(this.j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(d dVar, int i, e eVar, int i2, MediaFormat mediaFormat, com.linkedin.android.litr.e.d dVar2, com.linkedin.android.litr.b.a aVar, b bVar) throws TrackTranscoderException {
        super(dVar, i, eVar, i2, mediaFormat, dVar2, aVar, bVar);
        this.h.a(this.m);
        this.f.a(null, this.q, this.m);
        this.g.a(this.q, (Surface) null);
    }

    @Override // com.linkedin.android.litr.g.c
    public final void a() throws TrackTranscoderException {
        this.f33746d.b(this.j);
        this.h.b();
        this.g.a();
    }

    @Override // com.linkedin.android.litr.g.c
    public final int b() throws TrackTranscoderException {
        int i;
        int i2;
        int i3;
        if (!this.h.c() || !this.g.b()) {
            return -3;
        }
        int i4 = 2;
        i4 = 3;
        if (this.f33740a != 3) {
            int b2 = this.f33746d.b();
            if (b2 == this.j || b2 == -1) {
                int c2 = this.g.c();
                if (c2 >= 0) {
                    c a2 = this.g.a(c2);
                    if (a2 != null) {
                        int a3 = this.f33746d.a(a2.f33667b);
                        long c3 = this.f33746d.c();
                        int d2 = this.f33746d.d();
                        if (a3 <= 0 || (d2 & 4) != 0) {
                            a2.f33668c.set(0, 0, -1L, 4);
                            this.g.a(a2);
                        } else if (c3 >= this.i.f33711b) {
                            a2.f33668c.set(0, 0, -1L, 4);
                            this.g.a(a2);
                            h();
                        } else {
                            a2.f33668c.set(0, a3, c3, d2);
                            this.g.a(a2);
                            this.f33746d.e();
                        }
                        i3 = 3;
                        this.f33740a = i3;
                    } else {
                        throw new TrackTranscoderException(TrackTranscoderException.a.NO_FRAME_AVAILABLE);
                    }
                } else if (c2 != -1) {
                    String str = p;
                    Log.e(str, "Unhandled value " + c2 + " when decoding an input frame");
                }
            }
            i3 = 2;
            this.f33740a = i3;
        }
        if (this.f33741b != 3) {
            int d3 = this.g.d();
            if (d3 >= 0) {
                c b3 = this.g.b(d3);
                if (b3 != null) {
                    if (b3.f33668c.presentationTimeUs >= this.i.f33710a || (b3.f33668c.flags & 4) != 0) {
                        this.f.a(b3, TimeUnit.MICROSECONDS.toNanos(b3.f33668c.presentationTimeUs - this.i.f33710a));
                    }
                    this.g.a(d3, false);
                    if ((b3.f33668c.flags & 4) != 0) {
                        i2 = 3;
                        this.f33741b = i2;
                    }
                } else {
                    throw new TrackTranscoderException(TrackTranscoderException.a.NO_FRAME_AVAILABLE);
                }
            } else if (d3 == -2) {
                this.q = this.g.e();
                this.f.a(this.q, this.m);
                new StringBuilder("Decoder output format changed: ").append(this.q);
            } else if (d3 != -1) {
                String str2 = p;
                Log.e(str2, "Unhandled value " + d3 + " when receiving decoded input frame");
            }
            i2 = 2;
            this.f33741b = i2;
        }
        if (this.f33742c != 3) {
            int e = this.h.e();
            if (e >= 0) {
                c b4 = this.h.b(e);
                if (b4 != null) {
                    if ((b4.f33668c.flags & 4) != 0) {
                        this.o = 1.0f;
                        i = 3;
                    } else {
                        if (b4.f33668c.size > 0 && (b4.f33668c.flags & 2) == 0) {
                            this.e.a(this.k, b4.f33667b, b4.f33668c);
                            if (this.n > 0) {
                                this.o = ((float) b4.f33668c.presentationTimeUs) / ((float) this.n);
                            }
                        }
                        i = 2;
                    }
                    this.h.c(e);
                } else {
                    throw new TrackTranscoderException(TrackTranscoderException.a.NO_FRAME_AVAILABLE);
                }
            } else if (e != -2) {
                if (e != -1) {
                    String str3 = p;
                    Log.e(str3, "Unhandled value " + e + " when receiving encoded output frame");
                }
                i = 2;
            } else {
                MediaFormat f = this.h.f();
                if (!this.l) {
                    this.m = f;
                    this.k = this.e.a(f, this.k);
                    this.l = true;
                    this.f.a(this.q, this.m);
                }
                new StringBuilder("Encoder output format received ").append(f);
                i = 1;
            }
            this.f33742c = i;
        }
        int i5 = this.f33742c;
        if (i5 == 1) {
            i4 = 1;
        }
        if (!(this.f33740a == 3 && this.f33741b == 3 && i5 != 3)) {
        }
        return i4;
    }

    @Override // com.linkedin.android.litr.g.c
    public final void c() {
        this.h.g();
        this.h.h();
        this.g.f();
        this.g.g();
    }
}
