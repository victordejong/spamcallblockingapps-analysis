package androidx.media2.exoplayer.external.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.ad;
import androidx.media2.exoplayer.external.source.ads.AdsMediaSource;
import androidx.media2.exoplayer.external.source.ads.a;
import androidx.media2.exoplayer.external.source.ads.b;
import androidx.media2.exoplayer.external.source.ai;
import androidx.media2.exoplayer.external.source.d;
import androidx.media2.exoplayer.external.source.q;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource.class */
public final class AdsMediaSource extends d<t.a> {

    /* renamed from: a  reason: collision with root package name */
    private static final t.a f3513a = new t.a(new Object());

    /* renamed from: b  reason: collision with root package name */
    private final t f3514b;

    /* renamed from: c  reason: collision with root package name */
    private final ad f3515c;

    /* renamed from: d  reason: collision with root package name */
    private final androidx.media2.exoplayer.external.source.ads.b f3516d;
    private final b.a e;
    private final Handler f;
    private final Map<t, List<q>> g;
    private final al.a h;
    private b i;
    private al j;
    private androidx.media2.exoplayer.external.source.ads.a k;
    private t[][] l;
    private al[][] m;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException.class */
    public static final class AdLoadException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f3517a;

        private AdLoadException(int i, Exception exc) {
            super(exc);
            this.f3517a = i;
        }

