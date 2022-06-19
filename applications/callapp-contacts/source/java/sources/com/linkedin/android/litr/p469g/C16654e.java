package com.linkedin.android.litr.p469g;

import android.media.MediaFormat;
import android.opengl.EGL14;
import android.util.Log;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p460b.AbstractC16614a;
import com.linkedin.android.litr.p460b.AbstractC16615b;
import com.linkedin.android.litr.p460b.C16616c;
import com.linkedin.android.litr.p461c.AbstractC16622a;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.AbstractC16636e;
import com.linkedin.android.litr.p467e.AbstractC16641d;
import com.linkedin.android.litr.p467e.C16639b;
import com.linkedin.android.litr.p467e.C16642e;
import com.linkedin.android.litr.p467e.C16643f;
import java.util.concurrent.TimeUnit;
/* renamed from: com.linkedin.android.litr.g.e */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/e.class */
public class C16654e extends AbstractC16652c {

    /* renamed from: q */
    private static final String f58604q = "e";

    /* renamed from: a */
    int f58605a = 2;

    /* renamed from: b */
    int f58606b = 2;

    /* renamed from: c */
    int f58607c = 2;

    /* renamed from: p */
    C16639b f58608p;

    /* renamed from: r */
    private MediaFormat f58609r;

    /* renamed from: s */
    private MediaFormat f58610s;

