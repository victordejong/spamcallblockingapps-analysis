package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.AbstractC11293d;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11321t;
import com.google.android.exoplayer2.source.C11305l;
import com.google.android.exoplayer2.source.C11306m;
import com.google.android.exoplayer2.source.ads.AbstractC11280b;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.source.ads.C11278a;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource.class */
public final class AdsMediaSource extends AbstractC11293d<AbstractC11315r.C11316a> {

    /* renamed from: a */
    private static final AbstractC11315r.C11316a f36999a = new AbstractC11315r.C11316a(new Object());

    /* renamed from: b */
    private final AbstractC11315r f37000b;

    /* renamed from: c */
    private final AbstractC11321t f37001c;

    /* renamed from: d */
    private final AbstractC11280b f37002d;

    /* renamed from: e */
    private final AbstractC11280b.AbstractC11281a f37003e;

    /* renamed from: f */
    private final C11570j f37004f;

    /* renamed from: g */
    private final Object f37005g;

    /* renamed from: j */
    private C11277c f37008j;

    /* renamed from: k */
    private AbstractC10864al f37009k;

    /* renamed from: l */
    private C11278a f37010l;

    /* renamed from: h */
    private final Handler f37006h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    private final AbstractC10864al.C10866a f37007i = new AbstractC10864al.C10866a();

    /* renamed from: m */
    private C11275a[][] f37011m = new C11275a[0];

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException.class */
    public static final class AdLoadException extends IOException {

        /* renamed from: a */
        public final int f37012a;

        private AdLoadException(int i, Exception exc) {
            super(exc);
            this.f37012a = i;
        }

