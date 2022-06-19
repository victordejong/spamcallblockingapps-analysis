package androidx.media2.exoplayer.external.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.AbstractC1435b;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2012m;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/j.class */
public final class C1920j extends AbstractC1435b implements Handler.Callback {

    /* renamed from: a */
    private final Handler f7717a;

    /* renamed from: b */
    private final AbstractC1919i f7718b;

    /* renamed from: c */
    private final AbstractC1892f f7719c;

    /* renamed from: d */
    private final C2058x f7720d;

    /* renamed from: e */
    private boolean f7721e;

    /* renamed from: f */
    private boolean f7722f;

    /* renamed from: g */
    private int f7723g;

    /* renamed from: h */
    private Format f7724h;

    /* renamed from: i */
    private AbstractC1889e f7725i;

    /* renamed from: j */
    private C1902g f7726j;

    /* renamed from: k */
    private AbstractC1905h f7727k;

    /* renamed from: l */
    private AbstractC1905h f7728l;

    /* renamed from: m */
    private int f7729m;

    public C1920j(AbstractC1919i abstractC1919i, Looper looper) {
        this(abstractC1919i, looper, AbstractC1892f.f7593a);
    }

    public C1920j(AbstractC1919i abstractC1919i, Looper looper, AbstractC1892f abstractC1892f) {
        super(3);
        this.f7718b = (AbstractC1919i) C1993a.m41690a(abstractC1919i);
        this.f7717a = looper == null ? null : C1996ac.m41665a(looper, (Handler.Callback) this);
        this.f7719c = abstractC1892f;
        this.f7720d = new C2058x();
    }

    /* renamed from: A */
    private void m41879A() {
        m41874z();
        this.f7725i.mo41985d();
        this.f7725i = null;
        this.f7723g = 0;
    }

    /* renamed from: B */
    private void m41878B() {
        m41879A();
        this.f7725i = this.f7719c.mo41946b(this.f7724h);
    }

    /* renamed from: C */
    private long m41877C() {
        int i = this.f7729m;
        if (i == -1 || i >= this.f7727k.mo41882b()) {
            return Long.MAX_VALUE;
        }
        return this.f7727k.mo41883a_(this.f7729m);
    }

    /* renamed from: a */
    private void m41876a(List<C1856a> list) {
        Handler handler = this.f7717a;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            m41875b(list);
        }
    }

    /* renamed from: b */
    private void m41875b(List<C1856a> list) {
        this.f7718b.mo41880a(list);
    }

    /* renamed from: z */
    private void m41874z() {
        this.f7726j = null;
        this.f7729m = -1;
        AbstractC1905h abstractC1905h = this.f7727k;
        if (abstractC1905h != null) {
            abstractC1905h.mo41914f();
            this.f7727k = null;
        }
        AbstractC1905h abstractC1905h2 = this.f7728l;
        if (abstractC1905h2 != null) {
            abstractC1905h2.mo41914f();
            this.f7728l = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: a */
    public final int mo41178a(Format format) {
        return this.f7719c.mo41947a(format) ? m42934a((AbstractC1468k<?>) null, format.drmInitData) ? 4 : 2 : C2012m.m41572c(format.sampleMimeType) ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo41180a(long j, long j2) throws ExoPlaybackException {
        boolean z;
        if (this.f7722f) {
            return;
        }
        if (this.f7728l == null) {
            this.f7725i.mo41951a(j);
            try {
                this.f7728l = this.f7725i.mo41988b();
            } catch (SubtitleDecoderException e) {
                throw ExoPlaybackException.m43169a(e, m42915v());
            }
        }
        if (mo42923i_() != 2) {
            return;
        }
        if (this.f7727k != null) {
            char m41877C = m41877C();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (m41877C > j) {
                    break;
                }
                this.f7729m++;
                m41877C = m41877C();
                z2 = true;
            }
        } else {
            z = false;
        }
        AbstractC1905h abstractC1905h = this.f7728l;
        boolean z3 = z;
        if (abstractC1905h != null) {
            if (abstractC1905h.m42911c()) {
                z3 = z;
                if (!z) {
                    z3 = z;
                    if (m41877C() == Long.MAX_VALUE) {
                        if (this.f7723g == 2) {
                            m41878B();
                            z3 = z;
                        } else {
                            m41874z();
                            this.f7722f = true;
                            z3 = z;
                        }
                    }
                }
            } else {
                z3 = z;
                if (this.f7728l.f5498b <= j) {
                    AbstractC1905h abstractC1905h2 = this.f7727k;
                    if (abstractC1905h2 != null) {
                        abstractC1905h2.mo41914f();
                    }
                    AbstractC1905h abstractC1905h3 = this.f7728l;
                    this.f7727k = abstractC1905h3;
                    this.f7728l = null;
                    this.f7729m = abstractC1905h3.mo41884a(j);
                    z3 = true;
                }
            }
        }
        if (z3) {
            m41876a(this.f7727k.mo41881b(j));
        }
        if (this.f7723g == 2) {
            return;
        }
        while (!this.f7721e) {
            try {
                if (this.f7726j == null) {
                    C1902g a = this.f7725i.mo41992a();
                    this.f7726j = a;
                    if (a == null) {
                        return;
                    }
                }
                if (this.f7723g == 1) {
                    this.f7726j.f5471a = 4;
                    this.f7725i.mo41989a((AbstractC1889e) this.f7726j);
                    this.f7726j = null;
                    this.f7723g = 2;
                    return;
                }
                int a2 = m42933a(this.f7720d, (C1442e) this.f7726j, false);
                if (a2 == -4) {
                    if (this.f7726j.m42911c()) {
                        this.f7721e = true;
                    } else {
                        this.f7726j.f7650f = this.f7720d.f8282c.subsampleOffsetUs;
                        this.f7726j.m42903h();
                    }
                    this.f7725i.mo41989a((AbstractC1889e) this.f7726j);
                    this.f7726j = null;
                } else if (a2 == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e2) {
                throw ExoPlaybackException.m43169a(e2, m42915v());
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41179a(long j, boolean z) {
        m41876a(Collections.emptyList());
        this.f7721e = false;
        this.f7722f = false;
        if (this.f7723g != 0) {
            m41878B();
            return;
        }
        m41874z();
        this.f7725i.mo41986c();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
        Format format = formatArr[0];
        this.f7724h = format;
        if (this.f7725i != null) {
            this.f7723g = 1;
        } else {
            this.f7725i = this.f7719c.mo41946b(format);
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            m41875b((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: r */
    public final void mo41429r() {
        this.f7724h = null;
        m41876a(Collections.emptyList());
        m41879A();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public final boolean mo41174x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: y */
    public final boolean mo41173y() {
        return this.f7722f;
    }
}