    public C16654e(AbstractC16635d abstractC16635d, int i, AbstractC16636e abstractC16636e, int i2, MediaFormat mediaFormat, AbstractC16641d abstractC16641d, AbstractC16614a abstractC16614a, AbstractC16615b abstractC16615b) throws TrackTranscoderException {
        super(abstractC16635d, i, abstractC16636e, i2, mediaFormat, abstractC16641d, abstractC16614a, abstractC16615b);
        this.f58610s = mediaFormat;
        if (!(abstractC16641d instanceof C16639b)) {
            throw new IllegalArgumentException("Cannot use non-OpenGL video renderer in " + C16654e.class.getSimpleName());
        }
        this.f58608p = (C16639b) abstractC16641d;
        MediaFormat mo6859a = this.f58591d.mo6859a(this.f58597j);
        this.f58609r = mo6859a;
        if (mo6859a.containsKey("frame-rate")) {
            this.f58610s.setInteger("frame-rate", this.f58609r.getInteger("frame-rate"));
        }
        this.f58595h.mo6888a(this.f58600m);
        this.f58608p.mo6832a(this.f58595h.mo6891a(), this.f58609r, this.f58610s);
        AbstractC16614a abstractC16614a2 = this.f58594g;
        MediaFormat mediaFormat2 = this.f58609r;
        C16639b c16639b = this.f58608p;
        abstractC16614a2.mo6901a(mediaFormat2, c16639b.f58549b != null ? c16639b.f58549b.f58561b : null);
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: a */
    public final void mo6817a() throws TrackTranscoderException {
        this.f58591d.mo6855b(this.f58597j);
        this.f58595h.mo6886b();
        this.f58594g.mo6904a();
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: b */
    public final int mo6816b() throws TrackTranscoderException {
        int i;
        int i2;
        int i3;
        if (!this.f58595h.mo6884c() || !this.f58594g.mo6899b()) {
            return -3;
        }
        if (this.f58605a != 3) {
            int mo6856b = this.f58591d.mo6856b();
            if (mo6856b == this.f58597j || mo6856b == -1) {
                int mo6897c = this.f58594g.mo6897c();
                if (mo6897c >= 0) {
                    C16616c mo6903a = this.f58594g.mo6903a(mo6897c);
                    if (mo6903a == null) {
                        throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.NO_FRAME_AVAILABLE);
                    }
                    int mo6857a = this.f58591d.mo6857a(mo6903a.f58466b);
                    long mo6854c = this.f58591d.mo6854c();
                    int mo6853d = this.f58591d.mo6853d();
                    if (mo6857a <= 0 || (mo6853d & 4) != 0) {
                        mo6903a.f58467c.set(0, 0, -1L, 4);
                        this.f58594g.mo6900a(mo6903a);
                    } else if (mo6854c >= this.f58596i.f58546b) {
                        mo6903a.f58467c.set(0, 0, -1L, 4);
                        this.f58594g.mo6900a(mo6903a);
                        m6819h();
                    } else {
                        mo6903a.f58467c.set(0, mo6857a, mo6854c, mo6853d);
                        this.f58594g.mo6900a(mo6903a);
                        this.f58591d.mo6852e();
                    }
                    i3 = 3;
                    this.f58605a = i3;
                } else if (mo6897c != -1) {
                    Log.e(f58604q, "Unhandled value " + mo6897c + " when decoding an input frame");
                }
            }
            i3 = 2;
            this.f58605a = i3;
        }
        if (this.f58606b != 3) {
            int mo6896d = this.f58594g.mo6896d();
            if (mo6896d >= 0) {
                C16616c mo6898b = this.f58594g.mo6898b(mo6896d);
                if (mo6898b == null) {
                    throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.NO_FRAME_AVAILABLE);
                }
                boolean z = false;
                if ((mo6898b.f58467c.flags & 4) != 0) {
                    this.f58594g.mo6902a(mo6896d, false);
                    this.f58595h.mo6882d();
                    i2 = 3;
                    this.f58606b = i2;
                } else {
                    if (mo6898b.f58467c.presentationTimeUs >= this.f58596i.f58545a) {
                        z = true;
                    }
                    this.f58594g.mo6902a(mo6896d, z);
                    if (z) {
                        this.f58608p.mo6831a((C16616c) null, TimeUnit.MICROSECONDS.toNanos(mo6898b.f58467c.presentationTimeUs - this.f58596i.f58545a));
                    }
                }
            } else if (mo6896d == -2) {
                this.f58609r = this.f58594g.mo6895e();
                new StringBuilder("Decoder output format changed: ").append(this.f58609r);
            } else if (mo6896d != -1) {
                Log.e(f58604q, "Unhandled value " + mo6896d + " when receiving decoded input frame");
            }
            i2 = 2;
            this.f58606b = i2;
        }
        if (this.f58607c != 3) {
            int mo6881e = this.f58595h.mo6881e();
            if (mo6881e >= 0) {
                C16616c mo6885b = this.f58595h.mo6885b(mo6881e);
                if (mo6885b == null) {
                    throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.NO_FRAME_AVAILABLE);
                }
                if ((mo6885b.f58467c.flags & 4) != 0) {
                    this.f58602o = 1.0f;
                    i = 3;
                } else {
                    if (mo6885b.f58467c.size > 0 && (mo6885b.f58467c.flags & 2) == 0) {
                        this.f58592e.mo6847a(this.f58598k, mo6885b.f58466b, mo6885b.f58467c);
                        if (this.f58601n > 0) {
                            this.f58602o = ((float) mo6885b.f58467c.presentationTimeUs) / ((float) this.f58601n);
                        }
                    }
                    i = 2;
                }
                this.f58595h.mo6883c(mo6881e);
            } else if (mo6881e != -2) {
                if (mo6881e != -1) {
                    Log.e(f58604q, "Unhandled value " + mo6881e + " when receiving encoded output frame");
                }
                i = 2;
            } else {
                MediaFormat mo6880f = this.f58595h.mo6880f();
                if (!this.f58599l) {
                    this.f58600m = mo6880f;
                    this.f58610s = mo6880f;
                    this.f58598k = this.f58592e.mo6846a(mo6880f, this.f58598k);
                    this.f58599l = true;
                }
                new StringBuilder("Encoder output format received ").append(mo6880f);
                i = 1;
            }
            this.f58607c = i;
        }
        int i4 = this.f58607c;
        int i5 = 2;
        if (i4 == 1) {
            i5 = 1;
        }
        if (this.f58605a == 3 && this.f58606b == 3 && i4 == 3) {
            i5 = 3;
        }
        return i5;
    }

    @Override // com.linkedin.android.litr.p469g.AbstractC16652c
    /* renamed from: c */
    public final void mo6815c() {
        this.f58595h.mo6879g();
        this.f58595h.mo6878h();
        this.f58594g.mo6894f();
        this.f58594g.mo6893g();
        C16639b c16639b = this.f58608p;
        for (AbstractC16622a abstractC16622a : c16639b.f58551d) {
            abstractC16622a.mo6870b();
        }
        C16642e c16642e = c16639b.f58549b;
        if (c16642e.f58561b != null) {
            c16642e.f58561b.release();
            c16642e.f58561b = null;
        }
        C16643f c16643f = c16639b.f58550c;
        if (c16643f.f58565a != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglDestroySurface(c16643f.f58565a, c16643f.f58567c);
            EGL14.eglDestroyContext(c16643f.f58565a, c16643f.f58566b);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(c16643f.f58565a);
            c16643f.f58565a = EGL14.EGL_NO_DISPLAY;
            c16643f.f58566b = EGL14.EGL_NO_CONTEXT;
            c16643f.f58567c = EGL14.EGL_NO_SURFACE;
        }
        if (c16643f.f58568d != null) {
            c16643f.f58568d.release();
            c16643f.f58568d = null;
        }
    }
}