        /* renamed from: a */
        public static AdLoadException m20993a(Exception exc) {
            return new AdLoadException(0, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.ads.AdsMediaSource$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$a.class */
    public final class C11275a {

        /* renamed from: a */
        final AbstractC11315r.C11316a f37013a;

        /* renamed from: b */
        final List<C11306m> f37014b = new ArrayList();

        /* renamed from: c */
        Uri f37015c;

        /* renamed from: d */
        AbstractC11315r f37016d;

        /* renamed from: e */
        AbstractC10864al f37017e;

        public C11275a(AbstractC11315r.C11316a c11316a) {
            AdsMediaSource.this = r5;
            this.f37013a = c11316a;
        }

        /* renamed from: a */
        public final void m20991a(AbstractC11315r abstractC11315r, Uri uri) {
            this.f37016d = abstractC11315r;
            this.f37015c = uri;
            for (int i = 0; i < this.f37014b.size(); i++) {
                C11306m c11306m = this.f37014b.get(i);
                c11306m.m20963a(abstractC11315r);
                c11306m.f37121c = new C11276b(uri);
            }
            AdsMediaSource.this.m20977a((AdsMediaSource) this.f37013a, abstractC11315r);
        }

        /* renamed from: a */
        public final boolean m20992a() {
            return this.f37016d != null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.AdsMediaSource$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$b.class */
    public final class C11276b implements C11306m.AbstractC11307a {

        /* renamed from: b */
        private final Uri f37020b;

        public C11276b(Uri uri) {
            AdsMediaSource.this = r4;
            this.f37020b = uri;
        }

        /* renamed from: b */
        public /* synthetic */ void m20990b(AbstractC11315r.C11316a c11316a) {
            AbstractC11280b unused = AdsMediaSource.this.f37002d;
        }

        /* renamed from: b */
        public /* synthetic */ void m20989b(AbstractC11315r.C11316a c11316a, IOException iOException) {
            AbstractC11280b unused = AdsMediaSource.this.f37002d;
        }

        @Override // com.google.android.exoplayer2.source.C11306m.AbstractC11307a
        /* renamed from: a */
        public final void mo20960a(final AbstractC11315r.C11316a c11316a) {
            AdsMediaSource.this.f37006h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$b$aSBK8MTHmAz5G1K_wQXpOv80xGM
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.C11276b.this.m20990b(c11316a);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.C11306m.AbstractC11307a
        /* renamed from: a */
        public final void mo20959a(final AbstractC11315r.C11316a c11316a, final IOException iOException) {
            AdsMediaSource.this.m21012a(c11316a).m20930a(new C11305l(C11305l.m20965a(), new C11570j(this.f37020b), SystemClock.elapsedRealtime()), 6, null, -9223372036854775807L, -9223372036854775807L, AdLoadException.m20993a(iOException), true);
            AdsMediaSource.this.f37006h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$b$TsOJVhqfYi9wQRM1PRj6haARGSE
                @Override // java.lang.Runnable
                public final void run() {
                    AdsMediaSource.C11276b.this.m20989b(c11316a, iOException);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ads.AdsMediaSource$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$c.class */
    public final class C11277c {

        /* renamed from: a */
        final Handler f37021a = C11599af.m20001a();

        /* renamed from: b */
        volatile boolean f37022b;

        public C11277c() {
            AdsMediaSource.this = r4;
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.exoplayer2.source.ads.AdsMediaSource$a[], com.google.android.exoplayer2.source.ads.AdsMediaSource$a[][]] */
    public AdsMediaSource(AbstractC11315r abstractC11315r, C11570j c11570j, Object obj, AbstractC11321t abstractC11321t, AbstractC11280b abstractC11280b, AbstractC11280b.AbstractC11281a abstractC11281a) {
        this.f37000b = abstractC11315r;
        this.f37001c = abstractC11321t;
        this.f37002d = abstractC11280b;
        this.f37003e = abstractC11281a;
        this.f37004f = c11570j;
        this.f37005g = obj;
        abstractC11321t.mo20852a();
    }

    /* renamed from: a */
    public /* synthetic */ void m20999a(C11277c c11277c) {
    }

    /* renamed from: b */
    public /* synthetic */ void m20995b(C11277c c11277c) {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final AbstractC11312p mo20859a(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        Uri uri;
        if (((C11278a) C11593a.m20020b(this.f37010l)).f37026c <= 0 || !c11316a.m20944a()) {
            C11306m c11306m = new C11306m(c11316a, abstractC11533b, j);
            c11306m.m20963a(this.f37000b);
            c11306m.m20964a(c11316a);
            return c11306m;
        }
        int i = c11316a.f37149b;
        int i2 = c11316a.f37150c;
        C11275a[][] c11275aArr = this.f37011m;
        if (c11275aArr[i].length <= i2) {
            c11275aArr[i] = (C11275a[]) Arrays.copyOf(c11275aArr[i], i2 + 1);
        }
        C11275a c11275a = this.f37011m[i][i2];
        C11275a c11275a2 = c11275a;
        if (c11275a == null) {
            C11275a c11275a3 = new C11275a(c11316a);
            this.f37011m[i][i2] = c11275a3;
            C11278a c11278a = this.f37010l;
            c11275a2 = c11275a3;
            if (c11278a != null) {
                int i3 = 0;
                while (true) {
                    c11275a2 = c11275a3;
                    if (i3 >= this.f37011m.length) {
                        break;
                    }
                    int i4 = 0;
                    while (true) {
                        C11275a[][] c11275aArr2 = this.f37011m;
                        if (i4 < c11275aArr2[i3].length) {
                            C11275a c11275a4 = c11275aArr2[i3][i4];
                            if (c11275a4 != null && !c11275a4.m20992a() && c11278a.f37028e[i3] != null && i4 < c11278a.f37028e[i3].f37032b.length && (uri = c11278a.f37028e[i3].f37032b[i4]) != null) {
                                MediaItem.C10830a c10830a = new MediaItem.C10830a();
                                c10830a.f34819b = uri;
                                MediaItem.C10832c c10832c = this.f37000b.mo20856e().f34812b;
                                if (c10832c != null && c10832c.f34851c != null) {
                                    MediaItem.DrmConfiguration drmConfiguration = c10832c.f34851c;
                                    c10830a.f34823f = drmConfiguration.uuid;
                                    c10830a.m22317a(drmConfiguration.getKeySetId());
                                    c10830a.f34821d = drmConfiguration.licenseUri;
                                    c10830a.f34826i = drmConfiguration.forceDefaultLicenseUri;
                                    Map<String, String> map = drmConfiguration.requestHeaders;
                                    c10830a.f34822e = (map == null || map.isEmpty()) ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(map));
                                    c10830a.f34824g = drmConfiguration.multiSession;
                                    c10830a.f34825h = drmConfiguration.playClearContentWithoutKey;
                                    List<Integer> list = drmConfiguration.sessionForClearTypes;
                                    c10830a.f34827j = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
                                }
                                c11275a4.m20991a(this.f37001c.mo20850a(c10830a.m22318a()), uri);
                            }
                            i4++;
                        }
                    }
                    i3++;
                }
            }
        }
        C11306m c11306m2 = new C11306m(c11316a, abstractC11533b, j);
        c11275a2.f37014b.add(c11306m2);
        if (c11275a2.f37016d != null) {
            c11306m2.m20963a(c11275a2.f37016d);
            c11306m2.f37121c = new C11276b((Uri) C11593a.m20020b(c11275a2.f37015c));
        }
        if (c11275a2.f37017e != null) {
            c11306m2.m20964a(new AbstractC11315r.C11316a(c11275a2.f37017e.mo20948a(0), c11316a.f37151d));
        }
        return c11306m2;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC11315r.C11316a mo20958a(AbstractC11315r.C11316a c11316a, AbstractC11315r.C11316a c11316a2) {
        AbstractC11315r.C11316a c11316a3 = c11316a;
        return c11316a3.m20944a() ? c11316a3 : c11316a2;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20860a(AbstractC11312p abstractC11312p) {
        C11306m c11306m = (C11306m) abstractC11312p;
        AbstractC11315r.C11316a c11316a = c11306m.f37119a;
        if (!c11316a.m20944a()) {
            c11306m.m20961g();
            return;
        }
        C11275a c11275a = (C11275a) C11593a.m20020b(this.f37011m[c11316a.f37149b][c11316a.f37150c]);
        c11275a.f37014b.remove(c11306m);
        c11306m.m20961g();
        if (!c11275a.f37014b.isEmpty()) {
            return;
        }
        if (c11275a.m20992a()) {
            AdsMediaSource.this.m20978a((AdsMediaSource) c11275a.f37013a);
        }
        this.f37011m[c11316a.f37149b][c11316a.f37150c] = null;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    public final void mo20858a(AbstractC11590v abstractC11590v) {
        super.mo20858a(abstractC11590v);
        final C11277c c11277c = new C11277c();
        this.f37008j = c11277c;
        m20977a((AdsMediaSource) f36999a, this.f37000b);
        this.f37006h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$Ey4Oac_rtzoLSxNqpC6z8dgONPw
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.m20995b(c11277c);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    public final /* synthetic */ void mo20957a(AbstractC11315r.C11316a c11316a, AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al) {
        long[] jArr;
        AbstractC11315r.C11316a c11316a2 = c11316a;
        boolean z = true;
        if (c11316a2.m20944a()) {
            C11275a c11275a = (C11275a) C11593a.m20020b(this.f37011m[c11316a2.f37149b][c11316a2.f37150c]);
            if (abstractC10864al.mo20946b() != 1) {
                z = false;
            }
            C11593a.m20022a(z);
            if (c11275a.f37017e == null) {
                Object mo20948a = abstractC10864al.mo20948a(0);
                for (int i = 0; i < c11275a.f37014b.size(); i++) {
                    C11306m c11306m = c11275a.f37014b.get(i);
                    c11306m.m20964a(new AbstractC11315r.C11316a(mo20948a, c11306m.f37119a.f37151d));
                }
            }
            c11275a.f37017e = abstractC10864al;
        } else {
            C11593a.m20022a(abstractC10864al.mo20946b() == 1);
            this.f37009k = abstractC10864al;
        }
        AbstractC10864al abstractC10864al2 = this.f37009k;
        C11278a c11278a = this.f37010l;
        if (c11278a == null || abstractC10864al2 == null) {
            return;
        }
        if (c11278a.f37026c == 0) {
            m21013a(abstractC10864al2);
            return;
        }
        C11278a c11278a2 = this.f37010l;
        ?? r0 = new long[this.f37011m.length];
        int i2 = 0;
        while (true) {
            C11275a[][] c11275aArr = this.f37011m;
            if (i2 >= c11275aArr.length) {
                break;
            }
            r0[i2] = new long[c11275aArr[i2].length];
            int i3 = 0;
            while (true) {
                C11275a[][] c11275aArr2 = this.f37011m;
                if (i3 < c11275aArr2[i2].length) {
                    C11275a c11275a2 = c11275aArr2[i2][i3];
                    r0[i2][i3] = ((c11275a2 != null && c11275a2.f37017e != null) ? c11275a2.f37017e.mo20947a(0, AdsMediaSource.this.f37007i, false).f35001d : -9223372036854775807) == true ? 1 : 0;
                    i3++;
                }
            }
            i2++;
        }
        C11278a.C11279a[] c11279aArr = (C11278a.C11279a[]) C11599af.m19954a(c11278a2.f37028e, c11278a2.f37028e.length);
        for (int i4 = 0; i4 < c11278a2.f37026c; i4++) {
            C11278a.C11279a c11279a = c11279aArr[i4];
            ?? r02 = r0[i4];
            if (r02.length < c11279a.f37032b.length) {
                int length = c11279a.f37032b.length;
                int length2 = r02.length;
                int max = Math.max(length, length2);
                jArr = Arrays.copyOf((long[]) r02, max);
                Arrays.fill(jArr, length2, max, -9223372036854775807L);
            } else {
                jArr = r02;
                if (c11279a.f37031a != -1) {
                    jArr = r02;
                    if (r02.length > c11279a.f37032b.length) {
                        jArr = Arrays.copyOf((long[]) r02, c11279a.f37032b.length);
                    }
                }
            }
            c11279aArr[i4] = new C11278a.C11279a(c11279a.f37031a, c11279a.f37033c, c11279a.f37032b, jArr);
        }
        C11278a c11278a3 = new C11278a(c11278a2.f37025b, c11278a2.f37027d, c11279aArr, c11278a2.f37029f, c11278a2.f37030g);
        this.f37010l = c11278a3;
        m21013a((AbstractC10864al) new C11282c(abstractC10864al2, c11278a3));
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [com.google.android.exoplayer2.source.ads.AdsMediaSource$a[], com.google.android.exoplayer2.source.ads.AdsMediaSource$a[][]] */
    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    public final void mo20857c() {
        super.mo20857c();
        final C11277c c11277c = (C11277c) C11593a.m20020b(this.f37008j);
        this.f37008j = null;
        c11277c.f37022b = true;
        c11277c.f37021a.removeCallbacksAndMessages(null);
        this.f37009k = null;
        this.f37010l = null;
        this.f37011m = new C11275a[0];
        this.f37006h.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads._$$Lambda$AdsMediaSource$XX5b3_JY7MllnvJK5bqnLx5KlAk
            @Override // java.lang.Runnable
            public final void run() {
                AdsMediaSource.this.m20999a(c11277c);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: e */
    public final MediaItem mo20856e() {
        return this.f37000b.mo20856e();
    }
}
