package com.linkedin.android.litr.p469g;

import android.media.MediaFormat;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p460b.AbstractC16614a;
import com.linkedin.android.litr.p460b.AbstractC16615b;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.AbstractC16636e;
import com.linkedin.android.litr.p466d.C16634c;
import com.linkedin.android.litr.p467e.AbstractC16641d;
/* renamed from: com.linkedin.android.litr.g.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/c.class */
public abstract class AbstractC16652c {

    /* renamed from: d */
    protected final AbstractC16635d f58591d;

    /* renamed from: e */
    protected final AbstractC16636e f58592e;

    /* renamed from: f */
    protected final AbstractC16641d f58593f;

    /* renamed from: g */
    protected final AbstractC16614a f58594g;

    /* renamed from: h */
    protected final AbstractC16615b f58595h;

    /* renamed from: i */
    protected final C16634c f58596i;

    /* renamed from: j */
    protected int f58597j;

    /* renamed from: k */
    protected int f58598k;

    /* renamed from: l */
    protected boolean f58599l;

    /* renamed from: m */
    protected MediaFormat f58600m;

    /* renamed from: n */
    protected long f58601n;

    /* renamed from: o */
    protected float f58602o;

    public AbstractC16652c(AbstractC16635d abstractC16635d, int i, AbstractC16636e abstractC16636e, int i2, MediaFormat mediaFormat, AbstractC16641d abstractC16641d, AbstractC16614a abstractC16614a, AbstractC16615b abstractC16615b) {
        this.f58601n = -1L;
        this.f58591d = abstractC16635d;
        this.f58597j = i;
        this.f58598k = i2;
        this.f58592e = abstractC16636e;
        this.f58600m = mediaFormat;
        this.f58593f = abstractC16641d;
        this.f58594g = abstractC16614a;
        this.f58595h = abstractC16615b;
        C16634c mo6849h = abstractC16635d.mo6849h();
        this.f58596i = mo6849h;
        MediaFormat mo6859a = abstractC16635d.mo6859a(i);
        if (mo6859a.containsKey("durationUs")) {
            long j = mo6859a.getLong("durationUs");
            this.f58601n = j;
            if (mediaFormat != null) {
                mediaFormat.setLong("durationUs", j);
            }
        }
        if (mo6849h.f58546b >= mo6849h.f58545a) {
            long min = Math.min(this.f58601n, mo6849h.f58546b);
            this.f58601n = min;
            this.f58601n = min - mo6849h.f58545a;
            return;
        }
        throw new IllegalArgumentException("Range end should be greater than range start");
    }

    /* renamed from: a */
    public abstract void mo6817a() throws TrackTranscoderException;

    /* renamed from: b */
    public abstract int mo6816b() throws TrackTranscoderException;

    /* renamed from: c */
    public abstract void mo6815c();

    /* renamed from: d */
    public String mo6823d() throws TrackTranscoderException {
        return this.f58595h.mo6877i();
    }

    /* renamed from: e */
    public String mo6822e() throws TrackTranscoderException {
        return this.f58594g.mo6892h();
    }

    /* renamed from: f */
    public final float m6821f() {
        return this.f58602o;
    }

    /* renamed from: g */
    public final MediaFormat m6820g() {
        return this.f58600m;
    }

    /* renamed from: h */
    public final void m6819h() {
        while (this.f58591d.mo6856b() == this.f58597j) {
            this.f58591d.mo6852e();
            if ((this.f58591d.mo6853d() & 4) != 0) {
                return;
            }
        }
    }
}
