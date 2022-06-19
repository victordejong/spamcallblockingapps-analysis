package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.AbstractC1756al;
import androidx.media2.exoplayer.external.source.AbstractC1757am;
import androidx.media2.exoplayer.external.source.AbstractC1770g;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.hls.C1797k;
import androidx.media2.exoplayer.external.source.hls.playlist.C1813e;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2012m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.source.hls.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/i.class */
public final class C1795i implements C1797k.AbstractC1798a, HlsPlaylistTracker.AbstractC1806b, AbstractC1840s {

    /* renamed from: a */
    final HlsPlaylistTracker f7107a;

    /* renamed from: b */
    final AbstractC1845u.C1846a f7108b;

    /* renamed from: c */
    AbstractC1840s.AbstractC1841a f7109c;

    /* renamed from: e */
    private final AbstractC1791f f7111e;

    /* renamed from: f */
    private final AbstractC1790e f7112f;

    /* renamed from: g */
    private final AbstractC1990w f7113g;

    /* renamed from: h */
    private final AbstractC1468k<?> f7114h;

    /* renamed from: i */
    private final AbstractC1986t f7115i;

    /* renamed from: j */
    private final AbstractC1963b f7116j;

    /* renamed from: m */
    private final AbstractC1770g f7119m;

    /* renamed from: n */
    private final boolean f7120n;

    /* renamed from: o */
    private final boolean f7121o;

    /* renamed from: p */
    private int f7122p;

    /* renamed from: q */
    private TrackGroupArray f7123q;

    /* renamed from: t */
    private AbstractC1757am f7126t;

    /* renamed from: u */
    private boolean f7127u;

    /* renamed from: k */
    private final IdentityHashMap<AbstractC1756al, Integer> f7117k = new IdentityHashMap<>();

    /* renamed from: l */
    private final C1803o f7118l = new C1803o();

    /* renamed from: d */
    C1797k[] f7110d = new C1797k[0];

    /* renamed from: r */
    private C1797k[] f7124r = new C1797k[0];

    /* renamed from: s */
    private int[][] f7125s = new int[0];

    /* JADX WARN: Type inference failed for: r1v20, types: [int[], int[][]] */
    public C1795i(AbstractC1791f abstractC1791f, HlsPlaylistTracker hlsPlaylistTracker, AbstractC1790e abstractC1790e, AbstractC1990w abstractC1990w, AbstractC1468k<?> abstractC1468k, AbstractC1986t abstractC1986t, AbstractC1845u.C1846a c1846a, AbstractC1963b abstractC1963b, AbstractC1770g abstractC1770g, boolean z, boolean z2) {
        this.f7111e = abstractC1791f;
        this.f7107a = hlsPlaylistTracker;
        this.f7112f = abstractC1790e;
        this.f7113g = abstractC1990w;
        this.f7114h = abstractC1468k;
        this.f7115i = abstractC1986t;
        this.f7108b = c1846a;
        this.f7116j = abstractC1963b;
        this.f7119m = abstractC1770g;
        this.f7120n = z;
        this.f7121o = z2;
        this.f7126t = abstractC1770g.mo42120a(new AbstractC1757am[0]);
        c1846a.m42054a();
    }

    /* renamed from: a */
    private static Format m42219a(Format format, Format format2, boolean z) {
        String str;
        int i;
        int i2;
        int i3;
        Metadata metadata;
        String str2;
        String str3;
        if (format2 != null) {
            str2 = format2.codecs;
            metadata = format2.metadata;
            i3 = format2.channelCount;
            i2 = format2.selectionFlags;
            i = format2.roleFlags;
            str = format2.language;
            str3 = format2.label;
        } else {
            str2 = C1996ac.m41656a(format.codecs, 1);
            metadata = format.metadata;
            if (z) {
                i3 = format.channelCount;
                i2 = format.selectionFlags;
                i = format.roleFlags;
                str = format.language;
                str3 = format.label;
            } else {
                str3 = null;
                str = null;
                i3 = -1;
                i2 = 0;
                i = 0;
            }
        }
        return Format.createAudioContainerFormat(format.f5072id, str3, format.containerMimeType, C2012m.m41569f(str2), str2, metadata, z ? format.bitrate : -1, i3, -1, null, i2, i, str);
    }

