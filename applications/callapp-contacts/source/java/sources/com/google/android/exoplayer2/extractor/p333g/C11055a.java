package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.g.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/a.class */
public final class C11055a implements AbstractC11063f {

    /* renamed from: a */
    final long f36002a;

    /* renamed from: b */
    final long f36003b;

    /* renamed from: c */
    final AbstractC11065h f36004c;

    /* renamed from: d */
    long f36005d;

    /* renamed from: e */
    private final C11062e f36006e;

    /* renamed from: f */
    private int f36007f;

    /* renamed from: g */
    private long f36008g;

    /* renamed from: h */
    private long f36009h;

    /* renamed from: i */
    private long f36010i;

    /* renamed from: j */
    private long f36011j;

    /* renamed from: k */
    private long f36012k;

    /* renamed from: l */
    private long f36013l;

    /* renamed from: com.google.android.exoplayer2.extractor.g.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/a$a.class */
    final class C11057a implements AbstractC11146v {
        private C11057a() {
            C11055a.this = r4;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: a */
        public final AbstractC11146v.C11147a mo21388a(long j) {
            return new AbstractC11146v.C11147a(new C11149w(j, C11599af.m19993a((C11055a.this.f36002a + ((C11055a.this.f36004c.m21556b(j) * (C11055a.this.f36003b - C11055a.this.f36002a)) / C11055a.this.f36005d)) - 30000, C11055a.this.f36002a, C11055a.this.f36003b - 1)));
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: a */
        public final boolean mo21389a() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
        /* renamed from: b */
        public final long mo21387b() {
            return C11055a.this.f36004c.m21561a(C11055a.this.f36005d);
        }
    }

    public C11055a(AbstractC11065h abstractC11065h, long j, long j2, long j3, long j4, boolean z) {
        C11593a.m20022a(j >= 0 && j2 > j);
        this.f36004c = abstractC11065h;
        this.f36002a = j;
        this.f36003b = j2;
        if (j3 == j2 - j || z) {
            this.f36005d = j4;
            this.f36007f = 4;
        } else {
            this.f36007f = 0;
        }
        this.f36006e = new C11062e();
    }

    /* renamed from: b */
    private void m21574b(AbstractC11121i abstractC11121i) throws IOException {
        while (true) {
            this.f36006e.m21566a(abstractC11121i);
            this.f36006e.m21564a(abstractC11121i, false);
            if (this.f36006e.f36032c > this.f36009h) {
                abstractC11121i.mo21406a();
                return;
            }
            abstractC11121i.mo21401b(this.f36006e.f36037h + this.f36006e.f36038i);
            this.f36010i = abstractC11121i.mo21398c();
            this.f36012k = this.f36006e.f36032c;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0156  */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo21553a(com.google.android.exoplayer2.extractor.AbstractC11121i r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p333g.C11055a.mo21553a(com.google.android.exoplayer2.extractor.i):long");
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
    /* renamed from: a */
    public final /* synthetic */ AbstractC11146v mo21555a() {
        if (this.f36005d != 0) {
            return new C11057a();
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
    /* renamed from: a */
    public final void mo21554a(long j) {
        this.f36009h = C11599af.m19993a(j, 0L, this.f36005d - 1);
        this.f36007f = 2;
        this.f36010i = this.f36002a;
        this.f36011j = this.f36003b;
        this.f36012k = 0L;
        this.f36013l = this.f36005d;
    }
}
