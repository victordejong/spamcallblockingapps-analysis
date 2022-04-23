package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.drm.b;
import com.google.android.exoplayer2.drm.d;
import com.google.android.exoplayer2.drm.e;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.upstream.r;
import com.google.android.exoplayer2.upstream.v;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/x.class */
public final class x extends com.google.android.exoplayer2.source.a implements w.b {

    /* renamed from: a  reason: collision with root package name */
    private final MediaItem f21671a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaItem.c f21672b;

    /* renamed from: c  reason: collision with root package name */
    private final h.a f21673c;

    /* renamed from: d  reason: collision with root package name */
    private final l f21674d;
    private final d e;
    private final r f;
    private final int g;
    private boolean h = true;
    private long i = -9223372036854775807L;
    private boolean j;
    private boolean k;
    private v l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/x$a.class */
    public static final class a implements t {

        /* renamed from: a  reason: collision with root package name */
        private final h.a f21676a;

        /* renamed from: b  reason: collision with root package name */
        private l f21677b;

        /* renamed from: c  reason: collision with root package name */
        private e f21678c;

        /* renamed from: d  reason: collision with root package name */
        private r f21679d;
        private int e;
        private String f;
        private Object g;

        public a(h.a aVar) {
            this(aVar, new f());
        }

        public a(h.a aVar, l lVar) {
            this.f21676a = aVar;
            this.f21677b = lVar;
            this.f21678c = new b();
            this.f21679d = new p();
            this.e = 1048576;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public x a(MediaItem mediaItem) {
            MediaItem mediaItem2;
            com.google.android.exoplayer2.util.a.b(mediaItem.f20611b);
            boolean z = true;
            boolean z2 = mediaItem.f20611b.h == null && this.g != null;
            if (mediaItem.f20611b.f != null || this.f == null) {
                z = false;
            }
            if (z2 && z) {
                MediaItem.a a2 = mediaItem.a();
                a2.n = this.g;
                a2.l = this.f;
                mediaItem2 = a2.a();
            } else if (z2) {
                MediaItem.a a3 = mediaItem.a();
                a3.n = this.g;
                mediaItem2 = a3.a();
            } else {
                mediaItem2 = mediaItem;
                if (z) {
                    MediaItem.a a4 = mediaItem.a();
                    a4.l = this.f;
                    mediaItem2 = a4.a();
                }
            }
            return new x(mediaItem2, this.f21676a, this.f21677b, this.f21678c.a(mediaItem2), this.f21679d, this.e);
        }

        @Deprecated
        public final x a(Uri uri) {
            MediaItem.a aVar = new MediaItem.a();
            aVar.f20615b = uri;
            return a(aVar.a());
        }

        @Override // com.google.android.exoplayer2.source.t
        public final int[] a() {
            return new int[]{3};
        }
    }

    x(MediaItem mediaItem, h.a aVar, l lVar, d dVar, r rVar, int i) {
        this.f21672b = (MediaItem.c) com.google.android.exoplayer2.util.a.b(mediaItem.f20611b);
        this.f21671a = mediaItem;
        this.f21673c = aVar;
        this.f21674d = lVar;
        this.e = dVar;
        this.f = rVar;
        this.g = i;
    }

    private void g() {
        ad adVar = new ad(this.i, this.j, false, this.k, (Object) null, this.f21671a);
        al alVar = adVar;
        if (this.h) {
            alVar = new j(adVar) { // from class: com.google.android.exoplayer2.source.x.1
                @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
                public final al.b a(int i, al.b bVar, long j) {
                    super.a(i, bVar, j);
                    bVar.m = true;
                    return bVar;
                }
            };
        }
        a(alVar);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final p a(r.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j) {
        h createDataSource = this.f21673c.createDataSource();
        v vVar = this.l;
        if (vVar != null) {
            createDataSource.a(vVar);
        }
        return new w(this.f21672b.f20622a, createDataSource, this.f21674d, this.e, b(aVar), this.f, a(aVar), this, bVar, this.f21672b.f, this.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.source.w.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r6, boolean r8, boolean r9) {
        /*
            r5 = this;
            r0 = r6
            r10 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = r5
            long r0 = r0.i
            r10 = r0
        L_0x0011:
            r0 = r5
            boolean r0 = r0.h
            if (r0 != 0) goto L_0x0034
            r0 = r5
            long r0 = r0.i
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0034
            r0 = r5
            boolean r0 = r0.j
            r1 = r8
            if (r0 != r1) goto L_0x0034
            r0 = r5
            boolean r0 = r0.k
            r1 = r9
            if (r0 != r1) goto L_0x0034
            return
        L_0x0034:
            r0 = r5
            r1 = r10
            r0.i = r1
            r0 = r5
            r1 = r8
            r0.j = r1
            r0 = r5
            r1 = r9
            r0.k = r1
            r0 = r5
            r1 = 0
            r0.h = r1
            r0 = r5
            r0.g()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.x.a(long, boolean, boolean):void");
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(p pVar) {
        z[] zVarArr;
        w wVar = (w) pVar;
        if (wVar.f) {
            for (z zVar : wVar.e) {
                zVar.e();
                zVar.f();
            }
        }
        wVar.f21656b.a(wVar);
        wVar.f21657c.removeCallbacksAndMessages(null);
        wVar.f21658d = null;
        wVar.h = true;
    }

    @Override // com.google.android.exoplayer2.source.a
    protected final void a(v vVar) {
        this.l = vVar;
        this.e.a();
        g();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected final void c() {
        this.e.b();
    }

    @Override // com.google.android.exoplayer2.source.r
    public final MediaItem e() {
        return this.f21671a;
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void f() {
    }
}
