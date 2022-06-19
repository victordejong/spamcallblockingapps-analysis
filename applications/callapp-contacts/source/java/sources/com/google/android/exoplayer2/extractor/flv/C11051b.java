package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.flv.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/b.class */
public final class C11051b implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f35975a = _$$Lambda$b$t_eKifyPmusL2cG2qwU75FgsJGw.INSTANCE;

    /* renamed from: g */
    private AbstractC11130j f35981g;

    /* renamed from: i */
    private boolean f35983i;

    /* renamed from: j */
    private long f35984j;

    /* renamed from: k */
    private int f35985k;

    /* renamed from: l */
    private int f35986l;

    /* renamed from: m */
    private int f35987m;

    /* renamed from: n */
    private long f35988n;

    /* renamed from: o */
    private boolean f35989o;

    /* renamed from: p */
    private C11050a f35990p;

    /* renamed from: q */
    private C11053d f35991q;

    /* renamed from: b */
    private final C11628u f35976b = new C11628u(4);

    /* renamed from: c */
    private final C11628u f35977c = new C11628u(9);

    /* renamed from: d */
    private final C11628u f35978d = new C11628u(11);

    /* renamed from: e */
    private final C11628u f35979e = new C11628u();

    /* renamed from: f */
    private final C11052c f35980f = new C11052c();

    /* renamed from: h */
    private int f35982h = 1;

    @RequiresNonNull({"extractorOutput"})
    /* renamed from: a */
    private void m21587a() {
        if (!this.f35989o) {
            this.f35981g.mo20901a(new AbstractC11146v.C11148b(-9223372036854775807L));
            this.f35989o = true;
        }
    }

    /* renamed from: b */
    private C11628u m21585b(AbstractC11121i abstractC11121i) throws IOException {
        if (this.f35987m > this.f35979e.f38733a.length) {
            C11628u c11628u = this.f35979e;
            c11628u.m19808a(new byte[Math.max(c11628u.f38733a.length * 2, this.f35987m)], 0);
        } else {
            this.f35979e.m19801d(0);
        }
        this.f35979e.m19803c(this.f35987m);
        abstractC11121i.mo21400b(this.f35979e.f38733a, 0, this.f35987m);
        return this.f35979e;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC11071h[] m21586b() {
        return new AbstractC11071h[]{new C11051b()};
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x015d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0008 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r9, com.google.android.exoplayer2.extractor.C11145u r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.C11051b.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        if (j == 0) {
            this.f35982h = 1;
            this.f35983i = false;
        } else {
            this.f35982h = 3;
        }
        this.f35985k = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35981g = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        abstractC11121i.mo21394d(this.f35976b.f38733a, 0, 3);
        this.f35976b.m19801d(0);
        if (this.f35976b.m19796g() != 4607062) {
            return false;
        }
        abstractC11121i.mo21394d(this.f35976b.f38733a, 0, 2);
        this.f35976b.m19801d(0);
        if ((this.f35976b.m19802d() & 250) != 0) {
            return false;
        }
        abstractC11121i.mo21394d(this.f35976b.f38733a, 0, 4);
        this.f35976b.m19801d(0);
        int m19792j = this.f35976b.m19792j();
        abstractC11121i.mo21406a();
        abstractC11121i.mo21397c(m19792j);
        abstractC11121i.mo21394d(this.f35976b.f38733a, 0, 4);
        this.f35976b.m19801d(0);
        return this.f35976b.m19792j() == 0;
    }
}
