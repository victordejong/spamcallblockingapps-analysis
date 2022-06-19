package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1588f;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.source.AbstractC1757am;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.source.C1753ak;
import androidx.media2.exoplayer.external.source.C1823j;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.hls.C1784d;
import androidx.media2.exoplayer.external.source.p070a.AbstractC1720b;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2012m;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.media2.exoplayer.external.source.hls.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/k.class */
public final class C1797k implements AbstractC1601i, C1753ak.AbstractC1755b, AbstractC1757am, Loader.AbstractC1956a<AbstractC1720b>, Loader.AbstractC1960e {

    /* renamed from: A */
    private final AbstractC1963b f7131A;

    /* renamed from: B */
    private final Format f7132B;

    /* renamed from: C */
    private final AbstractC1468k<?> f7133C;

    /* renamed from: D */
    private final AbstractC1986t f7134D;

    /* renamed from: H */
    private final Map<String, DrmInitData> f7138H;

    /* renamed from: J */
    private boolean f7140J;

    /* renamed from: L */
    private boolean f7142L;

    /* renamed from: N */
    private int f7144N;

    /* renamed from: O */
    private Set<TrackGroup> f7145O;

    /* renamed from: P */
    private boolean f7146P;

    /* renamed from: R */
    private long f7148R;

    /* renamed from: S */
    private boolean f7149S;

    /* renamed from: T */
    private long f7150T;

    /* renamed from: U */
    private int f7151U;

    /* renamed from: a */
    final int f7152a;

    /* renamed from: b */
    final C1784d f7153b;

    /* renamed from: d */
    final AbstractC1845u.C1846a f7155d;

    /* renamed from: e */
    final ArrayList<C1794h> f7156e;

    /* renamed from: f */
    final List<C1794h> f7157f;

    /* renamed from: k */
    int f7162k;

    /* renamed from: l */
    boolean f7163l;

    /* renamed from: m */
    boolean f7164m;

    /* renamed from: n */
    int f7165n;

    /* renamed from: o */
    Format f7166o;

    /* renamed from: p */
    Format f7167p;

    /* renamed from: q */
    boolean f7168q;

    /* renamed from: r */
    TrackGroupArray f7169r;

    /* renamed from: s */
    int[] f7170s;

    /* renamed from: t */
    int f7171t;

    /* renamed from: v */
    long f7173v;

    /* renamed from: w */
    boolean f7174w;

    /* renamed from: x */
    boolean f7175x;

    /* renamed from: y */
    boolean f7176y;

    /* renamed from: z */
    private final AbstractC1798a f7177z;

    /* renamed from: c */
    final Loader f7154c = new Loader("Loader:HlsSampleStreamWrapper");

    /* renamed from: E */
    private final C1784d.C1787c f7135E = new C1784d.C1787c();

    /* renamed from: I */
    private int[] f7139I = new int[0];

    /* renamed from: K */
    private int f7141K = -1;

    /* renamed from: M */
    private int f7143M = -1;

    /* renamed from: i */
    C1753ak[] f7160i = new C1753ak[0];

    /* renamed from: j */
    C1823j[] f7161j = new C1823j[0];

    /* renamed from: Q */
    private boolean[] f7147Q = new boolean[0];

    /* renamed from: u */
    boolean[] f7172u = new boolean[0];

    /* renamed from: h */
    final ArrayList<C1796j> f7159h = new ArrayList<>();

    /* renamed from: F */
    private final Runnable f7136F = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.hls.l

