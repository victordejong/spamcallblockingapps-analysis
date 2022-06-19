package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.C1368ad;
import androidx.media2.exoplayer.external.C1446c;
/* renamed from: androidx.media2.exoplayer.external.util.v */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/v.class */
public final class C2026v implements AbstractC2011l {

    /* renamed from: a */
    public C1368ad f8152a = C1368ad.f5135a;

    /* renamed from: b */
    private final AbstractC1999b f8153b;

    /* renamed from: c */
    private boolean f8154c;

    /* renamed from: d */
    private long f8155d;

    /* renamed from: e */
    private long f8156e;

    public C2026v(AbstractC1999b abstractC1999b) {
        this.f8153b = abstractC1999b;
    }

    /* renamed from: a */
    public final void m41500a() {
        if (!this.f8154c) {
            this.f8156e = this.f8153b.mo41494a();
            this.f8154c = true;
        }
    }

    /* renamed from: a */
    public final void m41499a(long j) {
        this.f8155d = j;
        if (this.f8154c) {
            this.f8156e = this.f8153b.mo41494a();
        }
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: a */
    public final void mo41498a(C1368ad c1368ad) {
        if (this.f8154c) {
            m41499a(mo41495h_());
        }
        this.f8152a = c1368ad;
    }

    /* renamed from: b */
    public final void m41497b() {
        if (this.f8154c) {
            m41499a(mo41495h_());
            this.f8154c = false;
        }
    }

    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: d */
    public final C1368ad mo41496d() {
        return this.f8152a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // androidx.media2.exoplayer.external.util.AbstractC2011l
    /* renamed from: h_ */
    public final long mo41495h_() {
        ?? r0 = this.f8155d;
        char c = r0;
        if (this.f8154c) {
            long mo41494a = this.f8153b.mo41494a() - this.f8156e;
            c = r0 + (this.f8152a.f5136b == 1.0f ? C1446c.m42893b(mo41494a) : mo41494a * this.f8152a.f5139e);
        }
        return c;
    }
}
