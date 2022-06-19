package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.C5127a;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4977g;
import com.google.android.exoplayer2.source.AbstractC5209b0;
import com.google.android.exoplayer2.source.AbstractC5211c0;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.C5203a0;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.C5237g;
import com.google.android.exoplayer2.source.hls.C5249n;
import com.google.android.exoplayer2.source.p251e0.AbstractC5219b;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.source.hls.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/n.class */
public final class C5249n implements Loader.AbstractC5462b<AbstractC5219b>, Loader.AbstractC5466f, AbstractC5211c0, AbstractC4980j, C5203a0.AbstractC5205b {

    /* renamed from: d */
    private static final Set<Integer> f16544d = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 4)));

    /* renamed from: A */
    private AbstractC4996v f16545A;

    /* renamed from: B */
    private int f16546B;

    /* renamed from: C */
    private int f16547C;

    /* renamed from: D */
    private boolean f16548D;

    /* renamed from: E */
    private boolean f16549E;

    /* renamed from: F */
    private int f16550F;

    /* renamed from: G */
    private Format f16551G;

    /* renamed from: H */
    private Format f16552H;

    /* renamed from: I */
    private boolean f16553I;

    /* renamed from: J */
    private TrackGroupArray f16554J;

    /* renamed from: K */
    private Set<TrackGroup> f16555K;

    /* renamed from: L */
    private int[] f16556L;

    /* renamed from: M */
    private int f16557M;

    /* renamed from: N */
    private boolean f16558N;

    /* renamed from: Q */
    private long f16561Q;

    /* renamed from: R */
    private long f16562R;

    /* renamed from: S */
    private boolean f16563S;

    /* renamed from: T */
    private boolean f16564T;

    /* renamed from: U */
    private boolean f16565U;

    /* renamed from: V */
    private boolean f16566V;

    /* renamed from: W */
    private long f16567W;

    /* renamed from: X */
    private DrmInitData f16568X;

    /* renamed from: Y */
    private int f16569Y;

    /* renamed from: e */
    private final int f16570e;

    /* renamed from: f */
    private final AbstractC5250a f16571f;

    /* renamed from: g */
    private final C5237g f16572g;

    /* renamed from: h */
    private final AbstractC5472e f16573h;

    /* renamed from: i */
    private final Format f16574i;

    /* renamed from: j */
    private final AbstractC5040k<?> f16575j;

    /* renamed from: k */
    private final AbstractC5493u f16576k;

    /* renamed from: m */
    private final AbstractC5297w.C5298a f16578m;

    /* renamed from: n */
    private final int f16579n;

    /* renamed from: p */
    private final ArrayList<C5246k> f16581p;

    /* renamed from: q */
    private final List<C5246k> f16582q;

    /* renamed from: v */
    private final Map<String, DrmInitData> f16587v;

    /* renamed from: y */
    private Set<Integer> f16590y;

    /* renamed from: z */
    private SparseIntArray f16591z;

    /* renamed from: l */
    private final Loader f16577l = new Loader("Loader:HlsSampleStreamWrapper");

    /* renamed from: o */
    private final C5237g.C5239b f16580o = new C5237g.C5239b();

    /* renamed from: x */
    private int[] f16589x = new int[0];

    /* renamed from: w */
    private C5252c[] f16588w = new C5252c[0];

    /* renamed from: P */
    private boolean[] f16560P = new boolean[0];

    /* renamed from: O */
    private boolean[] f16559O = new boolean[0];

    /* renamed from: u */
    private final ArrayList<C5248m> f16586u = new ArrayList<>();

    /* renamed from: r */
    private final Runnable f16583r = new Runnable() { // from class: com.google.android.exoplayer2.source.hls.b
        @Override // java.lang.Runnable
        public final void run() {
            C5249n.this.m20019P();
        }
    };

    /* renamed from: s */
    private final Runnable f16584s = new Runnable() { // from class: com.google.android.exoplayer2.source.hls.a
        @Override // java.lang.Runnable
        public final void run() {
            C5249n.this.m20011X();
        }
    };

    /* renamed from: t */
    private final Handler f16585t = new Handler();

    /* renamed from: com.google.android.exoplayer2.source.hls.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/n$a.class */
    public interface AbstractC5250a extends AbstractC5211c0.AbstractC5212a<C5249n> {
        /* renamed from: c */
        void mo19988c();

        /* renamed from: k */
        void mo19987k(Uri uri);
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.n$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/n$b.class */
    private static class C5251b implements AbstractC4996v {

        /* renamed from: a */
        private static final Format f16592a = Format.m21737t(null, "application/id3", Long.MAX_VALUE);

        /* renamed from: b */
        private static final Format f16593b = Format.m21737t(null, "application/x-emsg", Long.MAX_VALUE);

        /* renamed from: c */
        private final C5127a f16594c = new C5127a();

        /* renamed from: d */
        private final AbstractC4996v f16595d;

        /* renamed from: e */
        private final Format f16596e;

        /* renamed from: f */
        private Format f16597f;

        /* renamed from: g */
        private byte[] f16598g;

        /* renamed from: h */
        private int f16599h;

        public C5251b(AbstractC4996v abstractC4996v, int i) {
            this.f16595d = abstractC4996v;
            if (i == 1) {
                this.f16596e = f16592a;
            } else if (i != 3) {
                throw new IllegalArgumentException("Unknown metadataType: " + i);
            } else {
                this.f16596e = f16593b;
            }
            this.f16598g = new byte[0];
            this.f16599h = 0;
        }

        /* renamed from: e */
        private boolean m19982e(EventMessage eventMessage) {
            Format mo20091y = eventMessage.mo20091y();
            return mo20091y != null && C5515h0.m18843b(this.f16596e.f14461l, mo20091y.f14461l);
        }

        /* renamed from: f */
        private void m19981f(int i) {
            byte[] bArr = this.f16598g;
            if (bArr.length < i) {
                this.f16598g = Arrays.copyOf(bArr, i + (i / 2));
            }
        }

        /* renamed from: g */
        private C5536v m19980g(int i, int i2) {
            int i3 = this.f16599h - i2;
            C5536v c5536v = new C5536v(Arrays.copyOfRange(this.f16598g, i3 - i, i3));
            byte[] bArr = this.f16598g;
            System.arraycopy(bArr, i3, bArr, 0, i2);
            this.f16599h = i2;
            return c5536v;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
        /* renamed from: a */
        public int mo19986a(AbstractC4979i abstractC4979i, int i, boolean z) {
            m19981f(this.f16599h + i);
            int read = abstractC4979i.read(this.f16598g, this.f16599h, i);
            if (read != -1) {
                this.f16599h += read;
                return read;
            } else if (!z) {
                throw new EOFException();
            } else {
                return -1;
            }
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
        /* renamed from: b */
        public void mo19985b(C5536v c5536v, int i) {
            m19981f(this.f16599h + i);
            c5536v.m18671h(this.f16598g, this.f16599h, i);
            this.f16599h += i;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
        /* renamed from: c */
        public void mo19984c(long j, int i, int i2, int i3, AbstractC4996v.C4997a c4997a) {
            C5508e.m18911e(this.f16597f);
            C5536v m19980g = m19980g(i2, i3);
            if (!C5515h0.m18843b(this.f16597f.f14461l, this.f16596e.f14461l)) {
                if (!"application/x-emsg".equals(this.f16597f.f14461l)) {
                    C5526o.m18742f("EmsgUnwrappingTrackOutput", "Ignoring sample for unsupported format: " + this.f16597f.f14461l);
                    return;
                }
                EventMessage m20383b = this.f16594c.m20383b(m19980g);
                if (!m19982e(m20383b)) {
                    C5526o.m18742f("EmsgUnwrappingTrackOutput", String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.f16596e.f14461l, m20383b.mo20091y()));
                    return;
                }
                m19980g = new C5536v((byte[]) C5508e.m18911e(m20383b.mo20092h0()));
            }
            int m18678a = m19980g.m18678a();
            this.f16595d.mo19985b(m19980g, m18678a);
            this.f16595d.mo19984c(j, i, m18678a, i3, c4997a);
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
        /* renamed from: d */
        public void mo19983d(Format format) {
            this.f16597f = format;
            this.f16595d.mo19983d(this.f16596e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.n$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/n$c.class */
    public static final class C5252c extends C5203a0 {

        /* renamed from: E */
        private final Map<String, DrmInitData> f16600E;

        /* renamed from: F */
        private DrmInitData f16601F;

        public C5252c(AbstractC5472e abstractC5472e, AbstractC5040k<?> abstractC5040k, Map<String, DrmInitData> map) {
            super(abstractC5472e, abstractC5040k);
            this.f16600E = map;
        }

        /* renamed from: S */
        private Metadata m19979S(Metadata metadata) {
            int i;
            if (metadata == null) {
                return null;
            }
            int m20392d = metadata.m20392d();
            int i2 = 0;
            while (true) {
                if (i2 >= m20392d) {
                    i = -1;
                    break;
                }
                Metadata.Entry m20393c = metadata.m20393c(i2);
                if ((m20393c instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) m20393c).f16163e)) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i == -1) {
                return metadata;
            }
            if (m20392d == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[m20392d - 1];
            int i3 = 0;
            while (i3 < m20392d) {
                if (i3 != i) {
                    entryArr[i3 < i ? i3 : i3 - 1] = metadata.m20393c(i3);
                }
                i3++;
            }
            return new Metadata(entryArr);
        }

        /* renamed from: T */
        public void m19978T(DrmInitData drmInitData) {
            this.f16601F = drmInitData;
            m20114x();
        }

        @Override // com.google.android.exoplayer2.source.C5203a0
        /* renamed from: p */
        public Format mo19977p(Format format) {
            DrmInitData drmInitData = this.f16601F;
            if (drmInitData == null) {
                drmInitData = format.f14464o;
            }
            DrmInitData drmInitData2 = drmInitData;
            if (drmInitData != null) {
                DrmInitData drmInitData3 = this.f16600E.get(drmInitData.f15704f);
                drmInitData2 = drmInitData;
                if (drmInitData3 != null) {
                    drmInitData2 = drmInitData3;
                }
            }
            return super.mo19977p(format.m21754a(drmInitData2, m19979S(format.f14459j)));
        }
    }

    public C5249n(int i, AbstractC5250a abstractC5250a, C5237g c5237g, Map<String, DrmInitData> map, AbstractC5472e abstractC5472e, long j, Format format, AbstractC5040k<?> abstractC5040k, AbstractC5493u abstractC5493u, AbstractC5297w.C5298a c5298a, int i2) {
        this.f16570e = i;
        this.f16571f = abstractC5250a;
        this.f16572g = c5237g;
        this.f16587v = map;
        this.f16573h = abstractC5472e;
        this.f16574i = format;
        this.f16575j = abstractC5040k;
        this.f16576k = abstractC5493u;
        this.f16578m = c5298a;
        this.f16579n = i2;
        Set<Integer> set = f16544d;
        this.f16590y = new HashSet(set.size());
        this.f16591z = new SparseIntArray(set.size());
        ArrayList<C5246k> arrayList = new ArrayList<>();
        this.f16581p = arrayList;
        this.f16582q = Collections.unmodifiableList(arrayList);
        this.f16561Q = j;
        this.f16562R = j;
    }

    /* renamed from: A */
    private C5203a0 m20034A(int i, int i2) {
        int length = this.f16588w.length;
        boolean z = true;
        if (i2 != 1) {
            z = i2 == 2;
        }
        C5252c c5252c = new C5252c(this.f16573h, this.f16575j, this.f16587v);
        if (z) {
            c5252c.m19978T(this.f16568X);
        }
        c5252c.m20137N(this.f16567W);
        c5252c.m20134Q(this.f16569Y);
        c5252c.m20135P(this);
        int i3 = length + 1;
        int[] copyOf = Arrays.copyOf(this.f16589x, i3);
        this.f16589x = copyOf;
        copyOf[length] = i;
        this.f16588w = (C5252c[]) C5515h0.m18838d0(this.f16588w, c5252c);
        boolean[] copyOf2 = Arrays.copyOf(this.f16560P, i3);
        this.f16560P = copyOf2;
        copyOf2[length] = z;
        this.f16558N = copyOf2[length] | this.f16558N;
        this.f16590y.add(Integer.valueOf(i2));
        this.f16591z.append(i2, length);
        if (m20027H(i2) > m20027H(this.f16546B)) {
            this.f16547C = length;
            this.f16546B = i2;
        }
        this.f16559O = Arrays.copyOf(this.f16559O, i3);
        return c5252c;
    }

    /* renamed from: B */
    private TrackGroupArray m20033B(TrackGroup[] trackGroupArr) {
        for (int i = 0; i < trackGroupArr.length; i++) {
            TrackGroup trackGroup = trackGroupArr[i];
            Format[] formatArr = new Format[trackGroup.f16304d];
            for (int i2 = 0; i2 < trackGroup.f16304d; i2++) {
                Format m20159a = trackGroup.m20159a(i2);
                DrmInitData drmInitData = m20159a.f14464o;
                Format format = m20159a;
                if (drmInitData != null) {
                    format = m20159a.m21750e(this.f16575j.mo20775a(drmInitData));
                }
                formatArr[i2] = format;
            }
            trackGroupArr[i] = new TrackGroup(formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    /* renamed from: C */
    private static Format m20032C(Format format, Format format2, boolean z) {
        if (format == null) {
            return format2;
        }
        int i = z ? format.f14457h : -1;
        int i2 = format.f14474y;
        if (i2 == -1) {
            i2 = format2.f14474y;
        }
        String m18797y = C5515h0.m18797y(format.f14458i, C5529r.m18729h(format2.f14461l));
        String m18732e = C5529r.m18732e(m18797y);
        String str = m18732e;
        if (m18732e == null) {
            str = format2.f14461l;
        }
        return format2.m21752c(format.f14453d, format.f14454e, str, m18797y, format.f14459j, i, format.f14466q, format.f14467r, i2, format.f14455f, format.f14449D);
    }

    /* renamed from: D */
    private boolean m20031D(C5246k c5246k) {
        int i = c5246k.f16504l;
        int length = this.f16588w.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f16559O[i2] && this.f16588w[i2].m20147D() == i) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: E */
    private static boolean m20030E(Format format, Format format2) {
        String str = format.f14461l;
        String str2 = format2.f14461l;
        int m18729h = C5529r.m18729h(str);
        boolean z = true;
        if (m18729h != 3) {
            if (m18729h != C5529r.m18729h(str2)) {
                z = false;
            }
            return z;
        } else if (!C5515h0.m18843b(str, str2)) {
            return false;
        } else {
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                return true;
            }
            return format.f14450E == format2.f14450E;
        }
    }

    /* renamed from: F */
    private C5246k m20029F() {
        ArrayList<C5246k> arrayList = this.f16581p;
        return arrayList.get(arrayList.size() - 1);
    }

    /* renamed from: G */
    private AbstractC4996v m20028G(int i, int i2) {
        C5508e.m18915a(f16544d.contains(Integer.valueOf(i2)));
        int i3 = this.f16591z.get(i2, -1);
        if (i3 == -1) {
            return null;
        }
        if (this.f16590y.add(Integer.valueOf(i2))) {
            this.f16589x[i3] = i;
        }
        return this.f16589x[i3] == i ? this.f16588w[i3] : m19989z(i, i2);
    }

    /* renamed from: H */
    private static int m20027H(int i) {
        if (i != 1) {
            if (i == 2) {
                return 3;
            }
            return i != 3 ? 0 : 1;
        }
        return 2;
    }

    /* renamed from: J */
    private static boolean m20025J(AbstractC5219b abstractC5219b) {
        return abstractC5219b instanceof C5246k;
    }

    /* renamed from: K */
    private boolean m20024K() {
        return this.f16562R != -9223372036854775807L;
    }

    @EnsuresNonNull({"trackGroupToSampleQueueIndex"})
    @RequiresNonNull({"trackGroups"})
    /* renamed from: O */
    private void m20020O() {
        int i = this.f16554J.f16308e;
        int[] iArr = new int[i];
        this.f16556L = iArr;
        Arrays.fill(iArr, -1);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 0;
            while (true) {
                C5252c[] c5252cArr = this.f16588w;
                if (i3 >= c5252cArr.length) {
                    break;
                } else if (m20030E(c5252cArr[i3].m20117u(), this.f16554J.m20155a(i2).m20159a(0))) {
                    this.f16556L[i2] = i3;
                    break;
                } else {
                    i3++;
                }
            }
        }
        Iterator<C5248m> it = this.f16586u.iterator();
        while (it.hasNext()) {
            it.next().m20037d();
        }
    }

    /* renamed from: P */
    public void m20019P() {
        if (this.f16553I || this.f16556L != null || !this.f16548D) {
            return;
        }
        for (C5252c c5252c : this.f16588w) {
            if (c5252c.m20117u() == null) {
                return;
            }
        }
        if (this.f16554J != null) {
            m20020O();
            return;
        }
        m19991x();
        m20002g0();
        this.f16571f.mo19988c();
    }

    /* renamed from: X */
    public void m20011X() {
        this.f16548D = true;
        m20019P();
    }

    /* renamed from: b0 */
    private void m20007b0() {
        for (C5252c c5252c : this.f16588w) {
            c5252c.m20140K(this.f16563S);
        }
        this.f16563S = false;
    }

    /* renamed from: c0 */
    private boolean m20006c0(long j) {
        int length = this.f16588w.length;
        for (int i = 0; i < length; i++) {
            if (!this.f16588w[i].m20138M(j, false) && (this.f16560P[i] || !this.f16558N)) {
                return false;
            }
        }
        return true;
    }

    @RequiresNonNull({"trackGroups", "optionalTrackGroups"})
    /* renamed from: g0 */
    private void m20002g0() {
        this.f16549E = true;
    }

    /* renamed from: l0 */
    private void m19996l0(AbstractC5209b0[] abstractC5209b0Arr) {
        this.f16586u.clear();
        for (AbstractC5209b0 abstractC5209b0 : abstractC5209b0Arr) {
            if (abstractC5209b0 != null) {
                this.f16586u.add((C5248m) abstractC5209b0);
            }
        }
    }

    @EnsuresNonNull({"trackGroups", "optionalTrackGroups"})
    /* renamed from: v */
    private void m19993v() {
        C5508e.m18910f(this.f16549E);
        C5508e.m18911e(this.f16554J);
        C5508e.m18911e(this.f16555K);
    }

    @EnsuresNonNull({"trackGroups", "optionalTrackGroups", "trackGroupToSampleQueueIndex"})
    /* renamed from: x */
    private void m19991x() {
        int i;
        int i2;
        int i3;
        int length = this.f16588w.length;
        boolean z = false;
        int i4 = 0;
        int i5 = 6;
        int i6 = -1;
        while (true) {
            i = i6;
            int i7 = 2;
            if (i4 >= length) {
                break;
            }
            String str = this.f16588w[i4].m20117u().f14461l;
            if (!C5529r.m18723n(str)) {
                i7 = C5529r.m18725l(str) ? 1 : C5529r.m18724m(str) ? 3 : 6;
            }
            if (m20027H(i7) > m20027H(i5)) {
                i3 = i4;
                i2 = i7;
            } else {
                i2 = i5;
                i3 = i;
                if (i7 == i5) {
                    i2 = i5;
                    i3 = i;
                    if (i != -1) {
                        i3 = -1;
                        i2 = i5;
                    }
                }
            }
            i4++;
            i5 = i2;
            i6 = i3;
        }
        TrackGroup m20073e = this.f16572g.m20073e();
        int i8 = m20073e.f16304d;
        this.f16557M = -1;
        this.f16556L = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            this.f16556L[i9] = i9;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i10 = 0; i10 < length; i10++) {
            Format m20117u = this.f16588w[i10].m20117u();
            if (i10 == i) {
                Format[] formatArr = new Format[i8];
                if (i8 == 1) {
                    formatArr[0] = m20117u.m21747h(m20073e.m20159a(0));
                } else {
                    for (int i11 = 0; i11 < i8; i11++) {
                        formatArr[i11] = m20032C(m20073e.m20159a(i11), m20117u, true);
                    }
                }
                trackGroupArr[i10] = new TrackGroup(formatArr);
                this.f16557M = i10;
            } else {
                trackGroupArr[i10] = new TrackGroup(m20032C((i5 != 2 || !C5529r.m18725l(m20117u.f14461l)) ? null : this.f16574i, m20117u, false));
            }
        }
        this.f16554J = m20033B(trackGroupArr);
        if (this.f16555K == null) {
            z = true;
        }
        C5508e.m18910f(z);
        this.f16555K = Collections.emptySet();
    }

    /* renamed from: z */
    private static C4977g m19989z(int i, int i2) {
        C5526o.m18742f("HlsSampleStreamWrapper", "Unmapped track with id " + i + " of type " + i2);
        return new C4977g();
    }

    /* renamed from: I */
    public void m20026I(int i, boolean z) {
        this.f16569Y = i;
        for (C5252c c5252c : this.f16588w) {
            c5252c.m20134Q(i);
        }
        if (z) {
            for (C5252c c5252c2 : this.f16588w) {
                c5252c2.m20133R();
            }
        }
    }

    /* renamed from: L */
    public boolean m20023L(int i) {
        return !m20024K() && this.f16588w[i].m20112z(this.f16565U);
    }

    /* renamed from: Q */
    public void m20018Q() {
        this.f16577l.m19045j();
        this.f16572g.m20069i();
    }

    /* renamed from: R */
    public void m20017R(int i) {
        m20018Q();
        this.f16588w[i].m20149B();
    }

    /* renamed from: S */
    public void mo19040i(AbstractC5219b abstractC5219b, long j, long j2, boolean z) {
        this.f16578m.m19799v(abstractC5219b.f16396a, abstractC5219b.m20101f(), abstractC5219b.m20102e(), abstractC5219b.f16397b, this.f16570e, abstractC5219b.f16398c, abstractC5219b.f16399d, abstractC5219b.f16400e, abstractC5219b.f16401f, abstractC5219b.f16402g, j, j2, abstractC5219b.m20104b());
        if (!z) {
            m20007b0();
            if (this.f16550F <= 0) {
                return;
            }
            this.f16571f.mo19869j(this);
        }
    }

    /* renamed from: T */
    public void mo19039k(AbstractC5219b abstractC5219b, long j, long j2) {
        this.f16572g.m20068j(abstractC5219b);
        this.f16578m.m19796y(abstractC5219b.f16396a, abstractC5219b.m20101f(), abstractC5219b.m20102e(), abstractC5219b.f16397b, this.f16570e, abstractC5219b.f16398c, abstractC5219b.f16399d, abstractC5219b.f16400e, abstractC5219b.f16401f, abstractC5219b.f16402g, j, j2, abstractC5219b.m20104b());
        if (!this.f16549E) {
            mo19766b(this.f16561Q);
        } else {
            this.f16571f.mo19869j(this);
        }
    }

    /* renamed from: U */
    public Loader.C5463c mo19038s(AbstractC5219b abstractC5219b, long j, long j2, IOException iOException, int i) {
        Loader.C5463c c5463c;
        long m20104b = abstractC5219b.m20104b();
        boolean m20025J = m20025J(abstractC5219b);
        long mo18959b = this.f16576k.mo18959b(abstractC5219b.f16397b, j2, iOException, i);
        boolean z = false;
        boolean m20071g = mo18959b != -9223372036854775807L ? this.f16572g.m20071g(abstractC5219b, mo18959b) : false;
        if (m20071g) {
            if (m20025J && m20104b == 0) {
                ArrayList<C5246k> arrayList = this.f16581p;
                if (arrayList.remove(arrayList.size() - 1) == abstractC5219b) {
                    z = true;
                }
                C5508e.m18910f(z);
                if (this.f16581p.isEmpty()) {
                    this.f16562R = this.f16561Q;
                }
            }
            c5463c = Loader.f17690c;
        } else {
            long mo18960a = this.f16576k.mo18960a(abstractC5219b.f16397b, j2, iOException, i);
            c5463c = mo18960a != -9223372036854775807L ? Loader.m19048g(false, mo18960a) : Loader.f17691d;
        }
        this.f16578m.m19831B(abstractC5219b.f16396a, abstractC5219b.m20101f(), abstractC5219b.m20102e(), abstractC5219b.f16397b, this.f16570e, abstractC5219b.f16398c, abstractC5219b.f16399d, abstractC5219b.f16400e, abstractC5219b.f16401f, abstractC5219b.f16402g, j, j2, m20104b, iOException, !c5463c.m19035c());
        if (m20071g) {
            if (!this.f16549E) {
                mo19766b(this.f16561Q);
            } else {
                this.f16571f.mo19869j(this);
            }
        }
        return c5463c;
    }

    /* renamed from: V */
    public void m20013V() {
        this.f16590y.clear();
    }

    /* renamed from: W */
    public boolean m20012W(Uri uri, long j) {
        return this.f16572g.m20067k(uri, j);
    }

    /* renamed from: Y */
    public void m20010Y(TrackGroup[] trackGroupArr, int i, int... iArr) {
        this.f16554J = m20033B(trackGroupArr);
        this.f16555K = new HashSet();
        for (int i2 : iArr) {
            this.f16555K.add(this.f16554J.m20155a(i2));
        }
        this.f16557M = i;
        Handler handler = this.f16585t;
        final AbstractC5250a abstractC5250a = this.f16571f;
        abstractC5250a.getClass();
        handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.hls.c
            @Override // java.lang.Runnable
            public final void run() {
                C5249n.AbstractC5250a.this.mo19988c();
            }
        });
        m20002g0();
    }

    /* renamed from: Z */
    public int m20009Z(int i, C5090f0 c5090f0, C4858e c4858e, boolean z) {
        if (m20024K()) {
            return -3;
        }
        if (!this.f16581p.isEmpty()) {
            int i2 = 0;
            while (i2 < this.f16581p.size() - 1 && m20031D(this.f16581p.get(i2))) {
                i2++;
            }
            C5515h0.m18826j0(this.f16581p, 0, i2);
            C5246k c5246k = this.f16581p.get(0);
            Format format = c5246k.f16398c;
            if (!format.equals(this.f16552H)) {
                this.f16578m.m19818c(this.f16570e, format, c5246k.f16399d, c5246k.f16400e, c5246k.f16401f);
            }
            this.f16552H = format;
        }
        int m20145F = this.f16588w[i].m20145F(c5090f0, c4858e, z, this.f16565U, this.f16561Q);
        if (m20145F == -5) {
            Format format2 = (Format) C5508e.m18911e(c5090f0.f15930c);
            Format format3 = format2;
            if (i == this.f16547C) {
                int m20147D = this.f16588w[i].m20147D();
                int i3 = 0;
                while (i3 < this.f16581p.size() && this.f16581p.get(i3).f16504l != m20147D) {
                    i3++;
                }
                format3 = format2.m21747h(i3 < this.f16581p.size() ? this.f16581p.get(i3).f16398c : (Format) C5508e.m18911e(this.f16551G));
            }
            c5090f0.f15930c = format3;
        }
        return m20145F;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: a */
    public long mo19768a() {
        if (m20024K()) {
            return this.f16562R;
        }
        return this.f16565U ? (char) 0 : m20029F().f16402g;
    }

    /* renamed from: a0 */
    public void m20008a0() {
        if (this.f16549E) {
            for (C5252c c5252c : this.f16588w) {
                c5252c.m20146E();
            }
        }
        this.f16577l.m19042m(this);
        this.f16585t.removeCallbacksAndMessages(null);
        this.f16553I = true;
        this.f16586u.clear();
    }

    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: b */
    public boolean mo19766b(long j) {
        char c;
        List<C5246k> list;
        if (this.f16565U || this.f16577l.m19046i() || this.f16577l.m19047h()) {
            return false;
        }
        if (m20024K()) {
            list = Collections.emptyList();
            c = this.f16562R;
        } else {
            list = this.f16582q;
            C5246k m20029F = m20029F();
            c = m20029F.m20051m() ? m20029F.f16402g : Math.max(this.f16561Q, m20029F.f16401f);
        }
        this.f16572g.m20074d(j, c, list, this.f16549E || !list.isEmpty(), this.f16580o);
        C5237g.C5239b c5239b = this.f16580o;
        boolean z = c5239b.f16482b;
        AbstractC5219b abstractC5219b = c5239b.f16481a;
        Uri uri = c5239b.f16483c;
        c5239b.m20059a();
        if (z) {
            this.f16562R = -9223372036854775807L;
            this.f16565U = true;
            return true;
        } else if (abstractC5219b == null) {
            if (uri == null) {
                return false;
            }
            this.f16571f.mo19987k(uri);
            return false;
        } else {
            if (m20025J(abstractC5219b)) {
                this.f16562R = -9223372036854775807L;
                C5246k c5246k = (C5246k) abstractC5219b;
                c5246k.m20052l(this);
                this.f16581p.add(c5246k);
                this.f16551G = c5246k.f16398c;
            }
            this.f16578m.m19828E(abstractC5219b.f16396a, abstractC5219b.f16397b, this.f16570e, abstractC5219b.f16398c, abstractC5219b.f16399d, abstractC5219b.f16400e, abstractC5219b.f16401f, abstractC5219b.f16402g, this.f16577l.m19041n(abstractC5219b, this, this.f16576k.mo18958c(abstractC5219b.f16397b)));
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4980j
    /* renamed from: c */
    public void mo19764c(AbstractC4992t abstractC4992t) {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: d */
    public boolean mo19762d() {
        return this.f16577l.m19046i();
    }

    /* renamed from: d0 */
    public boolean m20005d0(long j, boolean z) {
        this.f16561Q = j;
        if (m20024K()) {
            this.f16562R = j;
            return true;
        } else if (this.f16548D && !z && m20006c0(j)) {
            return false;
        } else {
            this.f16562R = j;
            this.f16565U = false;
            this.f16581p.clear();
            if (this.f16577l.m19046i()) {
                this.f16577l.m19050e();
                return true;
            }
            this.f16577l.m19049f();
            m20007b0();
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: e */
    public long mo19760e() {
        if (this.f16565U) {
            return Long.MIN_VALUE;
        }
        if (m20024K()) {
            return this.f16562R;
        }
        ?? r0 = this.f16561Q;
        C5246k m20029F = m20029F();
        if (!m20029F.m20051m()) {
            if (this.f16581p.size() > 1) {
                ArrayList<C5246k> arrayList = this.f16581p;
                m20029F = arrayList.get(arrayList.size() - 2);
            } else {
                m20029F = null;
            }
        }
        char c = r0;
        if (m20029F != null) {
            c = Math.max((long) r0, m20029F.f16402g);
        }
        char c2 = c;
        if (this.f16548D) {
            C5252c[] c5252cArr = this.f16588w;
            int length = c5252cArr.length;
            int i = 0;
            while (true) {
                c2 = c;
                if (i >= length) {
                    break;
                }
                c = Math.max((long) c, c5252cArr[i].m20121q());
                i++;
            }
        }
        return c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x023c  */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20004e0(com.google.android.exoplayer2.trackselection.AbstractC5408f[] r11, boolean[] r12, com.google.android.exoplayer2.source.AbstractC5209b0[] r13, boolean[] r14, long r15, boolean r17) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.C5249n.m20004e0(com.google.android.exoplayer2.trackselection.f[], boolean[], com.google.android.exoplayer2.source.b0[], boolean[], long, boolean):boolean");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: f */
    public void mo19758f(long j) {
    }

    /* renamed from: f0 */
    public void m20003f0(DrmInitData drmInitData) {
        if (!C5515h0.m18843b(this.f16568X, drmInitData)) {
            this.f16568X = drmInitData;
            int i = 0;
            while (true) {
                C5252c[] c5252cArr = this.f16588w;
                if (i >= c5252cArr.length) {
                    return;
                }
                if (this.f16560P[i]) {
                    c5252cArr[i].m19978T(drmInitData);
                }
                i++;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5466f
    /* renamed from: g */
    public void mo19028g() {
        for (C5252c c5252c : this.f16588w) {
            c5252c.m20143H();
        }
    }

    /* renamed from: h0 */
    public void m20001h0(boolean z) {
        this.f16572g.m20064n(z);
    }

    /* renamed from: i0 */
    public void m20000i0(long j) {
        if (this.f16567W != j) {
            this.f16567W = j;
            for (C5252c c5252c : this.f16588w) {
                c5252c.m20137N(j);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.C5203a0.AbstractC5205b
    /* renamed from: j */
    public void mo19756j(Format format) {
        this.f16585t.post(this.f16583r);
    }

    /* renamed from: j0 */
    public int m19999j0(int i, long j) {
        if (m20024K()) {
            return 0;
        }
        C5252c c5252c = this.f16588w[i];
        return (!this.f16565U || j <= c5252c.m20121q()) ? c5252c.m20132e(j) : c5252c.m20131f();
    }

    /* renamed from: k0 */
    public void m19998k0(int i) {
        m19993v();
        C5508e.m18911e(this.f16556L);
        int i2 = this.f16556L[i];
        C5508e.m18910f(this.f16559O[i2]);
        this.f16559O[i2] = false;
    }

    /* renamed from: l */
    public void m19997l() {
        m20018Q();
        if (!this.f16565U || this.f16549E) {
            return;
        }
        throw new ParserException("Loading finished before preparation is complete.");
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4980j
    /* renamed from: o */
    public void mo19752o() {
        this.f16566V = true;
        this.f16585t.post(this.f16584s);
    }

    /* renamed from: r */
    public TrackGroupArray m19995r() {
        m19993v();
        return this.f16554J;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4980j
    /* renamed from: t */
    public AbstractC4996v mo19748t(int i, int i2) {
        C5252c c5252c;
        if (!f16544d.contains(Integer.valueOf(i2))) {
            int i3 = 0;
            while (true) {
                C5252c[] c5252cArr = this.f16588w;
                if (i3 >= c5252cArr.length) {
                    c5252c = null;
                    break;
                } else if (this.f16589x[i3] == i) {
                    c5252c = c5252cArr[i3];
                    break;
                } else {
                    i3++;
                }
            }
        } else {
            c5252c = m20028G(i, i2);
        }
        C5252c c5252c2 = c5252c;
        if (c5252c == null) {
            if (this.f16566V) {
                return m19989z(i, i2);
            }
            c5252c2 = m20034A(i, i2);
        }
        if (i2 == 4) {
            if (this.f16545A == null) {
                this.f16545A = new C5251b(c5252c2, this.f16579n);
            }
            return this.f16545A;
        }
        return c5252c2;
    }

    /* renamed from: u */
    public void m19994u(long j, boolean z) {
        if (!this.f16548D || m20024K()) {
            return;
        }
        int length = this.f16588w.length;
        for (int i = 0; i < length; i++) {
            this.f16588w[i].m20125l(j, z, this.f16559O[i]);
        }
    }

    /* renamed from: w */
    public int m19992w(int i) {
        m19993v();
        C5508e.m18911e(this.f16556L);
        int i2 = this.f16556L[i];
        int i3 = -2;
        if (i2 == -1) {
            if (this.f16555K.contains(this.f16554J.m20155a(i))) {
                i3 = -3;
            }
            return i3;
        }
        boolean[] zArr = this.f16559O;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    /* renamed from: y */
    public void m19990y() {
        if (!this.f16549E) {
            mo19766b(this.f16561Q);
        }
    }
}
