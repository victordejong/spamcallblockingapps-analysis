package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.g.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/h.class */
abstract class AbstractC11065h {

    /* renamed from: b */
    AbstractC11150x f36044b;

    /* renamed from: c */
    AbstractC11130j f36045c;

    /* renamed from: d */
    AbstractC11063f f36046d;

    /* renamed from: e */
    long f36047e;

    /* renamed from: f */
    int f36048f;

    /* renamed from: g */
    int f36049g;

    /* renamed from: i */
    boolean f36051i;

    /* renamed from: j */
    private long f36052j;

    /* renamed from: k */
    private long f36053k;

    /* renamed from: l */
    private long f36054l;

    /* renamed from: m */
    private boolean f36055m;

    /* renamed from: a */
    final C11061d f36043a = new C11061d();

    /* renamed from: h */
    C11067a f36050h = new C11067a();

    /* renamed from: com.google.android.exoplayer2.extractor.g.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/h$a.class */
    public static final class C11067a {

        /* renamed from: a */
        Format f36056a;

        /* renamed from: b */
        AbstractC11063f f36057b;

        C11067a() {
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.g.h$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/h$b.class */
    static final class C11068b implements AbstractC11063f {
        /* JADX INFO: Access modifiers changed from: private */
        public C11068b() {
        }

        @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
        /* renamed from: a */
        public final long mo21553a(AbstractC11121i abstractC11121i) {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
        /* renamed from: a */
        public final AbstractC11146v mo21555a() {
            return new AbstractC11146v.C11148b(-9223372036854775807L);
        }

        @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
        /* renamed from: a */
        public final void mo21554a(long j) {
        }
    }

    @RequiresNonNull({"trackOutput", "oggSeeker", "extractorOutput"})
    /* renamed from: a */
    public final int m21558a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        long mo21553a = this.f36046d.mo21553a(abstractC11121i);
        if (mo21553a >= 0) {
            c11145u.f36501a = mo21553a;
            return 1;
        }
        if (mo21553a < -1) {
            mo21548c(-(mo21553a + 2));
        }
        if (!this.f36055m) {
            this.f36045c.mo20901a((AbstractC11146v) C11593a.m20024a(this.f36046d.mo21555a()));
            this.f36055m = true;
        }
        if (this.f36054l <= 0 && !this.f36043a.m21568a(abstractC11121i)) {
            this.f36048f = 3;
            return -1;
        }
        this.f36054l = 0L;
        C11628u c11628u = this.f36043a.f36026b;
        long mo21549b = mo21549b(c11628u);
        if (mo21549b >= 0) {
            long j = this.f36053k;
            if (j + mo21549b >= this.f36052j) {
                long m21561a = m21561a(j);
                this.f36044b.mo20819b(c11628u, c11628u.f38735c);
                this.f36044b.mo20835a(m21561a, 1, c11628u.f38735c, 0, null);
                this.f36052j = -1L;
            }
        }
        this.f36053k += mo21549b;
        return 0;
    }

    /* renamed from: a */
    public final long m21561a(long j) {
        return (j * 1000000) / this.f36049g;
    }

    /* renamed from: a */
    public final void m21560a(long j, long j2) {
        C11061d c11061d = this.f36043a;
        c11061d.f36025a.m21567a();
        c11061d.f36026b.m19811a(0);
        c11061d.f36027c = -1;
        c11061d.f36028d = false;
        if (j == 0) {
            mo21550a(!this.f36055m);
        } else if (this.f36048f == 0) {
        } else {
            this.f36052j = m21556b(j2);
            ((AbstractC11063f) C11599af.m19974a(this.f36046d)).mo21554a(this.f36052j);
            this.f36048f = 2;
        }
    }

    /* renamed from: a */
    public final void m21557a(AbstractC11130j abstractC11130j, AbstractC11150x abstractC11150x) {
        this.f36045c = abstractC11130j;
        this.f36044b = abstractC11150x;
        mo21550a(true);
    }

    /* renamed from: a */
    public void mo21550a(boolean z) {
        if (z) {
            this.f36050h = new C11067a();
            this.f36047e = 0L;
            this.f36048f = 0;
        } else {
            this.f36048f = 1;
        }
        this.f36052j = -1L;
        this.f36053k = 0L;
    }

    @EnsuresNonNullIf(expression = {"setupData.format"}, result = true)
    /* renamed from: a */
    public final boolean m21559a(AbstractC11121i abstractC11121i) throws IOException {
        while (this.f36043a.m21568a(abstractC11121i)) {
            this.f36054l = abstractC11121i.mo21398c() - this.f36047e;
            if (!mo21551a(this.f36043a.f36026b, this.f36047e, this.f36050h)) {
                return true;
            }
            this.f36047e = abstractC11121i.mo21398c();
        }
        this.f36048f = 3;
        return false;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: a */
    protected abstract boolean mo21551a(C11628u c11628u, long j, C11067a c11067a) throws IOException;

    /* renamed from: b */
    public final long m21556b(long j) {
        return (this.f36049g * j) / 1000000;
    }

    /* renamed from: b */
    protected abstract long mo21549b(C11628u c11628u);

    /* renamed from: c */
    public void mo21548c(long j) {
        this.f36053k = j;
    }
}
