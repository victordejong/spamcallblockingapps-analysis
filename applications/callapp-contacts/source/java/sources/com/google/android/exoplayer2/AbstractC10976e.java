package com.google.android.exoplayer2;

import com.google.android.exoplayer2.AbstractC10851af;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.AbstractC11269aa;
import com.google.android.exoplayer2.util.AbstractC11619p;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/e.class */
public abstract class AbstractC10976e implements AbstractC10851af, AbstractC10853ag {

    /* renamed from: a */
    private final int f35492a;

    /* renamed from: c */
    private RendererConfiguration f35494c;

    /* renamed from: d */
    private int f35495d;

    /* renamed from: e */
    private int f35496e;

    /* renamed from: f */
    private AbstractC11269aa f35497f;

    /* renamed from: g */
    private Format[] f35498g;

    /* renamed from: h */
    private long f35499h;

    /* renamed from: i */
    private long f35500i;

    /* renamed from: k */
    private boolean f35502k;

    /* renamed from: l */
    private boolean f35503l;

    /* renamed from: b */
    private final C11258q f35493b = new C11258q();

    /* renamed from: j */
    private long f35501j = Long.MIN_VALUE;

    public AbstractC10976e(int i) {
        this.f35492a = i;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: C_ */
    public final int mo21813C_() {
        return this.f35496e;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: a */
    public final int mo21812a() {
        return this.f35492a;
    }

    /* renamed from: a */
    public final int m21808a(C11258q c11258q, DecoderInputBuffer decoderInputBuffer, boolean z) {
        int mo20863a = ((AbstractC11269aa) C11593a.m20020b(this.f35497f)).mo20863a(c11258q, decoderInputBuffer, z);
        if (mo20863a == -4) {
            if (decoderInputBuffer.m21917c()) {
                this.f35501j = Long.MIN_VALUE;
                return this.f35502k ? -4 : -3;
            }
            decoderInputBuffer.f35338e += this.f35499h;
            this.f35501j = Math.max(this.f35501j, decoderInputBuffer.f35338e);
        } else if (mo20863a == -5) {
            Format format = (Format) C11593a.m20020b(c11258q.f36928b);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                Format.C10828a buildUpon = format.buildUpon();
                buildUpon.f34796o = format.subsampleOffsetUs + this.f35499h;
                c11258q.f36928b = buildUpon.m22321a();
            }
        }
        return mo20863a;
    }

    /* renamed from: a */
    public final ExoPlaybackException m21807a(Throwable th, Format format) {
        return m21806a(th, format, false);
    }

    /* renamed from: a */
    public final ExoPlaybackException m21806a(Throwable th, Format format, boolean z) {
        int i;
        if (format != null && !this.f35503l) {
            this.f35503l = true;
            try {
                int a = mo19748a(format);
                this.f35503l = false;
                i = a & 7;
            } catch (ExoPlaybackException e) {
                this.f35503l = false;
            } catch (Throwable th2) {
                this.f35503l = false;
                throw th2;
            }
            return ExoPlaybackException.m22322a(th, mo19682x(), this.f35495d, format, i, z);
        }
        i = 4;
        return ExoPlaybackException.m22322a(th, mo19682x(), this.f35495d, format, i, z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public /* synthetic */ void mo19721a(float f, float f2) {
        AbstractC10851af._CC.$default$a(this, f, f2);
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo21811a(int i) {
        this.f35495d = i;
    }

    @Override // com.google.android.exoplayer2.C10847ad.AbstractC10849b
    /* renamed from: a */
    public void mo19719a(int i, Object obj) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo21810a(long j) throws ExoPlaybackException {
        this.f35502k = false;
        this.f35500i = j;
        this.f35501j = j;
        mo19716a(j, false);
    }

    /* renamed from: a */
    protected void mo19716a(long j, boolean z) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo21809a(RendererConfiguration rendererConfiguration, Format[] formatArr, AbstractC11269aa abstractC11269aa, long j, boolean z, boolean z2, long j2, long j3) throws ExoPlaybackException {
        C11593a.m20019b(this.f35496e == 0);
        this.f35494c = rendererConfiguration;
        this.f35496e = 1;
        this.f35500i = j;
        mo19697a(z, z2);
        mo21805a(formatArr, abstractC11269aa, j2, j3);
        mo19716a(j, z);
    }

    /* renamed from: a */
    protected void mo19697a(boolean z, boolean z2) throws ExoPlaybackException {
    }

    /* renamed from: a */
    protected void mo19747a(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo21805a(Format[] formatArr, AbstractC11269aa abstractC11269aa, long j, long j2) throws ExoPlaybackException {
        C11593a.m20019b(!this.f35502k);
        this.f35497f = abstractC11269aa;
        this.f35501j = j2;
        this.f35498g = formatArr;
        this.f35499h = j2;
        mo19747a(formatArr, j, j2);
    }

    /* renamed from: b */
    public final int m21803b(long j) {
        return ((AbstractC11269aa) C11593a.m20020b(this.f35497f)).mo20864a(j - this.f35499h);
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: b */
    public final AbstractC10853ag mo21804b() {
        return this;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: c */
    public AbstractC11619p mo21802c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: e */
    public final void mo21801e() throws ExoPlaybackException {
        boolean z = true;
        if (this.f35496e != 1) {
            z = false;
        }
        C11593a.m20019b(z);
        this.f35496e = 2;
        mo19686p();
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: f */
    public final AbstractC11269aa mo21800f() {
        return this.f35497f;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: g */
    public final boolean mo21799g() {
        return this.f35501j == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: h */
    public final long mo21798h() {
        return this.f35501j;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: i */
    public final void mo21797i() {
        this.f35502k = true;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: j */
    public final boolean mo21796j() {
        return this.f35502k;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: k */
    public final void mo21795k() throws IOException {
        ((AbstractC11269aa) C11593a.m20020b(this.f35497f)).mo20862b();
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: l */
    public final void mo21794l() {
        C11593a.m20019b(this.f35496e == 2);
        this.f35496e = 1;
        mo19685q();
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: m */
    public final void mo21793m() {
        boolean z = true;
        if (this.f35496e != 1) {
            z = false;
        }
        C11593a.m20019b(z);
        this.f35493b.m21030a();
        this.f35496e = 0;
        this.f35497f = null;
        this.f35498g = null;
        this.f35502k = false;
        mo19684r();
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: n */
    public final void mo21792n() {
        C11593a.m20019b(this.f35496e == 0);
        this.f35493b.m21030a();
        mo19683s();
    }

    @Override // com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: o */
    public int mo21311o() throws ExoPlaybackException {
        return 0;
    }

    /* renamed from: p */
    protected void mo19686p() throws ExoPlaybackException {
    }

    /* renamed from: q */
    protected void mo19685q() {
    }

    /* renamed from: r */
    protected void mo19684r() {
    }

    /* renamed from: s */
    protected void mo19683s() {
    }

    /* renamed from: t */
    public final C11258q m21791t() {
        this.f35493b.m21030a();
        return this.f35493b;
    }

    /* renamed from: u */
    public final Format[] m21790u() {
        return (Format[]) C11593a.m20020b(this.f35498g);
    }

    /* renamed from: v */
    public final RendererConfiguration m21789v() {
        return (RendererConfiguration) C11593a.m20020b(this.f35494c);
    }

    /* renamed from: w */
    public final boolean m21788w() {
        return mo21799g() ? this.f35502k : ((AbstractC11269aa) C11593a.m20020b(this.f35497f)).mo20865a();
    }
}
