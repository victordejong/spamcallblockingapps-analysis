package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5579w0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4966e;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.p245b0.C4891e;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.C5203a0;
import com.google.android.exoplayer2.source.C5290t;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.upstream.C5496w;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5516i;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.util.C5536v;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.x */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x.class */
public final class C5302x implements AbstractC5292u, AbstractC4980j, Loader.AbstractC5462b<C5303a>, Loader.AbstractC5466f, C5203a0.AbstractC5205b {

    /* renamed from: d */
    private static final Map<String, String> f16804d = m19788G();

    /* renamed from: e */
    private static final Format f16805e = Format.m21737t("icy", "application/x-icy", Long.MAX_VALUE);

    /* renamed from: A */
    private boolean f16806A;

    /* renamed from: B */
    private C5306d f16807B;

    /* renamed from: C */
    private boolean f16808C;

    /* renamed from: E */
    private boolean f16810E;

    /* renamed from: F */
    private boolean f16811F;

    /* renamed from: G */
    private boolean f16812G;

    /* renamed from: H */
    private int f16813H;

    /* renamed from: K */
    private boolean f16816K;

    /* renamed from: L */
    private long f16817L;

    /* renamed from: N */
    private boolean f16819N;

    /* renamed from: O */
    private int f16820O;

    /* renamed from: P */
    private boolean f16821P;

    /* renamed from: Q */
    private boolean f16822Q;

    /* renamed from: f */
    private final Uri f16823f;

    /* renamed from: g */
    private final AbstractC5478j f16824g;

    /* renamed from: h */
    private final AbstractC5040k<?> f16825h;

    /* renamed from: i */
    private final AbstractC5493u f16826i;

    /* renamed from: j */
    private final AbstractC5297w.C5298a f16827j;

    /* renamed from: k */
    private final AbstractC5305c f16828k;

    /* renamed from: l */
    private final AbstractC5472e f16829l;

    /* renamed from: m */
    private final String f16830m;

    /* renamed from: n */
    private final long f16831n;

    /* renamed from: p */
    private final C5304b f16833p;

    /* renamed from: u */
    private AbstractC5292u.AbstractC5293a f16838u;

    /* renamed from: v */
    private AbstractC4992t f16839v;

    /* renamed from: w */
    private IcyHeaders f16840w;

    /* renamed from: z */
    private boolean f16843z;

    /* renamed from: o */
    private final Loader f16832o = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: q */
    private final C5516i f16834q = new C5516i();

    /* renamed from: r */
    private final Runnable f16835r = new Runnable() { // from class: com.google.android.exoplayer2.source.j
        @Override // java.lang.Runnable
        public final void run() {
            C5302x.this.m19778Q();
        }
    };

    /* renamed from: s */
    private final Runnable f16836s = new Runnable() { // from class: com.google.android.exoplayer2.source.k
        @Override // java.lang.Runnable
        public final void run() {
            C5302x.this.m19779P();
        }
    };

    /* renamed from: t */
    private final Handler f16837t = new Handler();

    /* renamed from: y */
    private C5308f[] f16842y = new C5308f[0];

    /* renamed from: x */
    private C5203a0[] f16841x = new C5203a0[0];

    /* renamed from: M */
    private long f16818M = -9223372036854775807L;

    /* renamed from: J */
    private long f16815J = -1;

    /* renamed from: I */
    private long f16814I = -9223372036854775807L;

    /* renamed from: D */
    private int f16809D = 1;

    /* renamed from: com.google.android.exoplayer2.source.x$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x$a.class */
    public final class C5303a implements Loader.AbstractC5465e, C5290t.AbstractC5291a {

        /* renamed from: a */
        private final Uri f16844a;

        /* renamed from: b */
        private final C5496w f16845b;

        /* renamed from: c */
        private final C5304b f16846c;

        /* renamed from: d */
        private final AbstractC4980j f16847d;

        /* renamed from: e */
        private final C5516i f16848e;

        /* renamed from: g */
        private volatile boolean f16850g;