        public static AdLoadException a(Exception exc) {
            return new AdLoadException(0, exc);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$a.class */
    final class a implements q.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f3519b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3520c;

        /* renamed from: d  reason: collision with root package name */
        private final int f3521d;

        public a(Uri uri, int i, int i2) {
            this.f3519b = uri;
            this.f3520c = i;
            this.f3521d = i2;
        }

        @Override // androidx.media2.exoplayer.external.source.q.a
        public final void a(t.a aVar, final IOException iOException) {
            AdsMediaSource.this.a(aVar).a(new h(this.f3519b), this.f3519b, Collections.emptyMap(), 6, -1L, 0L, 0L, (IOException) AdLoadException.a(iOException), true);
            AdsMediaSource.this.f.post(new Runnable(this, iOException) { // from class: androidx.media2.exoplayer.external.source.ads.e

                /* renamed from: a  reason: collision with root package name */
                private final AdsMediaSource.a f3536a;

                /* renamed from: b  reason: collision with root package name */
                private final IOException f3537b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f3536a = this;
                    this.f3537b = iOException;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    b unused;
                    unused = AdsMediaSource.this.f3516d;
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$b.class */
    final class b {

        /* renamed from: a  reason: collision with root package name */
        final Handler f3522a = new Handler();

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f3523b;

        public b() {
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.media2.exoplayer.external.al[], androidx.media2.exoplayer.external.al[][]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media2.exoplayer.external.source.t[], androidx.media2.exoplayer.external.source.t[][]] */
    public AdsMediaSource(t tVar, ad adVar, androidx.media2.exoplayer.external.source.ads.b bVar, b.a aVar) {
        this.f3514b = tVar;
        this.f3515c = adVar;
        this.f3516d = bVar;
        this.e = aVar;
        this.f = new Handler(Looper.getMainLooper());
        this.g = new HashMap();
        this.h = new al.a();
        this.l = new t[0];
        this.m = new al[0];
    }

    public AdsMediaSource(t tVar, f.a aVar, androidx.media2.exoplayer.external.source.ads.b bVar, b.a aVar2) {
        this(tVar, new ai.a(aVar), bVar, aVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void g() {
        al alVar = this.j;
        androidx.media2.exoplayer.external.source.ads.a aVar = this.k;
        if (!(aVar == null || alVar == null)) {
            al[][] alVarArr = this.m;
            al.a aVar2 = this.h;
            long[] jArr = new long[alVarArr.length];
            for (int i = 0; i < alVarArr.length; i++) {
                jArr[i] = new long[alVarArr[i].length];
                for (int i2 = 0; i2 < alVarArr[i].length; i2++) {
                    jArr[i][i2] = alVarArr[i][i2] == null ? -9223372036854775807L : alVarArr[i][i2].a(0, aVar2, false).f2833d;
                }
            }
            a.C0084a[] aVarArr = (a.C0084a[]) ac.a(aVar.f3528d, aVar.f3528d.length);
            for (int i3 = 0; i3 < aVar.f3526b; i3++) {
                a.C0084a aVar3 = aVarArr[i3];
                long[] jArr2 = jArr[i3];
                androidx.media2.exoplayer.external.util.a.a(aVar3.f3529a == -1 || jArr2.length <= aVar3.f3530b.length);
                long[] jArr3 = jArr2;
                if (jArr2.length < aVar3.f3530b.length) {
                    int length = aVar3.f3530b.length;
                    int length2 = jArr2.length;
                    int max = Math.max(length, length2);
                    jArr3 = Arrays.copyOf(jArr2, max);
                    Arrays.fill(jArr3, length2, max, -9223372036854775807L);
                }
                aVarArr[i3] = new a.C0084a(aVar3.f3529a, aVar3.f3531c, aVar3.f3530b, jArr3);
            }
            androidx.media2.exoplayer.external.source.ads.a aVar4 = new androidx.media2.exoplayer.external.source.ads.a(aVar.f3527c, aVarArr, aVar.e, aVar.f);
            this.k = aVar4;
            a(aVar4.f3526b == 0 ? alVar : new f(alVar, this.k));
        }
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j) {
        androidx.media2.exoplayer.external.source.ads.a aVar2 = (androidx.media2.exoplayer.external.source.ads.a) androidx.media2.exoplayer.external.util.a.a(this.k);
        if (aVar2.f3526b <= 0 || !aVar.a()) {
            q qVar = new q(this.f3514b, aVar, bVar, j);
            qVar.a(aVar);
            return qVar;
        }
        int i = aVar.f3749b;
        int i2 = aVar.f3750c;
        Uri uri = (Uri) androidx.media2.exoplayer.external.util.a.a(aVar2.f3528d[i].f3530b[i2]);
        t[][] tVarArr = this.l;
        if (tVarArr[i].length <= i2) {
            int i3 = i2 + 1;
            tVarArr[i] = (t[]) Arrays.copyOf(tVarArr[i], i3);
            al[][] alVarArr = this.m;
            alVarArr[i] = (al[]) Arrays.copyOf(alVarArr[i], i3);
        }
        t tVar = this.l[i][i2];
        t tVar2 = tVar;
        if (tVar == null) {
            tVar2 = this.f3515c.b(uri);
            this.l[i][i2] = tVar2;
            this.g.put(tVar2, new ArrayList());
            a((AdsMediaSource) aVar, tVar2);
        }
        q qVar2 = new q(tVar2, aVar, bVar, j);
        qVar2.f3740d = new a(uri, i, i2);
        List<q> list = this.g.get(tVar2);
        if (list == null) {
            qVar2.a(new t.a(((al) androidx.media2.exoplayer.external.util.a.a(this.m[i][i2])).a(0), aVar.f3751d));
        } else {
            list.add(qVar2);
        }
        return qVar2;
    }

    @Override // androidx.media2.exoplayer.external.source.d
    public final /* bridge */ /* synthetic */ t.a a(t.a aVar, t.a aVar2) {
        t.a aVar3 = aVar;
        return aVar3.a() ? aVar3 : aVar2;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        q qVar = (q) sVar;
        List<q> list = this.g.get(qVar.f3737a);
        if (list != null) {
            list.remove(qVar);
        }
        qVar.f();
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        super.a(wVar);
        final b bVar = new b();
        this.i = bVar;
        a((AdsMediaSource) f3513a, this.f3514b);
        this.f.post(new Runnable(this, bVar) { // from class: androidx.media2.exoplayer.external.source.ads.c

            /* renamed from: a  reason: collision with root package name */
            private final AdsMediaSource f3533a;

            /* renamed from: b  reason: collision with root package name */
            private final AdsMediaSource.b f3534b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3533a = this;
                this.f3534b = bVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    @Override // androidx.media2.exoplayer.external.source.d
    public final /* synthetic */ void a(t.a aVar, t tVar, al alVar) {
        t.a aVar2 = aVar;
        boolean z = false;
        boolean z2 = true;
        if (aVar2.a()) {
            int i = aVar2.f3749b;
            int i2 = aVar2.f3750c;
            if (alVar.c() != 1) {
                z2 = false;
            }
            androidx.media2.exoplayer.external.util.a.a(z2);
            this.m[i][i2] = alVar;
            List<q> remove = this.g.remove(tVar);
            if (remove != null) {
                Object a2 = alVar.a(0);
                for (int i3 = 0; i3 < remove.size(); i3++) {
                    q qVar = remove.get(i3);
                    qVar.a(new t.a(a2, qVar.f3738b.f3751d));
                }
            }
            g();
            return;
        }
        if (alVar.c() == 1) {
            z = true;
        }
        androidx.media2.exoplayer.external.util.a.a(z);
        this.j = alVar;
        g();
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.media2.exoplayer.external.source.t[], androidx.media2.exoplayer.external.source.t[][]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media2.exoplayer.external.al[], androidx.media2.exoplayer.external.al[][]] */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void c() {
        super.c();
        b bVar = (b) androidx.media2.exoplayer.external.util.a.a(this.i);
        bVar.f3523b = true;
        bVar.f3522a.removeCallbacksAndMessages(null);
        this.i = null;
        this.g.clear();
        this.j = null;
        this.k = null;
        this.l = new t[0];
        this.m = new al[0];
        Handler handler = this.f;
        androidx.media2.exoplayer.external.source.ads.b bVar2 = this.f3516d;
        bVar2.getClass();
        handler.post(d.a(bVar2));
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return this.f3514b.e();
    }
}
