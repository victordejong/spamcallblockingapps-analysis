package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.AbstractC10976e;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/k.class */
public final class C11421k extends AbstractC10976e implements Handler.Callback {

    /* renamed from: a */
    private final Handler f37700a;

    /* renamed from: b */
    private final AbstractC11420j f37701b;

    /* renamed from: c */
    private final AbstractC11389g f37702c;

    /* renamed from: d */
    private final C11258q f37703d;

    /* renamed from: e */
    private boolean f37704e;

    /* renamed from: f */
    private boolean f37705f;

    /* renamed from: g */
    private boolean f37706g;

    /* renamed from: h */
    private int f37707h;

    /* renamed from: i */
    private Format f37708i;

    /* renamed from: j */
    private AbstractC11386f f37709j;

    /* renamed from: k */
    private C11402h f37710k;

    /* renamed from: l */
    private AbstractC11405i f37711l;

    /* renamed from: m */
    private AbstractC11405i f37712m;

    /* renamed from: n */
    private int f37713n;

    /* renamed from: o */
    private long f37714o;

    public C11421k(AbstractC11420j abstractC11420j, Looper looper) {
        this(abstractC11420j, looper, AbstractC11389g.f37561a);
    }

    public C11421k(AbstractC11420j abstractC11420j, Looper looper, AbstractC11389g abstractC11389g) {
        super(3);
        this.f37701b = (AbstractC11420j) C11593a.m20020b(abstractC11420j);
        this.f37700a = looper == null ? null : C11599af.m19983a(looper, (Handler.Callback) this);
        this.f37702c = abstractC11389g;
        this.f37703d = new C11258q();
        this.f37714o = -9223372036854775807L;
    }

    /* renamed from: A */
    private void m20612A() {
        this.f37710k = null;
        this.f37713n = -1;
        AbstractC11405i abstractC11405i = this.f37711l;
        if (abstractC11405i != null) {
            abstractC11405i.mo19678f();
            this.f37711l = null;
        }
        AbstractC11405i abstractC11405i2 = this.f37712m;
        if (abstractC11405i2 != null) {
            abstractC11405i2.mo19678f();
            this.f37712m = null;
        }
    }

    /* renamed from: B */
    private void m20611B() {
        m20612A();
        ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20753d();
        this.f37709j = null;
        this.f37707h = 0;
    }

    /* renamed from: C */
    private void m20610C() {
        this.f37706g = true;
        this.f37709j = this.f37702c.mo20699b((Format) C11593a.m20020b(this.f37708i));
    }

    /* renamed from: D */
    private void m20609D() {
        m20611B();
        m20610C();
    }

    /* renamed from: E */
    private long m20608E() {
        if (this.f37713n == -1) {
            return Long.MAX_VALUE;
        }
        C11593a.m20020b(this.f37711l);
        if (this.f37713n < this.f37711l.mo20615b()) {
            return this.f37711l.mo20613b_(this.f37713n);
        }
        return Long.MAX_VALUE;
    }

    /* renamed from: a */
    private void m20607a(SubtitleDecoderException subtitleDecoderException) {
        C11617n.m19857b("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f37708i, subtitleDecoderException);
        m20606a(Collections.emptyList());
        m20609D();
    }

    /* renamed from: a */
    private void m20606a(List<C11356b> list) {
        Handler handler = this.f37700a;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            m20605b(list);
        }
    }

    /* renamed from: b */
    private void m20605b(List<C11356b> list) {
        this.f37701b.mo20289a(list);
    }