        /* renamed from: i */
        private long f16852i;

        /* renamed from: l */
        private AbstractC4996v f16855l;

        /* renamed from: m */
        private boolean f16856m;

        /* renamed from: f */
        private final C4991s f16849f = new C4991s();

        /* renamed from: h */
        private boolean f16851h = true;

        /* renamed from: k */
        private long f16854k = -1;

        /* renamed from: j */
        private C5481l f16853j = m19735i(0);

        public C5303a(Uri uri, AbstractC5478j abstractC5478j, C5304b c5304b, AbstractC4980j abstractC4980j, C5516i c5516i) {
            C5302x.this = r6;
            this.f16844a = uri;
            this.f16845b = new C5496w(abstractC5478j);
            this.f16846c = c5304b;
            this.f16847d = abstractC4980j;
            this.f16848e = c5516i;
        }

        /* renamed from: i */
        private C5481l m19735i(long j) {
            return new C5481l(this.f16844a, j, -1L, C5302x.this.f16830m, 6, C5302x.f16804d);
        }

        /* renamed from: j */
        public void m19734j(long j, long j2) {
            this.f16849f.f15517a = j;
            this.f16852i = j2;
            this.f16851h = true;
            this.f16856m = false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
        /* renamed from: a */
        public void mo18957a() {
            Throwable th;
            C4966e c4966e;
            ?? r0;
            Uri uri;
            C4966e c4966e2;
            int i;
            int i2;
            int i3 = 0;
            while (i3 == 0 && !this.f16850g) {
                try {
                    r0 = this.f16849f.f15517a;
                    C5481l m19735i = m19735i(r0);
                    this.f16853j = m19735i;
                    long mo18949b = this.f16845b.mo18949b(m19735i);
                    this.f16854k = mo18949b;
                    if (mo18949b != -1) {
                        this.f16854k = mo18949b + r0;
                    }
                    uri = (Uri) C5508e.m18911e(this.f16845b.mo18948c());
                    C5302x.this.f16840w = IcyHeaders.m20371a(this.f16845b.getResponseHeaders());
                    C5496w c5496w = this.f16845b;
                    AbstractC5478j abstractC5478j = c5496w;
                    if (C5302x.this.f16840w != null) {
                        abstractC5478j = c5496w;
                        if (C5302x.this.f16840w.f16124i != -1) {
                            abstractC5478j = new C5290t(this.f16845b, C5302x.this.f16840w.f16124i, this);
                            AbstractC4996v m19784K = C5302x.this.m19784K();
                            this.f16855l = m19784K;
                            m19784K.mo19983d(C5302x.f16805e);
                        }
                    }
                    c4966e2 = new C4966e(abstractC5478j, r0, this.f16854k);
                    i = i3;
                } catch (Throwable th2) {
                    th = th2;
                    c4966e = null;
                }
                try {
                    AbstractC4978h m19732b = this.f16846c.m19732b(c4966e2, this.f16847d, uri);
                    int i4 = i3;
                    if (C5302x.this.f16840w != null) {
                        int i5 = i3;
                        if (m19732b instanceof C4891e) {
                            int i6 = i3;
                            ((C4891e) m19732b).m21268a();
                        }
                    }
                    int i7 = i3;
                    char c = r0;
                    if (this.f16851h) {
                        int i8 = i3;
                        m19732b.mo19968h(r0, this.f16852i);
                        int i9 = i3;
                        this.f16851h = false;
                        c = r0;
                        i7 = i3;
                    }
                    while (i7 == 0 && !this.f16850g) {
                        int i10 = i7;
                        this.f16848e.m18795a();
                        int i11 = i7;
                        int mo19970f = m19732b.mo19970f(c4966e2, this.f16849f);
                        i7 = mo19970f;
                        if (c4966e2.mo20999k() > C5302x.this.f16831n + c) {
                            c = c4966e2.mo20999k();
                            this.f16848e.m18794b();
                            C5302x.this.f16837t.post(C5302x.this.f16836s);
                            i7 = mo19970f;
                        }
                    }
                    if (i7 == 1) {
                        i2 = 0;
                    } else {
                        this.f16849f.f15517a = c4966e2.mo20999k();
                        i2 = i7;
                    }
                    i3 = i2;
                    C5515h0.m18827j(this.f16845b);
                } catch (Throwable th3) {
                    th = th3;
                    c4966e = c4966e2;
                    i3 = i;
                    if (i3 != 1 && c4966e != null) {
                        this.f16849f.f15517a = c4966e.mo20999k();
                    }
                    C5515h0.m18827j(this.f16845b);
                    throw th;
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        @Override // com.google.android.exoplayer2.source.C5290t.AbstractC5291a
        /* renamed from: b */
        public void mo19741b(C5536v c5536v) {
            char max = !this.f16856m ? this.f16852i : Math.max(C5302x.this.m19786I(), this.f16852i);
            int m18678a = c5536v.m18678a();
            AbstractC4996v abstractC4996v = (AbstractC4996v) C5508e.m18911e(this.f16855l);
            abstractC4996v.mo19985b(c5536v, m18678a);
            abstractC4996v.mo19984c(max, 1, m18678a, 0, null);
            this.f16856m = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
        /* renamed from: c */
        public void mo18955c() {
            this.f16850g = true;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.x$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x$b.class */
    public static final class C5304b {

        /* renamed from: a */
        private final AbstractC4978h[] f16858a;

        /* renamed from: b */
        private AbstractC4978h f16859b;

        public C5304b(AbstractC4978h[] abstractC4978hArr) {
            this.f16858a = abstractC4978hArr;
        }

        /* renamed from: a */
        public void m19733a() {
            AbstractC4978h abstractC4978h = this.f16859b;
            if (abstractC4978h != null) {
                abstractC4978h.mo19973b();
                this.f16859b = null;
            }
        }

        /* renamed from: b */
        public AbstractC4978h m19732b(AbstractC4979i abstractC4979i, AbstractC4980j abstractC4980j, Uri uri) {
            AbstractC4978h abstractC4978h = this.f16859b;
            if (abstractC4978h != null) {
                return abstractC4978h;
            }
            AbstractC4978h[] abstractC4978hArr = this.f16858a;
            int i = 0;
            if (abstractC4978hArr.length == 1) {
                this.f16859b = abstractC4978hArr[0];
            } else {
                int length = abstractC4978hArr.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    AbstractC4978h abstractC4978h2 = abstractC4978hArr[i];
                    try {
                    } catch (EOFException e) {
                    } catch (Throwable th) {
                        abstractC4979i.mo21003g();
                        throw th;
                    }
                    if (abstractC4978h2.mo19972c(abstractC4979i)) {
                        this.f16859b = abstractC4978h2;
                        abstractC4979i.mo21003g();
                        break;
                    }
                    continue;
                    abstractC4979i.mo21003g();
                    i++;
                }
                if (this.f16859b == null) {
                    throw new UnrecognizedInputFormatException("None of the available extractors (" + C5515h0.m18796z(this.f16858a) + ") could read the stream.", uri);
                }
            }
            this.f16859b.mo19969g(abstractC4980j);
            return this.f16859b;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.x$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x$c.class */
    public interface AbstractC5305c {
        /* renamed from: g */
        void mo19725g(long j, boolean z, boolean z2);
    }

    /* renamed from: com.google.android.exoplayer2.source.x$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x$d.class */
    public static final class C5306d {

        /* renamed from: a */
        public final AbstractC4992t f16860a;

        /* renamed from: b */
        public final TrackGroupArray f16861b;

        /* renamed from: c */
        public final boolean[] f16862c;

        /* renamed from: d */
        public final boolean[] f16863d;

        /* renamed from: e */
        public final boolean[] f16864e;

        public C5306d(AbstractC4992t abstractC4992t, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f16860a = abstractC4992t;
            this.f16861b = trackGroupArray;
            this.f16862c = zArr;
            int i = trackGroupArray.f16308e;
            this.f16863d = new boolean[i];
            this.f16864e = new boolean[i];
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.x$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x$e.class */
    private final class C5307e implements AbstractC5209b0 {

        /* renamed from: a */
        private final int f16865a;

        public C5307e(int i) {
            C5302x.this = r4;
            this.f16865a = i;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: a */
        public int mo19731a(C5090f0 c5090f0, C4858e c4858e, boolean z) {
            return C5302x.this.m19769Z(this.f16865a, c5090f0, c4858e, z);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: b */
        public void mo19730b() {
            C5302x.this.m19774U(this.f16865a);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: c */
        public int mo19729c(long j) {
            return C5302x.this.m19763c0(this.f16865a, j);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: e */
        public boolean mo19727e() {
            return C5302x.this.m19782M(this.f16865a);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.x$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/x$f.class */
    public static final class C5308f {

        /* renamed from: a */
        public final int f16867a;

        /* renamed from: b */
        public final boolean f16868b;

        public C5308f(int i, boolean z) {
            this.f16867a = i;
            this.f16868b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C5308f.class != obj.getClass()) {
                return false;
            }
            C5308f c5308f = (C5308f) obj;
            if (this.f16867a != c5308f.f16867a || this.f16868b != c5308f.f16868b) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f16867a * 31) + (this.f16868b ? 1 : 0);
        }
    }

    public C5302x(Uri uri, AbstractC5478j abstractC5478j, AbstractC4978h[] abstractC4978hArr, AbstractC5040k<?> abstractC5040k, AbstractC5493u abstractC5493u, AbstractC5297w.C5298a c5298a, AbstractC5305c abstractC5305c, AbstractC5472e abstractC5472e, String str, int i) {
        this.f16823f = uri;
        this.f16824g = abstractC5478j;
        this.f16825h = abstractC5040k;
        this.f16826i = abstractC5493u;
        this.f16827j = c5298a;
        this.f16828k = abstractC5305c;
        this.f16829l = abstractC5472e;
        this.f16830m = str;
        this.f16831n = i;
        this.f16833p = new C5304b(abstractC4978hArr);
        c5298a.m19826G();
    }

    /* renamed from: E */
    private boolean m19790E(C5303a c5303a, int i) {
        AbstractC4992t abstractC4992t;
        if (this.f16815J != -1 || ((abstractC4992t = this.f16839v) != null && abstractC4992t.mo20620j() != -9223372036854775807L)) {
            this.f16820O = i;
            return true;
        }
        if (this.f16806A && !m19759e0()) {
            this.f16819N = true;
            return false;
        }
        this.f16811F = this.f16806A;
        this.f16817L = 0L;
        this.f16820O = 0;
        for (C5203a0 c5203a0 : this.f16841x) {
            c5203a0.m20141J();
        }
        c5303a.m19734j(0L, 0L);
        return true;
    }

    /* renamed from: F */
    private void m19789F(C5303a c5303a) {
        if (this.f16815J == -1) {
            this.f16815J = c5303a.f16854k;
        }
    }

    /* renamed from: G */
    private static Map<String, String> m19788G() {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: H */
    private int m19787H() {
        int i = 0;
        for (C5203a0 c5203a0 : this.f16841x) {
            i += c5203a0.m20116v();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: I */
    public long m19786I() {
        char c = 0;
        for (C5203a0 c5203a0 : this.f16841x) {
            c = Math.max((long) c, c5203a0.m20121q());
        }
        return c;
    }

    /* renamed from: J */
    private C5306d m19785J() {
        return (C5306d) C5508e.m18911e(this.f16807B);
    }

    /* renamed from: L */
    private boolean m19783L() {
        return this.f16818M != -9223372036854775807L;
    }

    /* renamed from: O */
    public /* synthetic */ void m19779P() {
        if (!this.f16822Q) {
            ((AbstractC5292u.AbstractC5293a) C5508e.m18911e(this.f16838u)).mo19869j(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d5, code lost:
        if (r9.f16842y[r14].f16868b != false) goto L32;
     */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19778Q() {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C5302x.m19778Q():void");
    }

    /* renamed from: R */
    private void m19777R(int i) {
        C5306d m19785J = m19785J();
        boolean[] zArr = m19785J.f16864e;
        if (!zArr[i]) {
            Format m20159a = m19785J.f16861b.m20155a(i).m20159a(0);
            this.f16827j.m19818c(C5529r.m18729h(m20159a.f14461l), m20159a, 0, null, this.f16817L);
            zArr[i] = true;
        }
    }

    /* renamed from: S */
    private void m19776S(int i) {
        boolean[] zArr = m19785J().f16862c;
        if (!this.f16819N || !zArr[i]) {
            return;
        }
        C5203a0 c5203a0 = this.f16841x[i];
        if (c5203a0.m20112z(false)) {
            return;
        }
        this.f16818M = 0L;
        this.f16819N = false;
        this.f16811F = true;
        this.f16817L = 0L;
        this.f16820O = 0;
        for (C5203a0 c5203a02 : this.f16841x) {
            c5203a02.m20141J();
        }
        ((AbstractC5292u.AbstractC5293a) C5508e.m18911e(this.f16838u)).mo19869j(this);
    }

    /* renamed from: Y */
    private AbstractC4996v m19770Y(C5308f c5308f) {
        int length = this.f16841x.length;
        for (int i = 0; i < length; i++) {
            if (c5308f.equals(this.f16842y[i])) {
                return this.f16841x[i];
            }
        }
        C5203a0 c5203a0 = new C5203a0(this.f16829l, this.f16825h);
        c5203a0.m20135P(this);
        int i2 = length + 1;
        C5308f[] c5308fArr = (C5308f[]) Arrays.copyOf(this.f16842y, i2);
        c5308fArr[length] = c5308f;
        this.f16842y = (C5308f[]) C5515h0.m18831h(c5308fArr);
        C5203a0[] c5203a0Arr = (C5203a0[]) Arrays.copyOf(this.f16841x, i2);
        c5203a0Arr[length] = c5203a0;
        this.f16841x = (C5203a0[]) C5515h0.m18831h(c5203a0Arr);
        return c5203a0;
    }

    /* renamed from: b0 */
    private boolean m19765b0(boolean[] zArr, long j) {
        int length = this.f16841x.length;
        for (int i = 0; i < length; i++) {
            if (!this.f16841x[i].m20138M(j, false) && (zArr[i] || !this.f16808C)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d0 */
    private void m19761d0() {
        C5303a c5303a = new C5303a(this.f16823f, this.f16824g, this.f16833p, this, this.f16834q);
        if (this.f16806A) {
            AbstractC4992t abstractC4992t = m19785J().f16860a;
            C5508e.m18910f(m19783L());
            long j = this.f16814I;
            if (j != -9223372036854775807L && this.f16818M > j) {
                this.f16821P = true;
                this.f16818M = -9223372036854775807L;
                return;
            }
            c5303a.m19734j(abstractC4992t.mo20621i(this.f16818M).f15518a.f15524c, this.f16818M);
            this.f16818M = -9223372036854775807L;
        }
        this.f16820O = m19787H();
        this.f16827j.m19828E(c5303a.f16853j, 1, -1, null, 0, null, c5303a.f16852i, this.f16814I, this.f16832o.m19041n(c5303a, this, this.f16826i.mo18958c(this.f16809D)));
    }

    /* renamed from: e0 */
    private boolean m19759e0() {
        return this.f16811F || m19783L();
    }

    /* renamed from: K */
    AbstractC4996v m19784K() {
        return m19770Y(new C5308f(0, true));
    }

    /* renamed from: M */
    boolean m19782M(int i) {
        return !m19759e0() && this.f16841x[i].m20112z(this.f16821P);
    }

    /* renamed from: T */
    void m19775T() {
        this.f16832o.m19044k(this.f16826i.mo18958c(this.f16809D));
    }

    /* renamed from: U */
    void m19774U(int i) {
        this.f16841x[i].m20149B();
        m19775T();
    }

    /* renamed from: V */
    public void mo19040i(C5303a c5303a, long j, long j2, boolean z) {
        this.f16827j.m19799v(c5303a.f16853j, c5303a.f16845b.m18946e(), c5303a.f16845b.m18945f(), 1, -1, null, 0, null, c5303a.f16852i, this.f16814I, j, j2, c5303a.f16845b.m18947d());
        if (!z) {
            m19789F(c5303a);
            for (C5203a0 c5203a0 : this.f16841x) {
                c5203a0.m20141J();
            }
            if (this.f16813H <= 0) {
                return;
            }
            ((AbstractC5292u.AbstractC5293a) C5508e.m18911e(this.f16838u)).mo19869j(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: W */
    public void mo19039k(C5303a c5303a, long j, long j2) {
        AbstractC4992t abstractC4992t;
        if (this.f16814I == -9223372036854775807L && (abstractC4992t = this.f16839v) != null) {
            boolean mo20622d = abstractC4992t.mo20622d();
            long m19786I = m19786I();
            char c = m19786I == Long.MIN_VALUE ? (char) 0 : m19786I + OkHttpUtils.DEFAULT_MILLISECONDS;
            this.f16814I = c;
            this.f16828k.mo19725g(c, mo20622d, this.f16816K);
        }
        this.f16827j.m19796y(c5303a.f16853j, c5303a.f16845b.m18946e(), c5303a.f16845b.m18945f(), 1, -1, null, 0, null, c5303a.f16852i, this.f16814I, j, j2, c5303a.f16845b.m18947d());
        m19789F(c5303a);
        this.f16821P = true;
        ((AbstractC5292u.AbstractC5293a) C5508e.m18911e(this.f16838u)).mo19869j(this);
    }

    /* renamed from: X */
    public Loader.C5463c mo19038s(C5303a c5303a, long j, long j2, IOException iOException, int i) {
        Loader.C5463c c5463c;
        m19789F(c5303a);
        long mo18960a = this.f16826i.mo18960a(this.f16809D, j2, iOException, i);
        if (mo18960a == -9223372036854775807L) {
            c5463c = Loader.f17691d;
        } else {
            int m19787H = m19787H();
            c5463c = m19790E(c5303a, m19787H) ? Loader.m19048g(m19787H > this.f16820O, mo18960a) : Loader.f17690c;
        }
        this.f16827j.m19831B(c5303a.f16853j, c5303a.f16845b.m18946e(), c5303a.f16845b.m18945f(), 1, -1, null, 0, null, c5303a.f16852i, this.f16814I, j, j2, c5303a.f16845b.m18947d(), iOException, !c5463c.m19035c());
        return c5463c;
    }

    /* renamed from: Z */
    int m19769Z(int i, C5090f0 c5090f0, C4858e c4858e, boolean z) {
        if (m19759e0()) {
            return -3;
        }
        m19777R(i);
        int m20145F = this.f16841x[i].m20145F(c5090f0, c4858e, z, this.f16821P, this.f16817L);
        if (m20145F == -3) {
            m19776S(i);
        }
        return m20145F;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: a */
    public long mo19768a() {
        return this.f16813H == 0 ? (char) 0 : mo19760e();
    }

    /* renamed from: a0 */
    public void m19767a0() {
        if (this.f16806A) {
            for (C5203a0 c5203a0 : this.f16841x) {
                c5203a0.m20146E();
            }
        }
        this.f16832o.m19042m(this);
        this.f16837t.removeCallbacksAndMessages(null);
        this.f16838u = null;
        this.f16822Q = true;
        this.f16827j.m19825H();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: b */
    public boolean mo19766b(long j) {
        if (this.f16821P || this.f16832o.m19047h() || this.f16819N) {
            return false;
        }
        if (this.f16806A && this.f16813H == 0) {
            return false;
        }
        boolean m18792d = this.f16834q.m18792d();
        if (!this.f16832o.m19046i()) {
            m19761d0();
            m18792d = true;
        }
        return m18792d;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4980j
    /* renamed from: c */
    public void mo19764c(AbstractC4992t abstractC4992t) {
        if (this.f16840w != null) {
            abstractC4992t = new AbstractC4992t.C4994b(-9223372036854775807L);
        }
        this.f16839v = abstractC4992t;
        this.f16837t.post(this.f16835r);
    }

    /* renamed from: c0 */
    int m19763c0(int i, long j) {
        if (m19759e0()) {
            return 0;
        }
        m19777R(i);
        C5203a0 c5203a0 = this.f16841x[i];
        int m20132e = (!this.f16821P || j <= c5203a0.m20121q()) ? c5203a0.m20132e(j) : c5203a0.m20131f();
        if (m20132e == 0) {
            m19776S(i);
        }
        return m20132e;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: d */
    public boolean mo19762d() {
        return this.f16832o.m19046i() && this.f16834q.m18793c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: e */
    public long mo19760e() {
        char c;
        boolean[] zArr = m19785J().f16862c;
        if (this.f16821P) {
            return Long.MIN_VALUE;
        }
        if (m19783L()) {
            return this.f16818M;
        }
        if (this.f16808C) {
            int length = this.f16841x.length;
            int i = 0;
            ?? r0 = 9223372036854775807;
            while (true) {
                char c2 = r0;
                c = c2;
                if (i >= length) {
                    break;
                }
                char c3 = c2;
                if (zArr[i]) {
                    c3 = c2;
                    if (!this.f16841x[i].m20113y()) {
                        c3 = Math.min((long) c2, this.f16841x[i].m20121q());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == Long.MAX_VALUE) {
            c4 = m19786I();
        }
        char c5 = c4;
        if (c4 == Long.MIN_VALUE) {
            c5 = this.f16817L;
        }
        return c5;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: f */
    public void mo19758f(long j) {
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5466f
    /* renamed from: g */
    public void mo19028g() {
        for (C5203a0 c5203a0 : this.f16841x) {
            c5203a0.m20143H();
        }
        this.f16833p.m19733a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: h */
    public long mo19757h(AbstractC5408f[] abstractC5408fArr, boolean[] zArr, AbstractC5209b0[] abstractC5209b0Arr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        C5306d m19785J = m19785J();
        TrackGroupArray trackGroupArray = m19785J.f16861b;
        boolean[] zArr3 = m19785J.f16863d;
        int i = this.f16813H;
        for (int i2 = 0; i2 < abstractC5408fArr.length; i2++) {
            if (abstractC5209b0Arr[i2] != null && (abstractC5408fArr[i2] == null || !zArr[i2])) {
                int i3 = ((C5307e) abstractC5209b0Arr[i2]).f16865a;
                C5508e.m18910f(zArr3[i3]);
                this.f16813H--;
                zArr3[i3] = false;
                abstractC5209b0Arr[i2] = null;
            }
        }
        boolean z2 = !this.f16810E ? j != 0 : i == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= abstractC5408fArr.length) {
                break;
            }
            z2 = z;
            if (abstractC5209b0Arr[i4] == null) {
                z2 = z;
                if (abstractC5408fArr[i4] != null) {
                    AbstractC5408f abstractC5408f = abstractC5408fArr[i4];
                    C5508e.m18910f(abstractC5408f.length() == 1);
                    C5508e.m18910f(abstractC5408f.mo19289g(0) == 0);
                    int m20154b = trackGroupArray.m20154b(abstractC5408f.mo19295a());
                    C5508e.m18910f(!zArr3[m20154b]);
                    this.f16813H++;
                    zArr3[m20154b] = true;
                    abstractC5209b0Arr[i4] = new C5307e(m20154b);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        C5203a0 c5203a0 = this.f16841x[m20154b];
                        z2 = !c5203a0.m20138M(j, true) && c5203a0.m20119s() != 0;
                    }
                }
            }
            i4++;
        }
        if (this.f16813H == 0) {
            this.f16819N = false;
            this.f16811F = false;
            if (!this.f16832o.m19046i()) {
                C5203a0[] c5203a0Arr = this.f16841x;
                int length = c5203a0Arr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    c5203a0Arr[i5].m20141J();
                    i5++;
                }
            } else {
                for (C5203a0 c5203a02 : this.f16841x) {
                    c5203a02.m20124m();
                }
                this.f16832o.m19050e();
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? mo19754m = mo19754m(j);
                int i6 = 0;
                while (true) {
                    c = mo19754m;
                    if (i6 >= abstractC5209b0Arr.length) {
                        break;
                    }
                    if (abstractC5209b0Arr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.f16810E = true;
        return c;
    }

    @Override // com.google.android.exoplayer2.source.C5203a0.AbstractC5205b
    /* renamed from: j */
    public void mo19756j(Format format) {
        this.f16837t.post(this.f16835r);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: l */
    public void mo19755l() {
        m19775T();
        if (!this.f16821P || this.f16806A) {
            return;
        }
        throw new ParserException("Loading finished before preparation is complete.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.exoplayer2.source.x] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: m */
    public long mo19754m(long j) {
        C5306d m19785J = m19785J();
        AbstractC4992t abstractC4992t = m19785J.f16860a;
        boolean[] zArr = m19785J.f16862c;
        ?? r6 = j;
        if (!abstractC4992t.mo20622d()) {
            r6 = 0;
        }
        this.f16811F = false;
        this.f16817L = r6;
        if (m19783L()) {
            this.f16818M = r6;
            return r6;
        } else if (this.f16809D != 7 && m19765b0(zArr, r6)) {
            return r6;
        } else {
            this.f16819N = false;
            this.f16818M = r6;
            this.f16821P = false;
            if (this.f16832o.m19046i()) {
                this.f16832o.m19050e();
            } else {
                this.f16832o.m19049f();
                for (C5203a0 c5203a0 : this.f16841x) {
                    c5203a0.m20141J();
                }
            }
            return r6;
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: n */
    public long mo19753n(long j, C5579w0 c5579w0) {
        AbstractC4992t abstractC4992t = m19785J().f16860a;
        if (!abstractC4992t.mo20622d()) {
            return 0L;
        }
        AbstractC4992t.C4993a mo20621i = abstractC4992t.mo20621i(j);
        return C5515h0.m18824k0(j, c5579w0, mo20621i.f15518a.f15523b, mo20621i.f15519b.f15523b);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4980j
    /* renamed from: o */
    public void mo19752o() {
        this.f16843z = true;
        this.f16837t.post(this.f16835r);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: p */
    public long mo19751p() {
        if (!this.f16812G) {
            this.f16827j.m19823J();
            this.f16812G = true;
        }
        if (this.f16811F) {
            if (!this.f16821P && m19787H() <= this.f16820O) {
                return -9223372036854775807L;
            }
            this.f16811F = false;
            return this.f16817L;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: q */
    public void mo19750q(AbstractC5292u.AbstractC5293a abstractC5293a, long j) {
        this.f16838u = abstractC5293a;
        this.f16834q.m18792d();
        m19761d0();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: r */
    public TrackGroupArray mo19749r() {
        return m19785J().f16861b;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4980j
    /* renamed from: t */
    public AbstractC4996v mo19748t(int i, int i2) {
        return m19770Y(new C5308f(i, false));
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: u */
    public void mo19747u(long j, boolean z) {
        if (m19783L()) {
            return;
        }
        boolean[] zArr = m19785J().f16863d;
        int length = this.f16841x.length;
        for (int i = 0; i < length; i++) {
            this.f16841x[i].m20125l(j, z, zArr[i]);
        }
    }
}
