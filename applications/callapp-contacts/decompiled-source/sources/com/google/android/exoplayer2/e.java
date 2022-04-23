package com.google.android.exoplayer2;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.af;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.aa;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.p;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/e.class */
public abstract class e implements af, ag {

    /* renamed from: a  reason: collision with root package name */
    private final int f20905a;

    /* renamed from: c  reason: collision with root package name */
    private RendererConfiguration f20907c;

    /* renamed from: d  reason: collision with root package name */
    private int f20908d;
    private int e;
    private aa f;
    private Format[] g;
    private long h;
    private long i;
    private boolean k;
    private boolean l;

    /* renamed from: b  reason: collision with root package name */
    private final q f20906b = new q();
    private long j = Long.MIN_VALUE;

    public e(int i) {
        this.f20905a = i;
    }

    @Override // com.google.android.exoplayer2.af
    public final int C_() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.af, com.google.android.exoplayer2.ag
    public final int a() {
        return this.f20905a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(q qVar, DecoderInputBuffer decoderInputBuffer, boolean z) {
        int a2 = ((aa) a.b(this.f)).a(qVar, decoderInputBuffer, z);
        if (a2 == -4) {
            if (decoderInputBuffer.c()) {
                this.j = Long.MIN_VALUE;
                return this.k ? -4 : -3;
            }
            decoderInputBuffer.e += this.h;
            this.j = Math.max(this.j, decoderInputBuffer.e);
        } else if (a2 == -5) {
            Format format = (Format) a.b(qVar.f21512b);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                Format.a buildUpon = format.buildUpon();
                buildUpon.o = format.subsampleOffsetUs + this.h;
                qVar.f21512b = buildUpon.a();
            }
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException a(Throwable th, Format format) {
        return a(th, format, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException a(Throwable th, Format format, boolean z) {
        int i;
        if (format != null && !this.l) {
            this.l = true;
            try {
                int a2 = a(format);
                this.l = false;
                i = a2 & 7;
            } catch (ExoPlaybackException e) {
                this.l = false;
            } catch (Throwable th2) {
                this.l = false;
                throw th2;
            }
            return ExoPlaybackException.a(th, x(), this.f20908d, format, i, z);
        }
        i = 4;
        return ExoPlaybackException.a(th, x(), this.f20908d, format, i, z);
    }

    @Override // com.google.android.exoplayer2.af
    public /* synthetic */ void a(float f, float f2) {
        af._CC.$default$a(this, f, f2);
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(int i) {
        this.f20908d = i;
    }

    @Override // com.google.android.exoplayer2.ad.b
    public void a(int i, Object obj) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(long j) throws ExoPlaybackException {
        this.k = false;
        this.i = j;
        this.j = j;
        a(j, false);
    }

    protected void a(long j, boolean z) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(RendererConfiguration rendererConfiguration, Format[] formatArr, aa aaVar, long j, boolean z, boolean z2, long j2, long j3) throws ExoPlaybackException {
        a.b(this.e == 0);
        this.f20907c = rendererConfiguration;
        this.e = 1;
        this.i = j;
        a(z, z2);
        a(formatArr, aaVar, j2, j3);
        a(j, z);
    }

    protected void a(boolean z, boolean z2) throws ExoPlaybackException {
    }

    protected void a(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(Format[] formatArr, aa aaVar, long j, long j2) throws ExoPlaybackException {
        a.b(!this.k);
        this.f = aaVar;
        this.j = j2;
        this.g = formatArr;
        this.h = j2;
        a(formatArr, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int b(long j) {
        return ((aa) a.b(this.f)).a(j - this.h);
    }

    @Override // com.google.android.exoplayer2.af
    public final ag b() {
        return this;
    }

    @Override // com.google.android.exoplayer2.af
    public p c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.af
    public final void e() throws ExoPlaybackException {
        boolean z = true;
        if (this.e != 1) {
            z = false;
        }
        a.b(z);
        this.e = 2;
        p();
    }

    @Override // com.google.android.exoplayer2.af
    public final aa f() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean g() {
        return this.j == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.af
    public final long h() {
        return this.j;
    }

    @Override // com.google.android.exoplayer2.af
    public final void i() {
        this.k = true;
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean j() {
        return this.k;
    }

    @Override // com.google.android.exoplayer2.af
    public final void k() throws IOException {
        ((aa) a.b(this.f)).b();
    }

    @Override // com.google.android.exoplayer2.af
    public final void l() {
        a.b(this.e == 2);
        this.e = 1;
        q();
    }

    @Override // com.google.android.exoplayer2.af
    public final void m() {
        boolean z = true;
        if (this.e != 1) {
            z = false;
        }
        a.b(z);
        this.f20906b.a();
        this.e = 0;
        this.f = null;
        this.g = null;
        this.k = false;
        r();
    }

    @Override // com.google.android.exoplayer2.af
    public final void n() {
        a.b(this.e == 0);
        this.f20906b.a();
        s();
    }

    @Override // com.google.android.exoplayer2.ag
    public int o() throws ExoPlaybackException {
        return 0;
    }

    protected void p() throws ExoPlaybackException {
    }

    protected void q() {
    }

    protected void r() {
    }

    protected void s() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final q t() {
        this.f20906b.a();
        return this.f20906b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Format[] u() {
        return (Format[]) a.b(this.g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RendererConfiguration v() {
        return (RendererConfiguration) a.b(this.f20907c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean w() {
        return g() ? this.k : ((aa) a.b(this.f)).a();
    }
}
