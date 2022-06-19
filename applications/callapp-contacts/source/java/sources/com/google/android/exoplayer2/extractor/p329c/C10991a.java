package com.google.android.exoplayer2.extractor.p329c;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p332f.C11039g;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.c.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/a.class */
public final class C10991a implements AbstractC11071h {

    /* renamed from: b */
    private AbstractC11130j f35573b;

    /* renamed from: c */
    private int f35574c;

    /* renamed from: d */
    private int f35575d;

    /* renamed from: e */
    private int f35576e;

    /* renamed from: g */
    private MotionPhotoMetadata f35578g;

    /* renamed from: h */
    private AbstractC11121i f35579h;

    /* renamed from: i */
    private C10994c f35580i;

    /* renamed from: j */
    private C11039g f35581j;

    /* renamed from: a */
    private final C11628u f35572a = new C11628u(6);

    /* renamed from: f */
    private long f35577f = -1;

    /* renamed from: a */
    private void m21761a() {
        m21760a(new Metadata.Entry[0]);
        ((AbstractC11130j) C11593a.m20020b(this.f35573b)).mo20907a();
        this.f35573b.mo20901a(new AbstractC11146v.C11148b(-9223372036854775807L));
        this.f35574c = 6;
    }

    /* renamed from: a */
    private void m21760a(Metadata.Entry... entryArr) {
        AbstractC11150x mo20905a = ((AbstractC11130j) C11593a.m20020b(this.f35573b)).mo20905a(1024, 4);
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34790i = new Metadata(entryArr);
        mo20905a.mo20831a(c10828a.m22321a());
    }

    /* renamed from: b */
    private int m21759b(AbstractC11121i abstractC11121i) throws IOException {
        this.f35572a.m19811a(2);
        abstractC11121i.mo21394d(this.f35572a.f38733a, 0, 2);
        return this.f35572a.m19802d();
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0273  */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r14, com.google.android.exoplayer2.extractor.C11145u r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 791
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p329c.C10991a.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        if (j == 0) {
            this.f35574c = 0;
            this.f35581j = null;
        } else if (this.f35574c != 5) {
        } else {
            ((C11039g) C11593a.m20020b(this.f35581j)).mo21439a(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35573b = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        if (m21759b(abstractC11121i) != 65496) {
            return false;
        }
        int m21759b = m21759b(abstractC11121i);
        this.f35575d = m21759b;
        if (m21759b == 65504) {
            this.f35572a.m19811a(2);
            abstractC11121i.mo21394d(this.f35572a.f38733a, 0, 2);
            abstractC11121i.mo21397c(this.f35572a.m19802d() - 2);
            this.f35575d = m21759b(abstractC11121i);
        }
        if (this.f35575d != 65505) {
            return false;
        }
        abstractC11121i.mo21397c(2);
        this.f35572a.m19811a(6);
        abstractC11121i.mo21394d(this.f35572a.f38733a, 0, 6);
        return this.f35572a.m19794h() == 1165519206 && this.f35572a.m19802d() == 0;
    }
}
