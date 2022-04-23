package com.linkedin.android.litr.g;

import android.media.MediaFormat;
import android.opengl.EGL14;
import android.util.Log;
import com.linkedin.android.litr.b.a;
import com.linkedin.android.litr.b.c;
import com.linkedin.android.litr.d.d;
import com.linkedin.android.litr.e.b;
import com.linkedin.android.litr.e.f;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/e.class */
public class e extends c {
    private static final String q = "e";

    /* renamed from: a  reason: collision with root package name */
    int f33748a = 2;

    /* renamed from: b  reason: collision with root package name */
    int f33749b = 2;

    /* renamed from: c  reason: collision with root package name */
    int f33750c = 2;
    b p;
    private MediaFormat r;
    private MediaFormat s;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, int i, com.linkedin.android.litr.d.e eVar, int i2, MediaFormat mediaFormat, com.linkedin.android.litr.e.d dVar2, a aVar, com.linkedin.android.litr.b.b bVar) throws TrackTranscoderException {
        super(dVar, i, eVar, i2, mediaFormat, dVar2, aVar, bVar);
        this.s = mediaFormat;
        if (dVar2 instanceof b) {
            this.p = (b) dVar2;
            MediaFormat a2 = this.f33746d.a(this.j);
            this.r = a2;
            if (a2.containsKey("frame-rate")) {
                this.s.setInteger("frame-rate", this.r.getInteger("frame-rate"));
            }
            this.h.a(this.m);
            this.p.a(this.h.a(), this.r, this.s);
            a aVar2 = this.g;
            MediaFormat mediaFormat2 = this.r;
            b bVar2 = this.p;
            aVar2.a(mediaFormat2, bVar2.f33714b != null ? bVar2.f33714b.f33722b : null);
            return;
        }
        throw new IllegalArgumentException("Cannot use non-OpenGL video renderer in " + e.class.getSimpleName());
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
        if (this.f33748a != 3) {
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
                        this.f33748a = i3;
                    } else {
                        throw new TrackTranscoderException(TrackTranscoderException.a.NO_FRAME_AVAILABLE);
                    }
                } else if (c2 != -1) {
                    String str = q;
                    Log.e(str, "Unhandled value " + c2 + " when decoding an input frame");
                }
            }
            i3 = 2;
            this.f33748a = i3;
        }
        if (this.f33749b != 3) {
            int d3 = this.g.d();
            if (d3 >= 0) {
                c b3 = this.g.b(d3);
                if (b3 != null) {
                    boolean z = false;
                    if ((b3.f33668c.flags & 4) != 0) {
                        this.g.a(d3, false);
                        this.h.d();
                        i2 = 3;
                        this.f33749b = i2;
                    } else {
                        if (b3.f33668c.presentationTimeUs >= this.i.f33710a) {
                            z = true;
                        }
                        this.g.a(d3, z);
                        if (z) {
                            this.p.a((c) null, TimeUnit.MICROSECONDS.toNanos(b3.f33668c.presentationTimeUs - this.i.f33710a));
                        }
                    }
                } else {
                    throw new TrackTranscoderException(TrackTranscoderException.a.NO_FRAME_AVAILABLE);
                }
            } else if (d3 == -2) {
                this.r = this.g.e();
                new StringBuilder("Decoder output format changed: ").append(this.r);
            } else if (d3 != -1) {
                String str2 = q;
                Log.e(str2, "Unhandled value " + d3 + " when receiving decoded input frame");
            }
            i2 = 2;
            this.f33749b = i2;
        }
        if (this.f33750c != 3) {
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
                    String str3 = q;
                    Log.e(str3, "Unhandled value " + e + " when receiving encoded output frame");
                }
                i = 2;
            } else {
                MediaFormat f = this.h.f();
                if (!this.l) {
                    this.m = f;
                    this.s = f;
                    this.k = this.e.a(f, this.k);
                    this.l = true;
                }
                new StringBuilder("Encoder output format received ").append(f);
                i = 1;
            }
            this.f33750c = i;
        }
        int i5 = this.f33750c;
        if (i5 == 1) {
            i4 = 1;
        }
        if (!(this.f33748a == 3 && this.f33749b == 3 && i5 != 3)) {
        }
        return i4;
    }

    @Override // com.linkedin.android.litr.g.c
    public final void c() {
        this.h.g();
        this.h.h();
        this.g.f();
        this.g.g();
        b bVar = this.p;
        for (com.linkedin.android.litr.c.a aVar : bVar.f33716d) {
            aVar.b();
        }
        com.linkedin.android.litr.e.e eVar = bVar.f33714b;
        if (eVar.f33722b != null) {
            eVar.f33722b.release();
            eVar.f33722b = null;
        }
        f fVar = bVar.f33715c;
        if (fVar.f33725a != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglDestroySurface(fVar.f33725a, fVar.f33727c);
            EGL14.eglDestroyContext(fVar.f33725a, fVar.f33726b);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(fVar.f33725a);
            fVar.f33725a = EGL14.EGL_NO_DISPLAY;
            fVar.f33726b = EGL14.EGL_NO_CONTEXT;
            fVar.f33727c = EGL14.EGL_NO_SURFACE;
        }
        if (fVar.f33728d != null) {
            fVar.f33728d.release();
            fVar.f33728d = null;
        }
    }
}