        /* renamed from: a */
        private final C1797k f7179a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f7179a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f7179a.m42198h();
        }
    };

    /* renamed from: G */
    private final Runnable f7137G = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.hls.m

        /* renamed from: a */
        private final C1797k f7180a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f7180a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1797k c1797k = this.f7180a;
            c1797k.f7163l = true;
            c1797k.m42198h();
        }
    };

    /* renamed from: g */
    final Handler f7158g = new Handler();

    /* renamed from: androidx.media2.exoplayer.external.source.hls.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/k$a.class */
    public interface AbstractC1798a extends AbstractC1757am.AbstractC1758a<C1797k> {
        /* renamed from: a */
        void mo42194a(Uri uri);

        /* renamed from: f */
        void mo42193f();
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/k$b.class */
    static final class C1799b extends C1753ak {

        /* renamed from: g */
        private final Map<String, DrmInitData> f7178g;

        public C1799b(AbstractC1963b abstractC1963b, Map<String, DrmInitData> map) {
            super(abstractC1963b);
            this.f7178g = map;
        }

        @Override // androidx.media2.exoplayer.external.source.C1753ak, androidx.media2.exoplayer.external.extractor.AbstractC1641q
        /* renamed from: a */
        public final void mo42192a(Format format) {
            int i;
            DrmInitData drmInitData = format.drmInitData;
            DrmInitData drmInitData2 = drmInitData;
            if (drmInitData != null) {
                DrmInitData drmInitData3 = this.f7178g.get(drmInitData.schemeType);
                drmInitData2 = drmInitData;
                if (drmInitData3 != null) {
                    drmInitData2 = drmInitData3;
                }
            }
            Metadata metadata = format.metadata;
            if (metadata != null) {
                int length = metadata.length();
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i = -1;
                        break;
                    }
                    Metadata.Entry entry = metadata.get(i2);
                    if ((entry instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) entry).owner)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i != -1) {
                    if (length != 1) {
                        Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
                        int i3 = 0;
                        while (i3 < length) {
                            if (i3 != i) {
                                entryArr[i3 < i ? i3 : i3 - 1] = metadata.get(i3);
                            }
                            i3++;
                        }
                        metadata = new Metadata(entryArr);
                    }
                }
                super.mo42192a(format.copyWithAdjustments(drmInitData2, metadata));
            }
            metadata = null;
            super.mo42192a(format.copyWithAdjustments(drmInitData2, metadata));
        }
    }

    public C1797k(int i, AbstractC1798a abstractC1798a, C1784d c1784d, Map<String, DrmInitData> map, AbstractC1963b abstractC1963b, long j, Format format, AbstractC1468k<?> abstractC1468k, AbstractC1986t abstractC1986t, AbstractC1845u.C1846a c1846a) {
        this.f7152a = i;
        this.f7177z = abstractC1798a;
        this.f7153b = c1784d;
        this.f7138H = map;
        this.f7131A = abstractC1963b;
        this.f7132B = format;
        this.f7133C = abstractC1468k;
        this.f7134D = abstractC1986t;
        this.f7155d = c1846a;
        ArrayList<C1794h> arrayList = new ArrayList<>();
        this.f7156e = arrayList;
        this.f7157f = Collections.unmodifiableList(arrayList);
        this.f7173v = j;
        this.f7148R = j;
    }

    /* renamed from: a */
    private static Format m42210a(Format format, Format format2, boolean z) {
        if (format == null) {
            return format2;
        }
        int i = z ? format.bitrate : -1;
        int i2 = format.channelCount != -1 ? format.channelCount : format2.channelCount;
        String m41656a = C1996ac.m41656a(format.codecs, C2012m.m41568g(format2.sampleMimeType));
        String m41569f = C2012m.m41569f(m41656a);
        String str = m41569f;
        if (m41569f == null) {
            str = format2.sampleMimeType;
        }
        return format2.copyWithContainerInfo(format.f5072id, format.label, str, m41656a, format.metadata, i, format.width, format.height, i2, format.selectionFlags, format.language);
    }

    /* renamed from: a */
    private TrackGroupArray m42207a(TrackGroup[] trackGroupArr) {
        for (int i = 0; i < trackGroupArr.length; i++) {
            TrackGroup trackGroup = trackGroupArr[i];
            Format[] formatArr = new Format[trackGroup.length];
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                Format format = trackGroup.getFormat(i2);
                Format format2 = format;
                if (format.drmInitData != null) {
                    format2 = format.copyWithExoMediaCryptoType(this.f7133C.mo42866b(format.drmInitData));
                }
                formatArr[i2] = format2;
            }
            trackGroupArr[i] = new TrackGroup(formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    /* renamed from: b */
    private static int m42204b(int i) {
        if (i != 1) {
            if (i == 2) {
                return 3;
            }
            return i != 3 ? 0 : 1;
        }
        return 2;
    }

    /* renamed from: b */
    private static C1588f m42203b(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unmapped track with id ");
        sb.append(i);
        sb.append(" of type ");
        sb.append(i2);
        C2009j.m41584a("HlsSampleStreamWrapper", sb.toString());
        return new C1588f();
    }

    /* renamed from: d */
    private boolean m42200d(long j) {
        int length = this.f7160i.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i < length) {
                C1753ak c1753ak = this.f7160i[i];
                c1753ak.m42304b();
                if (c1753ak.m42311a(j, false) == -1) {
                    z = false;
                }
                if (!z && (this.f7147Q[i] || !this.f7146P)) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    /* renamed from: a */
    public final int m42214a(int i) {
        int i2 = this.f7170s[i];
        if (i2 == -1) {
            return this.f7145O.contains(this.f7169r.get(i)) ? -3 : -2;
        }
        boolean[] zArr = this.f7172u;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1601i
    /* renamed from: a */
    public final AbstractC1641q mo42213a(int i, int i2) {
        C1753ak[] c1753akArr = this.f7160i;
        int length = c1753akArr.length;
        boolean z = false;
        if (i2 == 1) {
            int i3 = this.f7141K;
            if (i3 != -1) {
                if (this.f7140J) {
                    return this.f7139I[i3] == i ? c1753akArr[i3] : m42203b(i, i2);
                }
                this.f7140J = true;
                this.f7139I[i3] = i;
                return c1753akArr[i3];
            } else if (this.f7149S) {
                return m42203b(i, i2);
            }
        } else if (i2 == 2) {
            int i4 = this.f7143M;
            if (i4 != -1) {
                if (this.f7142L) {
                    return this.f7139I[i4] == i ? c1753akArr[i4] : m42203b(i, i2);
                }
                this.f7142L = true;
                this.f7139I[i4] = i;
                return c1753akArr[i4];
            } else if (this.f7149S) {
                return m42203b(i, i2);
            }
        } else {
            for (int i5 = 0; i5 < length; i5++) {
                if (this.f7139I[i5] == i) {
                    return this.f7160i[i5];
                }
            }
            if (this.f7149S) {
                return m42203b(i, i2);
            }
        }
        C1799b c1799b = new C1799b(this.f7131A, this.f7138H);
        c1799b.m42314a(this.f7150T);
        c1799b.m42315a(this.f7151U);
        c1799b.f6936f = this;
        int i6 = length + 1;
        int[] copyOf = Arrays.copyOf(this.f7139I, i6);
        this.f7139I = copyOf;
        copyOf[length] = i;
        C1753ak[] c1753akArr2 = (C1753ak[]) Arrays.copyOf(this.f7160i, i6);
        this.f7160i = c1753akArr2;
        c1753akArr2[length] = c1799b;
        C1823j[] c1823jArr = (C1823j[]) Arrays.copyOf(this.f7161j, i6);
        this.f7161j = c1823jArr;
        c1823jArr[length] = new C1823j(this.f7160i[length], this.f7133C);
        boolean[] copyOf2 = Arrays.copyOf(this.f7147Q, i6);
        this.f7147Q = copyOf2;
        if (i2 == 1 || i2 == 2) {
            z = true;
        }
        copyOf2[length] = z;
        this.f7146P = copyOf2[length] | this.f7146P;
        if (i2 == 1) {
            this.f7140J = true;
            this.f7141K = length;
        } else if (i2 == 2) {
            this.f7142L = true;
            this.f7143M = length;
        }
        if (m42204b(i2) > m42204b(this.f7144N)) {
            this.f7162k = length;
            this.f7144N = i2;
        }
        this.f7172u = Arrays.copyOf(this.f7172u, i6);
        return c1799b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ Loader.C1957b mo41753a(AbstractC1720b abstractC1720b, long j, long j2, IOException iOException, int i) {
        boolean z;
        Loader.C1957b c1957b;
        AbstractC1720b abstractC1720b2 = abstractC1720b;
        long m42377c = abstractC1720b2.m42377c();
        boolean z2 = abstractC1720b2 instanceof C1794h;
        long mo41702a = this.f7134D.mo41702a(iOException);
        boolean z3 = false;
        if (mo41702a != -9223372036854775807L) {
            C1784d c1784d = this.f7153b;
            z = c1784d.f7058h.mo41834a(c1784d.f7058h.mo41829c(c1784d.f7052b.indexOf(abstractC1720b2.f6756c)), mo41702a);
        } else {
            z = false;
        }
        if (z) {
            if (z2 && m42377c == 0) {
                ArrayList<C1794h> arrayList = this.f7156e;
                if (arrayList.remove(arrayList.size() - 1) == abstractC1720b2) {
                    z3 = true;
                }
                C1993a.m41686b(z3);
                if (this.f7156e.isEmpty()) {
                    this.f7148R = this.f7173v;
                }
            }
            c1957b = Loader.f7902c;
        } else {
            long mo41701a = this.f7134D.mo41701a(iOException, i);
            c1957b = mo41701a != -9223372036854775807L ? Loader.m41757a(false, mo41701a) : Loader.f7903d;
        }
        this.f7155d.m42043a(abstractC1720b2.f6754a, abstractC1720b2.m42376d(), abstractC1720b2.m42375e(), abstractC1720b2.f6755b, this.f7152a, abstractC1720b2.f6756c, abstractC1720b2.f6757d, abstractC1720b2.f6758e, abstractC1720b2.f6759f, abstractC1720b2.f6760g, j, j2, m42377c, iOException, !c1957b.m41751a());
        if (z) {
            if (!this.f7164m) {
                mo42078c(this.f7173v);
            } else {
                this.f7177z.mo41806a((AbstractC1798a) this);
            }
        }
        return c1957b;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1601i
    /* renamed from: a */
    public final void mo42215a() {
        this.f7149S = true;
        this.f7158g.post(this.f7137G);
    }

    /* renamed from: a */
    public final void m42212a(int i, boolean z, boolean z2) {
        if (!z2) {
            this.f7140J = false;
            this.f7142L = false;
        }
        this.f7151U = i;
        for (C1753ak c1753ak : this.f7160i) {
            c1753ak.m42315a(i);
        }
        if (z) {
            for (C1753ak c1753ak2 : this.f7160i) {
                c1753ak2.f6935e = true;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1601i
    /* renamed from: a */
    public final void mo42209a(AbstractC1637o abstractC1637o) {
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ void mo41754a(AbstractC1720b abstractC1720b, long j, long j2) {
        AbstractC1720b abstractC1720b2 = abstractC1720b;
        C1784d c1784d = this.f7153b;
        if (abstractC1720b2 instanceof C1784d.C1785a) {
            C1784d.C1785a c1785a = (C1784d.C1785a) abstractC1720b2;
            c1784d.f7055e = c1785a.f6762i;
            c1784d.f7053c.put(c1785a.f6754a.f7952a, c1785a.f7069j);
        }
        this.f7155d.m42044a(abstractC1720b2.f6754a, abstractC1720b2.m42376d(), abstractC1720b2.m42375e(), abstractC1720b2.f6755b, this.f7152a, abstractC1720b2.f6756c, abstractC1720b2.f6757d, abstractC1720b2.f6758e, abstractC1720b2.f6759f, abstractC1720b2.f6760g, j, j2, abstractC1720b2.m42377c());
        if (!this.f7164m) {
            mo42078c(this.f7173v);
        } else {
            this.f7177z.mo41806a((AbstractC1798a) this);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ void mo41752a(AbstractC1720b abstractC1720b, long j, long j2, boolean z) {
        AbstractC1720b abstractC1720b2 = abstractC1720b;
        this.f7155d.m42038b(abstractC1720b2.f6754a, abstractC1720b2.m42376d(), abstractC1720b2.m42375e(), abstractC1720b2.f6755b, this.f7152a, abstractC1720b2.f6756c, abstractC1720b2.f6757d, abstractC1720b2.f6758e, abstractC1720b2.f6759f, abstractC1720b2.f6760g, j, j2, abstractC1720b2.m42377c());
        if (!z) {
            m42199g();
            if (this.f7165n <= 0) {
                return;
            }
            this.f7177z.mo41806a((AbstractC1798a) this);
        }
    }

    /* renamed from: a */
    public final void m42208a(boolean z) {
        this.f7153b.f7054d = z;
    }

    /* renamed from: a */
    public final void m42206a(TrackGroup[] trackGroupArr, int... iArr) {
        this.f7164m = true;
        this.f7169r = m42207a(trackGroupArr);
        this.f7145O = new HashSet();
        for (int i : iArr) {
            this.f7145O.add(this.f7169r.get(i));
        }
        this.f7171t = 0;
        Handler handler = this.f7158g;
        AbstractC1798a abstractC1798a = this.f7177z;
        abstractC1798a.getClass();
        handler.post(RunnableC1802n.m42191a(abstractC1798a));
    }

    /* renamed from: a */
    public final boolean m42211a(long j, boolean z) {
        this.f7173v = j;
        if (m42195k()) {
            this.f7148R = j;
            return true;
        } else if (this.f7163l && !z && m42200d(j)) {
            return false;
        } else {
            this.f7148R = j;
            this.f7176y = false;
            this.f7156e.clear();
            if (this.f7154c.m41764a()) {
                this.f7154c.m41756b();
                return true;
            }
            m42199g();
            return true;
        }
    }

    /* renamed from: b */
    public final void m42205b() {
        if (!this.f7164m) {
            mo42078c(this.f7173v);
        }
    }

    /* renamed from: b */
    public final void m42202b(long j) {
        this.f7150T = j;
        for (C1753ak c1753ak : this.f7160i) {
            c1753ak.m42314a(j);
        }
    }

    /* renamed from: c */
    public final void m42201c() throws IOException {
        this.f7154c.m41763a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f7153b.m42239a();
    }

    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        char c;
        List<C1794h> list;
        if (this.f7176y || this.f7154c.m41764a()) {
            return false;
        }
        if (m42195k()) {
            list = Collections.emptyList();
            c = this.f7148R;
        } else {
            list = this.f7157f;
            C1794h m42196j = m42196j();
            c = m42196j.f7095n ? m42196j.f6760g : Math.max(this.f7173v, m42196j.f6759f);
        }
        this.f7153b.m42238a(j, c, list, this.f7164m || !list.isEmpty(), this.f7135E);
        boolean z = this.f7135E.f7071b;
        AbstractC1720b abstractC1720b = this.f7135E.f7070a;
        Uri uri = this.f7135E.f7072c;
        this.f7135E.m42230a();
        if (z) {
            this.f7148R = -9223372036854775807L;
            this.f7176y = true;
            return true;
        } else if (abstractC1720b == null) {
            if (uri == null) {
                return false;
            }
            this.f7177z.mo42194a(uri);
            return false;
        } else {
            if (abstractC1720b instanceof C1794h) {
                this.f7148R = -9223372036854775807L;
                C1794h c1794h = (C1794h) abstractC1720b;
                c1794h.f7094m = this;
                this.f7156e.add(c1794h);
                this.f7166o = c1794h.f6756c;
            }
            this.f7155d.m42046a(abstractC1720b.f6754a, abstractC1720b.f6755b, this.f7152a, abstractC1720b.f6756c, abstractC1720b.f6757d, abstractC1720b.f6758e, abstractC1720b.f6759f, abstractC1720b.f6760g, this.f7154c.m41762a(abstractC1720b, this, this.f7134D.mo41703a(abstractC1720b.f6755b)));
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        if (this.f7176y) {
            return Long.MIN_VALUE;
        }
        if (m42195k()) {
            return this.f7148R;
        }
        ?? r0 = this.f7173v;
        C1794h m42196j = m42196j();
        if (!m42196j.f7095n) {
            if (this.f7156e.size() > 1) {
                ArrayList<C1794h> arrayList = this.f7156e;
                m42196j = arrayList.get(arrayList.size() - 2);
            } else {
                m42196j = null;
            }
        }
        char c = r0;
        if (m42196j != null) {
            c = Math.max((long) r0, m42196j.f6760g);
        }
        char c2 = c;
        if (this.f7163l) {
            C1753ak[] c1753akArr = this.f7160i;
            int length = c1753akArr.length;
            int i = 0;
            while (true) {
                c2 = c;
                if (i >= length) {
                    break;
                }
                c = Math.max((long) c, c1753akArr[i].f6931a.m42321e());
                i++;
            }
        }
        return c2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        if (m42195k()) {
            return this.f7148R;
        }
        if (!this.f7176y) {
            return m42196j().f6760g;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1960e
    /* renamed from: f */
    public final void mo41745f() {
        m42199g();
        for (C1823j c1823j : this.f7161j) {
            c1823j.m42124a();
        }
    }

    /* renamed from: g */
    public final void m42199g() {
        for (C1753ak c1753ak : this.f7160i) {
            c1753ak.m42305a(this.f7174w);
        }
        this.f7174w = false;
    }

    /* renamed from: h */
    public final void m42198h() {
        int i;
        int i2;
        int i3;
        if (this.f7168q || this.f7170s != null || !this.f7163l) {
            return;
        }
        boolean z = false;
        for (C1753ak c1753ak : this.f7160i) {
            if (c1753ak.f6931a.m42322d() == null) {
                return;
            }
        }
        TrackGroupArray trackGroupArray = this.f7169r;
        if (trackGroupArray != null) {
            int i4 = trackGroupArray.length;
            int[] iArr = new int[i4];
            this.f7170s = iArr;
            Arrays.fill(iArr, -1);
            for (int i5 = 0; i5 < i4; i5++) {
                int i6 = 0;
                while (true) {
                    C1753ak[] c1753akArr = this.f7160i;
                    if (i6 < c1753akArr.length) {
                        Format m42322d = c1753akArr[i6].f6931a.m42322d();
                        Format format = this.f7169r.get(i5).getFormat(0);
                        String str = m42322d.sampleMimeType;
                        String str2 = format.sampleMimeType;
                        int m41568g = C2012m.m41568g(str);
                        if (m41568g == 3 ? C1996ac.m41658a((Object) str, (Object) str2) && ((!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) || m42322d.accessibilityChannel == format.accessibilityChannel) : m41568g == C2012m.m41568g(str2)) {
                            this.f7170s[i5] = i6;
                            break;
                        }
                        i6++;
                    }
                }
            }
            Iterator<C1796j> it2 = this.f7159h.iterator();
            while (it2.hasNext()) {
                it2.next().m42217c();
            }
            return;
        }
        int length = this.f7160i.length;
        int i7 = 0;
        int i8 = 6;
        int i9 = -1;
        while (true) {
            i = i9;
            int i10 = 2;
            if (i7 >= length) {
                break;
            }
            String str3 = this.f7160i[i7].f6931a.m42322d().sampleMimeType;
            if (!C2012m.m41573b(str3)) {
                i10 = C2012m.m41574a(str3) ? 1 : C2012m.m41572c(str3) ? 3 : 6;
            }
            if (m42204b(i10) > m42204b(i8)) {
                i3 = i7;
                i2 = i10;
            } else {
                i2 = i8;
                i3 = i;
                if (i10 == i8) {
                    i2 = i8;
                    i3 = i;
                    if (i != -1) {
                        i3 = -1;
                        i2 = i8;
                    }
                }
            }
            i7++;
            i8 = i2;
            i9 = i3;
        }
        TrackGroup trackGroup = this.f7153b.f7052b;
        int i11 = trackGroup.length;
        this.f7171t = -1;
        this.f7170s = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            this.f7170s[i12] = i12;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i13 = 0; i13 < length; i13++) {
            Format m42322d2 = this.f7160i[i13].f6931a.m42322d();
            if (i13 == i) {
                Format[] formatArr = new Format[i11];
                if (i11 == 1) {
                    formatArr[0] = m42322d2.copyWithManifestFormatInfo(trackGroup.getFormat(0));
                } else {
                    for (int i14 = 0; i14 < i11; i14++) {
                        formatArr[i14] = m42210a(trackGroup.getFormat(i14), m42322d2, true);
                    }
                }
                trackGroupArr[i13] = new TrackGroup(formatArr);
                this.f7171t = i13;
            } else {
                trackGroupArr[i13] = new TrackGroup(m42210a((i8 != 2 || !C2012m.m41574a(m42322d2.sampleMimeType)) ? null : this.f7132B, m42322d2, false));
            }
        }
        this.f7169r = m42207a(trackGroupArr);
        if (this.f7145O == null) {
            z = true;
        }
        C1993a.m41686b(z);
        this.f7145O = Collections.emptySet();
        this.f7164m = true;
        this.f7177z.mo42193f();
    }

    @Override // androidx.media2.exoplayer.external.source.C1753ak.AbstractC1755b
    /* renamed from: i */
    public final void mo42197i() {
        this.f7158g.post(this.f7136F);
    }

    /* renamed from: j */
    public final C1794h m42196j() {
        ArrayList<C1794h> arrayList = this.f7156e;
        return arrayList.get(arrayList.size() - 1);
    }

    /* renamed from: k */
    public final boolean m42195k() {
        return this.f7148R != -9223372036854775807L;
    }
}
