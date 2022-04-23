package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.extractor.e;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.source.af;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.q;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.upstream.w;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ai.class */
public final class ai extends b implements af.c {

    /* renamed from: a  reason: collision with root package name */
    final Object f3563a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f3564b;

    /* renamed from: c  reason: collision with root package name */
    private final f.a f3565c;

    /* renamed from: d  reason: collision with root package name */
    private final j f3566d;
    private final k<?> e;
    private final t f;
    private final String g;
    private final int h;
    private long i = -9223372036854775807L;
    private boolean j;
    private w k;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ai$a.class */
    public static final class a implements ad {

        /* renamed from: a  reason: collision with root package name */
        private final f.a f3567a;

        /* renamed from: b  reason: collision with root package name */
        private j f3568b;

        /* renamed from: c  reason: collision with root package name */
        private String f3569c;

        /* renamed from: d  reason: collision with root package name */
        private Object f3570d;
        private k<?> e;
        private t f;
        private int g;
        private boolean h;

        public a(f.a aVar) {
            this(aVar, new e());
        }

        public a(f.a aVar, j jVar) {
            this.f3567a = aVar;
            this.f3568b = jVar;
            this.e = k.e;
            this.f = new q();
            this.g = 1048576;
        }

        @Override // androidx.media2.exoplayer.external.source.ad
        public final /* synthetic */ t b(Uri uri) {
            this.h = true;
            return new ai(uri, this.f3567a, this.f3568b, this.e, this.f, this.f3569c, this.g, this.f3570d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(Uri uri, f.a aVar, j jVar, k<?> kVar, t tVar, String str, int i, Object obj) {
        this.f3564b = uri;
        this.f3565c = aVar;
        this.f3566d = jVar;
        this.e = kVar;
        this.f = tVar;
        this.g = str;
        this.h = i;
        this.f3563a = obj;
    }

    private void b(long j, boolean z) {
        this.i = j;
        this.j = z;
        a(new ao(this.i, this.j, false, null, this.f3563a));
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, b bVar, long j) {
        f a2 = this.f3565c.a();
        w wVar = this.k;
        if (wVar != null) {
            a2.a(wVar);
        }
        return new af(this.f3564b, a2, this.f3566d.b(), this.e, this.f, a(aVar), this, bVar, this.g, this.h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.media2.exoplayer.external.source.ai] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.source.af.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = r6
            r9 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = r5
            long r0 = r0.i
            r9 = r0
        L_0x0011:
            r0 = r5
            long r0 = r0.i
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0024
            r0 = r5
            boolean r0 = r0.j
            r1 = r8
            if (r0 != r1) goto L_0x0024
            return
        L_0x0024:
            r0 = r5
            r1 = r9
            r2 = r8
            r0.b(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ai.a(long, boolean):void");
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        af afVar = (af) sVar;
        if (afVar.m) {
            for (ak akVar : afVar.i) {
                akVar.c();
            }
            for (j jVar : afVar.j) {
                jVar.a();
            }
        }
        afVar.f3545c.a(afVar);
        afVar.e.removeCallbacksAndMessages(null);
        afVar.f = null;
        afVar.u = true;
        afVar.f3543a.b();
    }

    @Override // androidx.media2.exoplayer.external.source.b
    protected final void a(w wVar) {
        this.k = wVar;
        b(this.i, this.j);
    }

    @Override // androidx.media2.exoplayer.external.source.b
    protected final void c() {
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return this.f3563a;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void f() throws IOException {
    }
}
