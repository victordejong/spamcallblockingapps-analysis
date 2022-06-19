package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.AbstractC5415u;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5529r;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/k.class */
public final class C5327k extends AbstractC5415u implements Handler.Callback {

    /* renamed from: A */
    private int f16924A;

    /* renamed from: o */
    private final Handler f16925o;

    /* renamed from: p */
    private final AbstractC5326j f16926p;

    /* renamed from: q */
    private final AbstractC5322g f16927q;

    /* renamed from: r */
    private final C5090f0 f16928r;

    /* renamed from: s */
    private boolean f16929s;

    /* renamed from: t */
    private boolean f16930t;

    /* renamed from: u */
    private int f16931u;

    /* renamed from: v */
    private Format f16932v;

    /* renamed from: w */
    private AbstractC5321f f16933w;

    /* renamed from: x */
    private C5324h f16934x;

    /* renamed from: y */
    private AbstractC5325i f16935y;

    /* renamed from: z */
    private AbstractC5325i f16936z;

    public C5327k(AbstractC5326j abstractC5326j, Looper looper) {
        this(abstractC5326j, looper, AbstractC5322g.f16920a);
    }

    public C5327k(AbstractC5326j abstractC5326j, Looper looper, AbstractC5322g abstractC5322g) {
        super(3);
        this.f16926p = (AbstractC5326j) C5508e.m18911e(abstractC5326j);
        this.f16925o = looper == null ? null : C5515h0.m18809s(looper, this);
        this.f16927q = abstractC5322g;
        this.f16928r = new C5090f0();
    }

    /* renamed from: Q */
    private void m19677Q() {
        m19671W(Collections.emptyList());
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: R */
    private long m19676R() {
        int i = this.f16924A;
        return (i == -1 || i >= this.f16935y.mo19368f()) ? (char) 65535 : this.f16935y.mo19370d(this.f16924A);
    }

    /* renamed from: S */
    private void m19675S(List<C5317b> list) {
        this.f16926p.mo18392h(list);
    }

    /* renamed from: T */
    private void m19674T() {
        this.f16934x = null;
        this.f16924A = -1;
        AbstractC5325i abstractC5325i = this.f16935y;
        if (abstractC5325i != null) {
            abstractC5325i.release();
            this.f16935y = null;
        }
        AbstractC5325i abstractC5325i2 = this.f16936z;
        if (abstractC5325i2 != null) {
            abstractC5325i2.release();
            this.f16936z = null;
        }
    }

    /* renamed from: U */
    private void m19673U() {
        m19674T();
        this.f16933w.mo19589b();
        this.f16933w = null;
        this.f16931u = 0;
    }

    /* renamed from: V */
    private void m19672V() {
        m19673U();
        this.f16933w = this.f16927q.mo19680a(this.f16932v);
    }

    /* renamed from: W */
    private void m19671W(List<C5317b> list) {
        Handler handler = this.f16925o;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            m19675S(list);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: G */
    protected void mo18512G() {
        this.f16932v = null;
        m19677Q();
        m19673U();
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: I */
    protected void mo18511I(long j, boolean z) {
        m19677Q();
        this.f16929s = false;
        this.f16930t = false;
        if (this.f16931u != 0) {
            m19672V();
            return;
        }
        m19674T();
        this.f16933w.flush();
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: M */
    public void mo18510M(Format[] formatArr, long j) {
        Format format = formatArr[0];
        this.f16932v = format;
        if (this.f16933w != null) {
            this.f16931u = 1;
        } else {
            this.f16933w = this.f16927q.mo19680a(format);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5315t0
    /* renamed from: b */
    public int mo18507b(Format format) {
        if (this.f16927q.mo19679b(format)) {
            return C5191s0.m20194a(AbstractC5415u.m19262P(null, format.f14464o) ? 4 : 2);
        }
        return C5529r.m18724m(format.f14461l) ? C5191s0.m20194a(1) : C5191s0.m20194a(0);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: c */
    public boolean mo18506c() {
        return this.f16930t;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: e */
    public boolean mo18505e() {
        return true;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            m19675S((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: q */
    public void mo18504q(long j, long j2) {
        boolean z;
        if (this.f16930t) {
            return;
        }
        if (this.f16936z == null) {
            this.f16933w.mo19590a(j);
            try {
                this.f16936z = this.f16933w.mo19588c();
            } catch (SubtitleDecoderException e) {
                throw m19244z(e, this.f16932v);
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f16935y != null) {
            char m19676R = m19676R();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (m19676R > j) {
                    break;
                }
                this.f16924A++;
                m19676R = m19676R();
                z2 = true;
            }
        } else {
            z = false;
        }
        AbstractC5325i abstractC5325i = this.f16936z;
        boolean z3 = z;
        if (abstractC5325i != null) {
            if (abstractC5325i.isEndOfStream()) {
                z3 = z;
                if (!z) {
                    z3 = z;
                    if (m19676R() == Long.MAX_VALUE) {
                        if (this.f16931u == 2) {
                            m19672V();
                            z3 = z;
                        } else {
                            m19674T();
                            this.f16930t = true;
                            z3 = z;
                        }
                    }
                }
            } else {
                z3 = z;
                if (this.f16936z.timeUs <= j) {
                    AbstractC5325i abstractC5325i2 = this.f16935y;
                    if (abstractC5325i2 != null) {
                        abstractC5325i2.release();
                    }
                    AbstractC5325i abstractC5325i3 = this.f16936z;
                    this.f16935y = abstractC5325i3;
                    this.f16936z = null;
                    this.f16924A = abstractC5325i3.mo19371a(j);
                    z3 = true;
                }
            }
        }
        if (z3) {
            m19671W(this.f16935y.mo19369e(j));
        }
        if (this.f16931u == 2) {
            return;
        }
        while (!this.f16929s) {
            try {
                if (this.f16934x == null) {
                    C5324h mo19587d = this.f16933w.mo19587d();
                    this.f16934x = mo19587d;
                    if (mo19587d == null) {
                        return;
                    }
                }
                if (this.f16931u == 1) {
                    this.f16934x.setFlags(4);
                    this.f16933w.mo19586e(this.f16934x);
                    this.f16934x = null;
                    this.f16931u = 2;
                    return;
                }
                int m19264N = m19264N(this.f16928r, this.f16934x, false);
                if (m19264N == -4) {
                    if (this.f16934x.isEndOfStream()) {
                        this.f16929s = true;
                    } else {
                        C5324h c5324h = this.f16934x;
                        c5324h.f16921i = this.f16928r.f15930c.f14465p;
                        c5324h.m21427i();
                    }
                    this.f16933w.mo19586e(this.f16934x);
                    this.f16934x = null;
                } else if (m19264N == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e2) {
                throw m19244z(e2, this.f16932v);
            }
        }
    }
}
