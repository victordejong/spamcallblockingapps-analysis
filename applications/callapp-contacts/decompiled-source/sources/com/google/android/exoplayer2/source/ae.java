package com.google.android.exoplayer2.source;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ai;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.trackselection.c;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.r;
import com.google.android.exoplayer2.upstream.t;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ae.class */
public final class ae implements p, Loader.a<b> {

    /* renamed from: a  reason: collision with root package name */
    final s.a f21569a;

    /* renamed from: c  reason: collision with root package name */
    final Format f21571c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f21572d;
    boolean e;
    byte[] f;
    int g;
    private final j h;
    private final h.a i;
    private final v j;
    private final r k;
    private final TrackGroupArray l;
    private final long n;
    private final ArrayList<a> m = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    final Loader f21570b = new Loader("Loader:SingleSampleMediaPeriod");

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ae$a.class */
    final class a implements aa {

        /* renamed from: a  reason: collision with root package name */
        int f21573a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f21575c;

        private a() {
        }

        private void c() {
            if (!this.f21575c) {
                ae.this.f21569a.a(q.g(ae.this.f21571c.sampleMimeType), ae.this.f21571c, 0L);
                this.f21575c = true;
            }
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(long j) {
            c();
            if (j <= 0 || this.f21573a == 2) {
                return 0;
            }
            this.f21573a = 2;
            return 1;
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(com.google.android.exoplayer2.q qVar, DecoderInputBuffer decoderInputBuffer, boolean z) {
            c();
            int i = this.f21573a;
            if (i == 2) {
                decoderInputBuffer.a(4);
                return -4;
            } else if (z || i == 0) {
                qVar.f21512b = ae.this.f21571c;
                this.f21573a = 1;
                return -5;
            } else if (!ae.this.e) {
                return -3;
            } else {
                if (ae.this.f != null) {
                    decoderInputBuffer.a(1);
                    decoderInputBuffer.e = 0L;
                    if (decoderInputBuffer.f()) {
                        return -4;
                    }
                    decoderInputBuffer.c(ae.this.g);
                    decoderInputBuffer.f20822c.put(ae.this.f, 0, ae.this.g);
                } else {
                    decoderInputBuffer.a(4);
                }
                this.f21573a = 2;
                return -4;
            }
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final boolean a() {
            return ae.this.e;
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final void b() throws IOException {
            if (!ae.this.f21572d) {
                ae.this.f21570b.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ae$b.class */
    static final class b implements Loader.d {

        /* renamed from: a  reason: collision with root package name */
        public final long f21576a = l.a();

        /* renamed from: b  reason: collision with root package name */
        public final j f21577b;

        /* renamed from: c  reason: collision with root package name */
        final t f21578c;

        /* renamed from: d  reason: collision with root package name */
        byte[] f21579d;

        public b(j jVar, h hVar) {
            this.f21577b = jVar;
            this.f21578c = new t(hVar);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public final void a() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public final void b() throws IOException {
            this.f21578c.f22251a = 0L;
            try {
                this.f21578c.a(this.f21577b);
                int i = 0;
                while (i != -1) {
                    int i2 = (int) this.f21578c.f22251a;
                    byte[] bArr = this.f21579d;
                    if (bArr == null) {
                        this.f21579d = new byte[1024];
                    } else if (i2 == bArr.length) {
                        this.f21579d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    t tVar = this.f21578c;
                    byte[] bArr2 = this.f21579d;
                    i = tVar.a(bArr2, i2, bArr2.length - i2);
                }
            } finally {
                af.a((h) this.f21578c);
            }
        }
    }

    public ae(j jVar, h.a aVar, v vVar, Format format, long j, r rVar, s.a aVar2, boolean z) {
        this.h = jVar;
        this.i = aVar;
        this.j = vVar;
        this.f21571c = format;
        this.n = j;
        this.k = rVar;
        this.f21569a = aVar2;
        this.f21572d = z;
        this.l = new TrackGroupArray(new TrackGroup(format));
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void D_() {
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long a(long j, ai aiVar) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long a(c[] cVarArr, boolean[] zArr, aa[] aaVarArr, boolean[] zArr2, long j) {
        for (int i = 0; i < cVarArr.length; i++) {
            if (aaVarArr[i] != null && (cVarArr[i] == null || !zArr[i])) {
                this.m.remove(aaVarArr[i]);
                aaVarArr[i] = null;
            }
            if (aaVarArr[i] == null && cVarArr[i] != null) {
                a aVar = new a();
                this.m.add(aVar);
                aaVarArr[i] = aVar;
                zArr2[i] = true;
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public final /* synthetic */ Loader.b a(b bVar, long j, long j2, IOException iOException, int i) {
        Loader.b bVar2;
        b bVar3 = bVar;
        t tVar = bVar3.f21578c;
        l lVar = new l(bVar3.f21576a, bVar3.f21577b, tVar.f22252b, tVar.f22253c, j, j2, tVar.f22251a);
        long a2 = this.k.a(new r.a(lVar, new o(1, -1, this.f21571c, 0, null, 0L, f.a(this.n)), iOException, i));
        int i2 = (a2 > (-9223372036854775807L) ? 1 : (a2 == (-9223372036854775807L) ? 0 : -1));
        boolean z = i2 == 0 || i >= this.k.a(1);
        if (!this.f21572d || !z) {
            bVar2 = i2 != 0 ? Loader.a(false, a2) : Loader.f22113d;
        } else {
            n.a("SingleSampleMediaPeriod", "Loading failed, treating as end-of-stream.", iOException);
            this.e = true;
            bVar2 = Loader.f22112c;
        }
        this.f21569a.a(lVar, 1, this.f21571c, 0L, this.n, iOException, !bVar2.a());
        return bVar2;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final void a(long j) {
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(long j, boolean z) {
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(p.a aVar, long j) {
        aVar.a((p) this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public final /* synthetic */ void a(b bVar, long j, long j2) {
        b bVar2 = bVar;
        this.g = (int) bVar2.f21578c.f22251a;
        this.f = (byte[]) com.google.android.exoplayer2.util.a.b(bVar2.f21579d);
        this.e = true;
        t tVar = bVar2.f21578c;
        this.f21569a.b(new l(bVar2.f21576a, bVar2.f21577b, tVar.f22252b, tVar.f22253c, j, j2, this.g), this.f21571c, 0L, this.n);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public final /* synthetic */ void a(b bVar, long j, long j2, boolean z) {
        b bVar2 = bVar;
        t tVar = bVar2.f21578c;
        this.f21569a.a(new l(bVar2.f21576a, bVar2.f21577b, tVar.f22252b, tVar.f22253c, j, j2, tVar.f22251a), 0L, this.n);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long b(long j) {
        for (int i = 0; i < this.m.size(); i++) {
            a aVar = this.m.get(i);
            if (aVar.f21573a == 2) {
                aVar.f21573a = 1;
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final TrackGroupArray b() {
        return this.l;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long c() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean c(long j) {
        if (this.e || this.f21570b.b() || this.f21570b.a()) {
            return false;
        }
        h createDataSource = this.i.createDataSource();
        v vVar = this.j;
        if (vVar != null) {
            createDataSource.a(vVar);
        }
        b bVar = new b(this.h, createDataSource);
        this.f21569a.a(new l(bVar.f21576a, this.h, this.f21570b.a(bVar, this, this.k.a(1))), this.f21571c, 0L, this.n);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long d() {
        return this.e ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long e() {
        return (this.e || this.f21570b.b()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean f() {
        return this.f21570b.b();
    }
}
