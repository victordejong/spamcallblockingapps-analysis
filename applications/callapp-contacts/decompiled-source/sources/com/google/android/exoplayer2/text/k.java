package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/k.class */
public final class k extends e implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f21895a;

    /* renamed from: b  reason: collision with root package name */
    private final j f21896b;

    /* renamed from: c  reason: collision with root package name */
    private final g f21897c;

    /* renamed from: d  reason: collision with root package name */
    private final q f21898d;
    private boolean e;
    private boolean f;
    private boolean g;
    private int h;
    private Format i;
    private f j;
    private h k;
    private i l;
    private i m;
    private int n;
    private long o;

    public k(j jVar, Looper looper) {
        this(jVar, looper, g.f21821a);
    }

    public k(j jVar, Looper looper, g gVar) {
        super(3);
        this.f21896b = (j) a.b(jVar);
        this.f21895a = looper == null ? null : af.a(looper, (Handler.Callback) this);
        this.f21897c = gVar;
        this.f21898d = new q();
        this.o = -9223372036854775807L;
    }

    private void A() {
        this.k = null;
        this.n = -1;
        i iVar = this.l;
        if (iVar != null) {
            iVar.f();
            this.l = null;
        }
        i iVar2 = this.m;
        if (iVar2 != null) {
            iVar2.f();
            this.m = null;
        }
    }

    private void B() {
        A();
        ((f) a.b(this.j)).d();
        this.j = null;
        this.h = 0;
    }

    private void C() {
        this.g = true;
        this.j = this.f21897c.b((Format) a.b(this.i));
    }

    private void D() {
        B();
        C();
    }

    private long E() {
        if (this.n == -1) {
            return Long.MAX_VALUE;
        }
        a.b(this.l);
        if (this.n >= this.l.b()) {
            return Long.MAX_VALUE;
        }
        return this.l.b_(this.n);
    }

    private void a(SubtitleDecoderException subtitleDecoderException) {
        n.b("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.i, subtitleDecoderException);
        a(Collections.emptyList());
        D();
    }

    private void a(List<b> list) {
        Handler handler = this.f21895a;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            b(list);
        }
    }

    private void b(List<b> list) {
        this.f21896b.a(list);
    }

    @Override // com.google.android.exoplayer2.ag
    public final int a(Format format) {
        if (!this.f21897c.a(format)) {
            return com.google.android.exoplayer2.util.q.c(format.sampleMimeType) ? 1 : 0;
        }
        return (format.exoMediaCryptoType == null ? 4 : 2) | 0 | 0;
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(long j, long j2) {
        boolean z;
        if (j()) {
            long j3 = this.o;
            if (j3 != -9223372036854775807L && j >= j3) {
                A();
                this.f = true;
            }
        }
        if (!this.f) {
            if (this.m == null) {
                ((f) a.b(this.j)).a(j);
                try {
                    this.m = ((f) a.b(this.j)).b();
                } catch (SubtitleDecoderException e) {
                    a(e);
                    return;
                }
            }
            if (C_() == 2) {
                if (this.l != null) {
                    long E = E();
                    z = false;
                    while (E <= j) {
                        this.n++;
                        E = E();
                        z = true;
                    }
                } else {
                    z = false;
                }
                i iVar = this.m;
                boolean z2 = z;
                if (iVar != null) {
                    if (iVar.c()) {
                        z2 = z;
                        if (!z) {
                            z2 = z;
                            if (E() == Long.MAX_VALUE) {
                                if (this.h == 2) {
                                    D();
                                    z2 = z;
                                } else {
                                    A();
                                    this.f = true;
                                    z2 = z;
                                }
                            }
                        }
                    } else {
                        z2 = z;
                        if (iVar.f20841b <= j) {
                            i iVar2 = this.l;
                            if (iVar2 != null) {
                                iVar2.f();
                            }
                            this.n = iVar.a(j);
                            this.l = iVar;
                            this.m = null;
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    a.b(this.l);
                    a(this.l.b(j));
                }
                if (this.h != 2) {
                    while (!this.e) {
                        try {
                            h hVar = this.k;
                            h hVar2 = hVar;
                            if (hVar == null) {
                                hVar2 = ((f) a.b(this.j)).a();
                                if (hVar2 != null) {
                                    this.k = hVar2;
                                } else {
                                    return;
                                }
                            }
                            if (this.h == 1) {
                                hVar2.f20826a = 4;
                                ((f) a.b(this.j)).a((f) hVar2);
                                this.k = null;
                                this.h = 2;
                                return;
                            }
                            int a2 = a(this.f21898d, (DecoderInputBuffer) hVar2, false);
                            if (a2 == -4) {
                                if (hVar2.c()) {
                                    this.e = true;
                                    this.g = false;
                                } else {
                                    Format format = this.f21898d.f21512b;
                                    if (format != null) {
                                        hVar2.g = format.subsampleOffsetUs;
                                        hVar2.h();
                                        this.g &= !hVar2.d();
                                    } else {
                                        return;
                                    }
                                }
                                if (!this.g) {
                                    ((f) a.b(this.j)).a((f) hVar2);
                                    this.k = null;
                                }
                            } else if (a2 == -3) {
                                return;
                            }
                        } catch (SubtitleDecoderException e2) {
                            a(e2);
                            return;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(long j, boolean z) {
        a(Collections.emptyList());
        this.e = false;
        this.f = false;
        this.o = -9223372036854775807L;
        if (this.h != 0) {
            D();
            return;
        }
        A();
        ((f) a.b(this.j)).c();
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(Format[] formatArr, long j, long j2) {
        this.i = formatArr[0];
        if (this.j != null) {
            this.h = 1;
        } else {
            C();
        }
    }

    public final void c(long j) {
        a.b(j());
        this.o = j;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            b((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.e
    public final void r() {
        this.i = null;
        this.o = -9223372036854775807L;
        a(Collections.emptyList());
        B();
    }

    @Override // com.google.android.exoplayer2.af, com.google.android.exoplayer2.ag
    public final String x() {
        return "TextRenderer";
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean y() {
        return true;
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean z() {
        return this.f;
    }
}
