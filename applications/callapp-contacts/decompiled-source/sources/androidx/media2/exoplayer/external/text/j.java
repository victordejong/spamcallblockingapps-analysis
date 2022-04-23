package androidx.media2.exoplayer.external.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.x;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/j.class */
public final class j extends b implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3943a;

    /* renamed from: b  reason: collision with root package name */
    private final i f3944b;

    /* renamed from: c  reason: collision with root package name */
    private final f f3945c;

    /* renamed from: d  reason: collision with root package name */
    private final x f3946d;
    private boolean e;
    private boolean f;
    private int g;
    private Format h;
    private e i;
    private g j;
    private h k;
    private h l;
    private int m;

    public j(i iVar, Looper looper) {
        this(iVar, looper, f.f3875a);
    }

    public j(i iVar, Looper looper, f fVar) {
        super(3);
        this.f3944b = (i) a.a(iVar);
        this.f3943a = looper == null ? null : ac.a(looper, (Handler.Callback) this);
        this.f3945c = fVar;
        this.f3946d = new x();
    }

    private void A() {
        z();
        this.i.d();
        this.i = null;
        this.g = 0;
    }

    private void B() {
        A();
        this.i = this.f3945c.b(this.h);
    }

    private long C() {
        int i = this.m;
        if (i == -1 || i >= this.k.b()) {
            return Long.MAX_VALUE;
        }
        return this.k.a_(this.m);
    }

    private void a(List<a> list) {
        Handler handler = this.f3943a;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            b(list);
        }
    }

    private void b(List<a> list) {
        this.f3944b.a(list);
    }

    private void z() {
        this.j = null;
        this.m = -1;
        h hVar = this.k;
        if (hVar != null) {
            hVar.f();
            this.k = null;
        }
        h hVar2 = this.l;
        if (hVar2 != null) {
            hVar2.f();
            this.l = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.ah
    public final int a(Format format) {
        return this.f3945c.a(format) ? a((k<?>) null, format.drmInitData) ? 4 : 2 : m.c(format.sampleMimeType) ? 1 : 0;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(long j, long j2) throws ExoPlaybackException {
        boolean z;
        if (!this.f) {
            if (this.l == null) {
                this.i.a(j);
                try {
                    this.l = this.i.b();
                } catch (SubtitleDecoderException e) {
                    throw ExoPlaybackException.a(e, v());
                }
            }
            if (i_() == 2) {
                if (this.k != null) {
                    long C = C();
                    z = false;
                    while (C <= j) {
                        this.m++;
                        C = C();
                        z = true;
                    }
                } else {
                    z = false;
                }
                h hVar = this.l;
                boolean z2 = z;
                if (hVar != null) {
                    if (hVar.c()) {
                        z2 = z;
                        if (!z) {
                            z2 = z;
                            if (C() == Long.MAX_VALUE) {
                                if (this.g == 2) {
                                    B();
                                    z2 = z;
                                } else {
                                    z();
                                    this.f = true;
                                    z2 = z;
                                }
                            }
                        }
                    } else {
                        z2 = z;
                        if (this.l.f2951b <= j) {
                            h hVar2 = this.k;
                            if (hVar2 != null) {
                                hVar2.f();
                            }
                            h hVar3 = this.l;
                            this.k = hVar3;
                            this.l = null;
                            this.m = hVar3.a(j);
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    a(this.k.b(j));
                }
                if (this.g != 2) {
                    while (!this.e) {
                        try {
                            if (this.j == null) {
                                g a2 = this.i.a();
                                this.j = a2;
                                if (a2 == null) {
                                    return;
                                }
                            }
                            if (this.g == 1) {
                                this.j.f2937a = 4;
                                this.i.a((e) this.j);
                                this.j = null;
                                this.g = 2;
                                return;
                            }
                            int a3 = a(this.f3946d, (e) this.j, false);
                            if (a3 == -4) {
                                if (this.j.c()) {
                                    this.e = true;
                                } else {
                                    this.j.f = this.f3946d.f4257c.subsampleOffsetUs;
                                    this.j.h();
                                }
                                this.i.a((e) this.j);
                                this.j = null;
                            } else if (a3 == -3) {
                                return;
                            }
                        } catch (SubtitleDecoderException e2) {
                            throw ExoPlaybackException.a(e2, v());
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(long j, boolean z) {
        a(Collections.emptyList());
        this.e = false;
        this.f = false;
        if (this.g != 0) {
            B();
            return;
        }
        z();
        this.i.c();
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(Format[] formatArr, long j) throws ExoPlaybackException {
        Format format = formatArr[0];
        this.h = format;
        if (this.i != null) {
            this.g = 1;
        } else {
            this.i = this.f3945c.b(format);
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            b((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void r() {
        this.h = null;
        a(Collections.emptyList());
        A();
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean y() {
        return this.f;
    }
}
