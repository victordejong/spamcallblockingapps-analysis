package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.source.ads.a;
import com.google.android.exoplayer2.source.ads.b;
import com.google.android.exoplayer2.source.d;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.t;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource.class */
public final class AdsMediaSource extends d<r.a> {

    /* renamed from: a  reason: collision with root package name */
    private static final r.a f21546a = new r.a(new Object());

    /* renamed from: b  reason: collision with root package name */
    private final r f21547b;

    /* renamed from: c  reason: collision with root package name */
    private final t f21548c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.source.ads.b f21549d;
    private final b.a e;
    private final j f;
    private final Object g;
    private c j;
    private al k;
    private com.google.android.exoplayer2.source.ads.a l;
    private final Handler h = new Handler(Looper.getMainLooper());
    private final al.a i = new al.a();
    private a[][] m = new a[0];

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException.class */
    public static final class AdLoadException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f21550a;

        private AdLoadException(int i, Exception exc) {
            super(exc);
            this.f21550a = i;
        }

        public static AdLoadException a(Exception exc) {
            return new AdLoadException(0, exc);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$a.class */
    final class a {

        /* renamed from: a  reason: collision with root package name */
        final r.a f21551a;

        /* renamed from: b  reason: collision with root package name */
        final List<m> f21552b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        Uri f21553c;

        /* renamed from: d  reason: collision with root package name */
        r f21554d;
        al e;

        public a(r.a aVar) {
            this.f21551a = aVar;
        }

        public final void a(r rVar, Uri uri) {
            this.f21554d = rVar;
            this.f21553c = uri;
            for (int i = 0; i < this.f21552b.size(); i++) {
                m mVar = this.f21552b.get(i);
                mVar.a(rVar);
                mVar.f21624c = new b(uri);
            }
            AdsMediaSource.this.a((AdsMediaSource) this.f21551a, rVar);
        }

        public final boolean a() {
            return this.f21554d != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$b.class */
    public final class b implements m.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f21556b;

        public b(Uri uri) {
            this.f21556b = uri;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(r.a aVar) {
            com.google.android.exoplayer2.source.ads.b unused = AdsMediaSource.this.f21549d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(r.a aVar, IOException iOException) {
            com.google.android.exoplayer2.source.ads.b unused = AdsMediaSource.this.f21549d;
        }

        @Override // com.google.android.exoplayer2.source.m.a
        public final void a(final r.a aVar) {
            AdsMediaSource.this.h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$b$aSBK8MTHmAz5G1K_wQXpOv80xGM
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.b.this.b(aVar);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.m.a
        public final void a(final r.a aVar, final IOException iOException) {
            AdsMediaSource.this.a(aVar).a(new l(l.a(), new j(this.f21556b), SystemClock.elapsedRealtime()), 6, null, -9223372036854775807L, -9223372036854775807L, AdLoadException.a(iOException), true);
            AdsMediaSource.this.h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.b.this.b(aVar, iOException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$c.class */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        final Handler f21557a = af.a();

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f21558b;

        public c() {
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.exoplayer2.source.ads.AdsMediaSource$a[], com.google.android.exoplayer2.source.ads.AdsMediaSource$a[][]] */
    public AdsMediaSource(r rVar, j jVar, Object obj, t tVar, com.google.android.exoplayer2.source.ads.b bVar, b.a aVar) {
        this.f21547b = rVar;
        this.f21548c = tVar;
        this.f21549d = bVar;
        this.e = aVar;
        this.f = jVar;
        this.g = obj;
        tVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(c cVar) {
    }

    @Override // com.google.android.exoplayer2.source.r
    public final p a(r.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j) {
        Uri uri;
        if (((com.google.android.exoplayer2.source.ads.a) com.google.android.exoplayer2.util.a.b(this.l)).f21562c <= 0 || !aVar.a()) {
            m mVar = new m(aVar, bVar, j);
            mVar.a(this.f21547b);
            mVar.a(aVar);
            return mVar;
        }
        int i = aVar.f21638b;
        int i2 = aVar.f21639c;
        a[][] aVarArr = this.m;
        if (aVarArr[i].length <= i2) {
            aVarArr[i] = (a[]) Arrays.copyOf(aVarArr[i], i2 + 1);
        }
        a aVar2 = this.m[i][i2];
        a aVar3 = aVar2;
        if (aVar2 == null) {
            a aVar4 = new a(aVar);
            this.m[i][i2] = aVar4;
            com.google.android.exoplayer2.source.ads.a aVar5 = this.l;
            aVar3 = aVar4;
            if (aVar5 != null) {
                int i3 = 0;
                while (true) {
                    aVar3 = aVar4;
                    if (i3 >= this.m.length) {
                        break;
                    }
                    int i4 = 0;
                    while (true) {
                        a[][] aVarArr2 = this.m;
                        if (i4 < aVarArr2[i3].length) {
                            a aVar6 = aVarArr2[i3][i4];
                            if (!(aVar6 == null || aVar6.a() || aVar5.e[i3] == null || i4 >= aVar5.e[i3].f21565b.length || (uri = aVar5.e[i3].f21565b[i4]) == null)) {
                                MediaItem.a aVar7 = new MediaItem.a();
                                aVar7.f20615b = uri;
                                MediaItem.c cVar = this.f21547b.e().f20611b;
                                if (!(cVar == null || cVar.f20624c == null)) {
                                    MediaItem.DrmConfiguration drmConfiguration = cVar.f20624c;
                                    aVar7.f = drmConfiguration.uuid;
                                    aVar7.a(drmConfiguration.getKeySetId());
                                    aVar7.f20617d = drmConfiguration.licenseUri;
                                    aVar7.i = drmConfiguration.forceDefaultLicenseUri;
                                    Map<String, String> map = drmConfiguration.requestHeaders;
                                    aVar7.e = (map == null || map.isEmpty()) ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(map));
                                    aVar7.g = drmConfiguration.multiSession;
                                    aVar7.h = drmConfiguration.playClearContentWithoutKey;
                                    List<Integer> list = drmConfiguration.sessionForClearTypes;
                                    aVar7.j = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
                                }
                                aVar6.a(this.f21548c.a(aVar7.a()), uri);
                            }
                            i4++;
                        }
                    }
                    i3++;
                }
            }
        }
        m mVar2 = new m(aVar, bVar, j);
        aVar3.f21552b.add(mVar2);
        if (aVar3.f21554d != null) {
            mVar2.a(aVar3.f21554d);
            mVar2.f21624c = new b((Uri) com.google.android.exoplayer2.util.a.b(aVar3.f21553c));
        }
        if (aVar3.e != null) {
            mVar2.a(new r.a(aVar3.e.a(0), aVar.f21640d));
        }
        return mVar2;
    }

    @Override // com.google.android.exoplayer2.source.d
    public final /* bridge */ /* synthetic */ r.a a(r.a aVar, r.a aVar2) {
        r.a aVar3 = aVar;
        return aVar3.a() ? aVar3 : aVar2;
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(p pVar) {
        m mVar = (m) pVar;
        r.a aVar = mVar.f21622a;
        if (aVar.a()) {
            a aVar2 = (a) com.google.android.exoplayer2.util.a.b(this.m[aVar.f21638b][aVar.f21639c]);
            aVar2.f21552b.remove(mVar);
            mVar.g();
            if (aVar2.f21552b.isEmpty()) {
                if (aVar2.a()) {
                    AdsMediaSource.this.a((AdsMediaSource) aVar2.f21551a);
                }
                this.m[aVar.f21638b][aVar.f21639c] = null;
                return;
            }
            return;
        }
        mVar.g();
    }

    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void a(v vVar) {
        super.a(vVar);
        final c cVar = new c();
        this.j = cVar;
        a((AdsMediaSource) f21546a, this.f21547b);
        this.h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$Ey4Oac_rtzoLSxNqpC6z8dgONPw
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.b(cVar);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.exoplayer2.source.d
    public final /* synthetic */ void a(r.a aVar, r rVar, al alVar) {
        long[] jArr;
        r.a aVar2 = aVar;
        boolean z = true;
        boolean z2 = true;
        if (aVar2.a()) {
            a aVar3 = (a) com.google.android.exoplayer2.util.a.b(this.m[aVar2.f21638b][aVar2.f21639c]);
            if (alVar.b() != 1) {
                z2 = false;
            }
            com.google.android.exoplayer2.util.a.a(z2);
            if (aVar3.e == null) {
                Object a2 = alVar.a(0);
                for (int i = 0; i < aVar3.f21552b.size(); i++) {
                    m mVar = aVar3.f21552b.get(i);
                    mVar.a(new r.a(a2, mVar.f21622a.f21640d));
                }
            }
            aVar3.e = alVar;
        } else {
            if (alVar.b() != 1) {
                z = false;
            }
            com.google.android.exoplayer2.util.a.a(z);
            this.k = alVar;
        }
        al alVar2 = this.k;
        com.google.android.exoplayer2.source.ads.a aVar4 = this.l;
        if (!(aVar4 == null || alVar2 == null)) {
            if (aVar4.f21562c == 0) {
                a(alVar2);
                return;
            }
            com.google.android.exoplayer2.source.ads.a aVar5 = this.l;
            long[] jArr2 = new long[this.m.length];
            int i2 = 0;
            while (true) {
                a[][] aVarArr = this.m;
                if (i2 >= aVarArr.length) {
                    break;
                }
                jArr2[i2] = new long[aVarArr[i2].length];
                int i3 = 0;
                while (true) {
                    a[][] aVarArr2 = this.m;
                    if (i3 < aVarArr2[i2].length) {
                        a aVar6 = aVarArr2[i2][i3];
                        jArr2[i2][i3] = (aVar6 == null || aVar6.e == null) ? -9223372036854775807L : aVar6.e.a(0, AdsMediaSource.this.i, false).f20678d;
                        i3++;
                    }
                }
                i2++;
            }
            a.C0435a[] aVarArr3 = (a.C0435a[]) af.a(aVar5.e, aVar5.e.length);
            for (int i4 = 0; i4 < aVar5.f21562c; i4++) {
                a.C0435a aVar7 = aVarArr3[i4];
                long[] jArr3 = jArr2[i4];
                if (jArr3.length < aVar7.f21565b.length) {
                    int length = aVar7.f21565b.length;
                    int length2 = jArr3.length;
                    int max = Math.max(length, length2);
                    jArr = Arrays.copyOf(jArr3, max);
                    Arrays.fill(jArr, length2, max, -9223372036854775807L);
                } else {
                    jArr = jArr3;
                    if (aVar7.f21564a != -1) {
                        jArr = jArr3;
                        if (jArr3.length > aVar7.f21565b.length) {
                            jArr = Arrays.copyOf(jArr3, aVar7.f21565b.length);
                        }
                    }
                }
                aVarArr3[i4] = new a.C0435a(aVar7.f21564a, aVar7.f21566c, aVar7.f21565b, jArr);
            }
            com.google.android.exoplayer2.source.ads.a aVar8 = new com.google.android.exoplayer2.source.ads.a(aVar5.f21561b, aVar5.f21563d, aVarArr3, aVar5.f, aVar5.g);
            this.l = aVar8;
            a((al) new com.google.android.exoplayer2.source.ads.c(alVar2, aVar8));
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.android.exoplayer2.source.ads.AdsMediaSource$a[], com.google.android.exoplayer2.source.ads.AdsMediaSource$a[][]] */
    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void c() {
        super.c();
        final c cVar = (c) com.google.android.exoplayer2.util.a.b(this.j);
        this.j = null;
        cVar.f21558b = true;
        cVar.f21557a.removeCallbacksAndMessages(null);
        this.k = null;
        this.l = null;
        this.m = new a[0];
        this.h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$XX5b3_JY7MllnvJK5bqnLx5KlAk
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.a(cVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.r
    public final MediaItem e() {
        return this.f21547b.e();
    }
}