    @Override // com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: a */
    public final int mo19748a(Format format) {
        if (this.f37702c.mo20700a(format)) {
            return (format.exoMediaCryptoType == null ? 4 : 2) | 0 | 0;
        }
        return C11620q.m19849c(format.sampleMimeType) ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo19749a(long j, long j2) {
        boolean z;
        if (mo21796j()) {
            long j3 = this.f37714o;
            if (j3 != -9223372036854775807L && j >= j3) {
                m20612A();
                this.f37705f = true;
            }
        }
        if (this.f37705f) {
            return;
        }
        if (this.f37712m == null) {
            ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20704a(j);
            try {
                this.f37712m = ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20756b();
            } catch (SubtitleDecoderException e) {
                m20607a(e);
                return;
            }
        }
        if (mo21813C_() != 2) {
            return;
        }
        if (this.f37711l != null) {
            char m20608E = m20608E();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (m20608E > j) {
                    break;
                }
                this.f37713n++;
                m20608E = m20608E();
                z2 = true;
            }
        } else {
            z = false;
        }
        AbstractC11405i abstractC11405i = this.f37712m;
        boolean z3 = z;
        if (abstractC11405i != null) {
            if (abstractC11405i.m21917c()) {
                z3 = z;
                if (!z) {
                    z3 = z;
                    if (m20608E() == Long.MAX_VALUE) {
                        if (this.f37707h == 2) {
                            m20609D();
                            z3 = z;
                        } else {
                            m20612A();
                            this.f37705f = true;
                            z3 = z;
                        }
                    }
                }
            } else {
                z3 = z;
                if (abstractC11405i.f35373b <= j) {
                    AbstractC11405i abstractC11405i2 = this.f37711l;
                    if (abstractC11405i2 != null) {
                        abstractC11405i2.mo19678f();
                    }
                    this.f37713n = abstractC11405i.mo20617a(j);
                    this.f37711l = abstractC11405i;
                    this.f37712m = null;
                    z3 = true;
                }
            }
        }
        if (z3) {
            C11593a.m20020b(this.f37711l);
            m20606a(this.f37711l.mo20614b(j));
        }
        if (this.f37707h == 2) {
            return;
        }
        while (!this.f37704e) {
            try {
                C11402h c11402h = this.f37710k;
                C11402h c11402h2 = c11402h;
                if (c11402h == null) {
                    c11402h2 = ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20761a();
                    if (c11402h2 == null) {
                        return;
                    }
                    this.f37710k = c11402h2;
                }
                if (this.f37707h == 1) {
                    c11402h2.f35344a = 4;
                    ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20757a((AbstractC11386f) c11402h2);
                    this.f37710k = null;
                    this.f37707h = 2;
                    return;
                }
                int a = m21808a(this.f37703d, (DecoderInputBuffer) c11402h2, false);
                if (a == -4) {
                    if (c11402h2.m21917c()) {
                        this.f37704e = true;
                        this.f37706g = false;
                    } else {
                        Format format = this.f37703d.f36928b;
                        if (format == null) {
                            return;
                        }
                        c11402h2.f37633g = format.subsampleOffsetUs;
                        c11402h2.m21921h();
                        this.f37706g &= !c11402h2.m21916d();
                    }
                    if (!this.f37706g) {
                        ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20757a((AbstractC11386f) c11402h2);
                        this.f37710k = null;
                    }
                } else if (a == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e2) {
                m20607a(e2);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19716a(long j, boolean z) {
        m20606a(Collections.emptyList());
        this.f37704e = false;
        this.f37705f = false;
        this.f37714o = -9223372036854775807L;
        if (this.f37707h != 0) {
            m20609D();
            return;
        }
        m20612A();
        ((AbstractC11386f) C11593a.m20020b(this.f37709j)).mo20754c();
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19747a(Format[] formatArr, long j, long j2) {
        this.f37708i = formatArr[0];
        if (this.f37709j != null) {
            this.f37707h = 1;
        } else {
            m20610C();
        }
    }

    /* renamed from: c */
    public final void m20604c(long j) {
        C11593a.m20019b(mo21796j());
        this.f37714o = j;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            m20605b((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: r */
    public final void mo19684r() {
        this.f37708i = null;
        this.f37714o = -9223372036854775807L;
        m20606a(Collections.emptyList());
        m20611B();
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: x */
    public final String mo19682x() {
        return "TextRenderer";
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: y */
    public final boolean mo19681y() {
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: z */
    public final boolean mo19746z() {
        return this.f37705f;
    }
}
