package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.AbstractC5415u;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.metadata.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/f.class */
public final class C5129f extends AbstractC5415u implements Handler.Callback {

    /* renamed from: o */
    private final AbstractC5122c f16098o;

    /* renamed from: p */
    private final AbstractC5125e f16099p;

    /* renamed from: q */
    private final Handler f16100q;

    /* renamed from: r */
    private final C5124d f16101r;

    /* renamed from: s */
    private final Metadata[] f16102s;

    /* renamed from: t */
    private final long[] f16103t;

    /* renamed from: u */
    private int f16104u;

    /* renamed from: v */
    private int f16105v;

    /* renamed from: w */
    private AbstractC5121b f16106w;

    /* renamed from: x */
    private boolean f16107x;

    /* renamed from: y */
    private long f16108y;

    public C5129f(AbstractC5125e abstractC5125e, Looper looper) {
        this(abstractC5125e, looper, AbstractC5122c.f16086a);
    }

    public C5129f(AbstractC5125e abstractC5125e, Looper looper, AbstractC5122c abstractC5122c) {
        super(4);
        this.f16099p = (AbstractC5125e) C5508e.m18911e(abstractC5125e);
        this.f16100q = looper == null ? null : C5515h0.m18809s(looper, this);
        this.f16098o = (AbstractC5122c) C5508e.m18911e(abstractC5122c);
        this.f16101r = new C5124d();
        this.f16102s = new Metadata[5];
        this.f16103t = new long[5];
    }

    /* renamed from: Q */
    private void m20379Q(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.m20392d(); i++) {
            Format mo20091y = metadata.m20393c(i).mo20091y();
            if (mo20091y == null || !this.f16098o.mo20386b(mo20091y)) {
                list.add(metadata.m20393c(i));
            } else {
                AbstractC5121b mo20387a = this.f16098o.mo20387a(mo20091y);
                byte[] bArr = (byte[]) C5508e.m18911e(metadata.m20393c(i).mo20092h0());
                this.f16101r.clear();
                this.f16101r.m21428h(bArr.length);
                ((ByteBuffer) C5515h0.m18833g(this.f16101r.f14775e)).put(bArr);
                this.f16101r.m21427i();
                Metadata mo20287a = mo20387a.mo20287a(this.f16101r);
                if (mo20287a != null) {
                    m20379Q(mo20287a, list);
                }
            }
        }
    }

    /* renamed from: R */
    private void m20378R() {
        Arrays.fill(this.f16102s, (Object) null);
        this.f16104u = 0;
        this.f16105v = 0;
    }

    /* renamed from: S */
    private void m20377S(Metadata metadata) {
        Handler handler = this.f16100q;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            m20376T(metadata);
        }
    }

    /* renamed from: T */
    private void m20376T(Metadata metadata) {
        this.f16099p.mo18389n(metadata);
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: G */
    protected void mo18512G() {
        m20378R();
        this.f16106w = null;
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: I */
    protected void mo18511I(long j, boolean z) {
        m20378R();
        this.f16107x = false;
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: M */
    public void mo18510M(Format[] formatArr, long j) {
        this.f16106w = this.f16098o.mo20387a(formatArr[0]);
    }

    @Override // com.google.android.exoplayer2.AbstractC5315t0
    /* renamed from: b */
    public int mo18507b(Format format) {
        if (this.f16098o.mo20386b(format)) {
            return C5191s0.m20194a(AbstractC5415u.m19262P(null, format.f14464o) ? 4 : 2);
        }
        return C5191s0.m20194a(0);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: c */
    public boolean mo18506c() {
        return this.f16107x;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: e */
    public boolean mo18505e() {
        return true;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            m20376T((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: q */
    public void mo18504q(long j, long j2) {
        if (!this.f16107x && this.f16105v < 5) {
            this.f16101r.clear();
            C5090f0 m19269B = m19269B();
            int m19264N = m19264N(m19269B, this.f16101r, false);
            if (m19264N == -4) {
                if (this.f16101r.isEndOfStream()) {
                    this.f16107x = true;
                } else if (!this.f16101r.isDecodeOnly()) {
                    C5124d c5124d = this.f16101r;
                    c5124d.f16087i = this.f16108y;
                    c5124d.m21427i();
                    Metadata mo20287a = ((AbstractC5121b) C5515h0.m18833g(this.f16106w)).mo20287a(this.f16101r);
                    if (mo20287a != null) {
                        ArrayList arrayList = new ArrayList(mo20287a.m20392d());
                        m20379Q(mo20287a, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i = this.f16104u;
                            int i2 = this.f16105v;
                            int i3 = (i + i2) % 5;
                            this.f16102s[i3] = metadata;
                            this.f16103t[i3] = this.f16101r.f14776f;
                            this.f16105v = i2 + 1;
                        }
                    }
                }
            } else if (m19264N == -5) {
                this.f16108y = ((Format) C5508e.m18911e(m19269B.f15930c)).f14465p;
            }
        }
        if (this.f16105v > 0) {
            long[] jArr = this.f16103t;
            int i4 = this.f16104u;
            if (jArr[i4] > j) {
                return;
            }
            m20377S((Metadata) C5515h0.m18833g(this.f16102s[i4]));
            Metadata[] metadataArr = this.f16102s;
            int i5 = this.f16104u;
            metadataArr[i5] = null;
            this.f16104u = (i5 + 1) % 5;
            this.f16105v--;
        }
    }
}