    /* renamed from: a */
    private C1797k m42221a(int i, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j) {
        return new C1797k(i, this, new C1784d(this.f7111e, this.f7107a, uriArr, formatArr, this.f7112f, this.f7113g, this.f7118l, list), map, this.f7116j, j, format, this.f7114h, this.f7115i, this.f7108b);
    }

    /* renamed from: a */
    private void m42220a(long j, List<C1813e.C1814a> list, List<C1797k> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        boolean z;
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i).f7238d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                int i2 = 0;
                boolean z2 = true;
                while (true) {
                    z = z2;
                    if (i2 >= list.size()) {
                        break;
                    }
                    boolean z3 = z;
                    if (C1996ac.m41658a((Object) str, (Object) list.get(i2).f7238d)) {
                        C1813e.C1814a c1814a = list.get(i2);
                        arrayList3.add(Integer.valueOf(i2));
                        arrayList.add(c1814a.f7235a);
                        arrayList2.add(c1814a.f7236b);
                        z3 = z & (c1814a.f7236b.codecs != null);
                    }
                    i2++;
                    z2 = z3;
                }
                C1797k m42221a = m42221a(1, (Uri[]) arrayList.toArray(new Uri[0]), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j);
                list3.add(C1996ac.m41652a((List<Integer>) arrayList3));
                list2.add(m42221a);
                if (this.f7120n && z) {
                    m42221a.m42206a(new TrackGroup[]{new TrackGroup((Format[]) arrayList2.toArray(new Format[0]))}, new int[0]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0135 A[EDGE_INSN: B:86:0x0135->B:36:0x0135 ?: BREAK  , SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m42218a(androidx.media2.exoplayer.external.source.hls.playlist.C1813e r17, long r18, java.util.List<androidx.media2.exoplayer.external.source.hls.C1797k> r20, java.util.List<int[]> r21, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.drm.DrmInitData> r22) {
        /*
            Method dump skipped, instructions count: 861
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.C1795i.m42218a(androidx.media2.exoplayer.external.source.hls.playlist.e, long, java.util.List, java.util.List, java.util.Map):void");
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42085a(long j, C1378aj c1378aj) {
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03df  */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo42082a(androidx.media2.exoplayer.external.trackselection.AbstractC1940e[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.AbstractC1756al[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.C1795i.mo42082a(androidx.media2.exoplayer.external.trackselection.e[], boolean[], androidx.media2.exoplayer.external.source.al[], boolean[], long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
        this.f7126t.mo42086a(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42084a(long j, boolean z) {
        C1797k[] c1797kArr;
        for (C1797k c1797k : this.f7124r) {
            if (c1797k.f7163l && !c1797k.m42195k()) {
                int length = c1797k.f7160i.length;
                for (int i = 0; i < length; i++) {
                    c1797k.f7160i[i].m42310a(j, z, c1797k.f7172u[i]);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.C1797k.AbstractC1798a
    /* renamed from: a */
    public final void mo42194a(Uri uri) {
        this.f7107a.mo42167c(uri);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am.AbstractC1758a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41806a(C1797k c1797k) {
        this.f7109c.mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42083a(AbstractC1840s.AbstractC1841a abstractC1841a, long j) {
        Map<String, DrmInitData> map;
        this.f7109c = abstractC1841a;
        this.f7107a.mo42178a(this);
        C1813e c1813e = (C1813e) C1993a.m41690a(this.f7107a.mo42172b());
        if (this.f7121o) {
            List<DrmInitData> list = c1813e.f7234k;
            ArrayList arrayList = new ArrayList(list);
            HashMap hashMap = new HashMap();
            int i = 0;
            while (true) {
                map = hashMap;
                if (i >= arrayList.size()) {
                    break;
                }
                DrmInitData drmInitData = list.get(i);
                String str = drmInitData.schemeType;
                i++;
                int i2 = i;
                while (i2 < arrayList.size()) {
                    DrmInitData drmInitData2 = (DrmInitData) arrayList.get(i2);
                    if (TextUtils.equals(drmInitData2.schemeType, str)) {
                        drmInitData = drmInitData.merge(drmInitData2);
                        arrayList.remove(i2);
                    } else {
                        i2++;
                    }
                }
                hashMap.put(str, drmInitData);
            }
        } else {
            map = Collections.emptyMap();
        }
        boolean isEmpty = c1813e.f7226c.isEmpty();
        List<C1813e.C1814a> list2 = c1813e.f7228e;
        List<C1813e.C1814a> list3 = c1813e.f7229f;
        this.f7122p = 0;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (!isEmpty) {
            m42218a(c1813e, j, arrayList2, arrayList3, map);
        }
        m42220a(j, list2, arrayList2, arrayList3, map);
        for (int i3 = 0; i3 < list3.size(); i3++) {
            C1813e.C1814a c1814a = list3.get(i3);
            C1797k m42221a = m42221a(3, new Uri[]{c1814a.f7235a}, new Format[]{c1814a.f7236b}, null, Collections.emptyList(), map, j);
            arrayList3.add(new int[]{i3});
            arrayList2.add(m42221a);
            m42221a.m42206a(new TrackGroup[]{new TrackGroup(c1814a.f7236b)}, new int[0]);
        }
        this.f7110d = (C1797k[]) arrayList2.toArray(new C1797k[0]);
        this.f7125s = (int[][]) arrayList3.toArray(new int[0]);
        C1797k[] c1797kArr = this.f7110d;
        this.f7122p = c1797kArr.length;
        c1797kArr[0].m42208a(true);
        for (C1797k c1797k : this.f7110d) {
            c1797k.m42205b();
        }
        this.f7124r = this.f7110d;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.AbstractC1806b
    /* renamed from: a */
    public final boolean mo42185a(Uri uri, long j) {
        boolean z;
        int mo41829c;
        boolean z2 = true;
        for (C1797k c1797k : this.f7110d) {
            C1784d c1784d = c1797k.f7153b;
            int i = 0;
            while (true) {
                if (i >= c1784d.f7051a.length) {
                    i = -1;
                    break;
                } else if (c1784d.f7051a[i].equals(uri)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1 && (mo41829c = c1784d.f7058h.mo41829c(i)) != -1) {
                c1784d.f7059i |= uri.equals(c1784d.f7057g);
                if (j != -9223372036854775807L && !c1784d.f7058h.mo41834a(mo41829c, j)) {
                    z = false;
                    z2 &= z;
                }
            }
            z = true;
            z2 &= z;
        }
        this.f7109c.mo41806a((AbstractC1840s.AbstractC1841a) this);
        return z2;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final long mo42080b(long j) {
        C1797k[] c1797kArr = this.f7124r;
        if (c1797kArr.length > 0) {
            boolean m42211a = c1797kArr[0].m42211a(j, false);
            int i = 1;
            while (true) {
                C1797k[] c1797kArr2 = this.f7124r;
                if (i >= c1797kArr2.length) {
                    break;
                }
                c1797kArr2[i].m42211a(j, m42211a);
                i++;
            }
            if (m42211a) {
                this.f7118l.f7182a.clear();
            }
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final TrackGroupArray mo42081b() {
        return this.f7123q;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: c */
    public final long mo42079c() {
        if (!this.f7127u) {
            this.f7108b.m42036c();
            this.f7127u = true;
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        if (this.f7123q == null) {
            for (C1797k c1797k : this.f7110d) {
                c1797k.m42205b();
            }
            return false;
        }
        return this.f7126t.mo42078c(j);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        return this.f7126t.mo42077d();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        return this.f7126t.mo42076e();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.C1797k.AbstractC1798a
    /* renamed from: f */
    public final void mo42193f() {
        C1797k[] c1797kArr;
        int i = this.f7122p - 1;
        this.f7122p = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (C1797k c1797k : this.f7110d) {
            i2 += c1797k.f7169r.length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i2];
        int i3 = 0;
        for (C1797k c1797k2 : this.f7110d) {
            int i4 = c1797k2.f7169r.length;
            int i5 = 0;
            while (i5 < i4) {
                trackGroupArr[i3] = c1797k2.f7169r.get(i5);
                i5++;
                i3++;
            }
        }
        this.f7123q = new TrackGroupArray(trackGroupArr);
        this.f7109c.mo41805a((AbstractC1840s) this);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.AbstractC1806b
    /* renamed from: g */
    public final void mo42184g() {
        this.f7109c.mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: k_ */
    public final void mo42075k_() throws IOException {
        C1797k[] c1797kArr;
        for (C1797k c1797k : this.f7110d) {
            c1797k.m42201c();
            if (c1797k.f7176y && !c1797k.f7164m) {
                throw new ParserException("Loading finished before preparation is complete.");
            }
        }
    }
}
