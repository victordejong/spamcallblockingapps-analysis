package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C5579w0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.AbstractC5209b0;
import com.google.android.exoplayer2.source.AbstractC5211c0;
import com.google.android.exoplayer2.source.AbstractC5282p;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.C5249n;
import com.google.android.exoplayer2.source.hls.playlist.C5263e;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5529r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.hls.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/l.class */
public final class C5247l implements AbstractC5292u, C5249n.AbstractC5250a, HlsPlaylistTracker.AbstractC5256b {

    /* renamed from: d */
    private final AbstractC5243i f16519d;

    /* renamed from: e */
    private final HlsPlaylistTracker f16520e;

    /* renamed from: f */
    private final AbstractC5242h f16521f;

    /* renamed from: g */
    private final AbstractC5497x f16522g;

    /* renamed from: h */
    private final AbstractC5040k<?> f16523h;

    /* renamed from: i */
    private final AbstractC5493u f16524i;

    /* renamed from: j */
    private final AbstractC5297w.C5298a f16525j;

    /* renamed from: k */
    private final AbstractC5472e f16526k;

    /* renamed from: n */
    private final AbstractC5282p f16529n;

    /* renamed from: o */
    private final boolean f16530o;

    /* renamed from: p */
    private final int f16531p;

    /* renamed from: q */
    private final boolean f16532q;

    /* renamed from: r */
    private AbstractC5292u.AbstractC5293a f16533r;

    /* renamed from: s */
    private int f16534s;

    /* renamed from: t */
    private TrackGroupArray f16535t;

    /* renamed from: x */
    private AbstractC5211c0 f16539x;

    /* renamed from: y */
    private boolean f16540y;

    /* renamed from: l */
    private final IdentityHashMap<AbstractC5209b0, Integer> f16527l = new IdentityHashMap<>();

    /* renamed from: m */
    private final C5253o f16528m = new C5253o();

    /* renamed from: u */
    private C5249n[] f16536u = new C5249n[0];

    /* renamed from: v */
    private C5249n[] f16537v = new C5249n[0];

    /* renamed from: w */
    private int[][] f16538w = new int[0];

    /* JADX WARN: Type inference failed for: r1v21, types: [int[], int[][]] */
    public C5247l(AbstractC5243i abstractC5243i, HlsPlaylistTracker hlsPlaylistTracker, AbstractC5242h abstractC5242h, AbstractC5497x abstractC5497x, AbstractC5040k<?> abstractC5040k, AbstractC5493u abstractC5493u, AbstractC5297w.C5298a c5298a, AbstractC5472e abstractC5472e, AbstractC5282p abstractC5282p, boolean z, int i, boolean z2) {
        this.f16519d = abstractC5243i;
        this.f16520e = hlsPlaylistTracker;
        this.f16521f = abstractC5242h;
        this.f16522g = abstractC5497x;
        this.f16523h = abstractC5040k;
        this.f16524i = abstractC5493u;
        this.f16525j = c5298a;
        this.f16526k = abstractC5472e;
        this.f16529n = abstractC5282p;
        this.f16530o = z;
        this.f16531p = i;
        this.f16532q = z2;
        this.f16539x = abstractC5282p.mo19854a(new AbstractC5211c0[0]);
        c5298a.m19826G();
    }

    /* renamed from: s */
    private void m20044s(long j, List<C5263e.C5264a> list, List<C5249n> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        boolean z;
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i).f16656d;
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
                    if (C5515h0.m18843b(str, list.get(i2).f16656d)) {
                        C5263e.C5264a c5264a = list.get(i2);
                        arrayList3.add(Integer.valueOf(i2));
                        arrayList.add(c5264a.f16653a);
                        arrayList2.add(c5264a.f16654b);
                        z3 = z & (c5264a.f16654b.f14458i != null);
                    }
                    i2++;
                    z2 = z3;
                }
                C5249n m20041w = m20041w(1, (Uri[]) arrayList.toArray(C5515h0.m18831h(new Uri[0])), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j);
                list3.add(C5515h0.m18808s0(arrayList3));
                list2.add(m20041w);
                if (this.f16530o && z) {
                    m20041w.m20010Y(new TrackGroup[]{new TrackGroup((Format[]) arrayList2.toArray(new Format[0]))}, 0, new int[0]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0135 A[EDGE_INSN: B:82:0x0135->B:36:0x0135 ?: BREAK  , SYNTHETIC] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20043t(com.google.android.exoplayer2.source.hls.playlist.C5263e r12, long r13, java.util.List<com.google.android.exoplayer2.source.hls.C5249n> r15, java.util.List<int[]> r16, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> r17) {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.C5247l.m20043t(com.google.android.exoplayer2.source.hls.playlist.e, long, java.util.List, java.util.List, java.util.Map):void");
    }

    /* renamed from: v */
    private void m20042v(long j) {
        C5263e c5263e = (C5263e) C5508e.m18911e(this.f16520e.mo19946f());
        Map<String, DrmInitData> m20039y = this.f16532q ? m20039y(c5263e.f16652n) : Collections.emptyMap();
        boolean isEmpty = c5263e.f16644f.isEmpty();
        List<C5263e.C5264a> list = c5263e.f16646h;
        List<C5263e.C5264a> list2 = c5263e.f16647i;
        this.f16534s = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!isEmpty) {
            m20043t(c5263e, j, arrayList, arrayList2, m20039y);
        }
        m20044s(j, list, arrayList, arrayList2, m20039y);
        for (int i = 0; i < list2.size(); i++) {
            C5263e.C5264a c5264a = list2.get(i);
            C5249n m20041w = m20041w(3, new Uri[]{c5264a.f16653a}, new Format[]{c5264a.f16654b}, null, Collections.emptyList(), m20039y, j);
            arrayList2.add(new int[]{i});
            arrayList.add(m20041w);
            m20041w.m20010Y(new TrackGroup[]{new TrackGroup(c5264a.f16654b)}, 0, new int[0]);
        }
        this.f16536u = (C5249n[]) arrayList.toArray(new C5249n[0]);
        this.f16538w = (int[][]) arrayList2.toArray(new int[0]);
        C5249n[] c5249nArr = this.f16536u;
        this.f16534s = c5249nArr.length;
        c5249nArr[0].m20001h0(true);
        for (C5249n c5249n : this.f16536u) {
            c5249n.m19990y();
        }
        this.f16537v = this.f16536u;
    }

    /* renamed from: w */
    private C5249n m20041w(int i, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j) {
        return new C5249n(i, this, new C5237g(this.f16519d, this.f16520e, uriArr, formatArr, this.f16521f, this.f16522g, this.f16528m, list), map, this.f16526k, j, format, this.f16523h, this.f16524i, this.f16525j, this.f16531p);
    }

    /* renamed from: x */
    private static Format m20040x(Format format, Format format2, boolean z) {
        String str;
        int i;
        int i2;
        int i3;
        Metadata metadata;
        String str2;
        String str3;
        if (format2 != null) {
            str2 = format2.f14458i;
            metadata = format2.f14459j;
            i3 = format2.f14474y;
            i2 = format2.f14455f;
            i = format2.f14456g;
            str = format2.f14449D;
            str3 = format2.f14454e;
        } else {
            String m18797y = C5515h0.m18797y(format.f14458i, 1);
            Metadata metadata2 = format.f14459j;
            if (z) {
                i3 = format.f14474y;
                i2 = format.f14455f;
                i = format.f14456g;
                str = format.f14449D;
                str3 = format.f14454e;
                metadata = metadata2;
                str2 = m18797y;
            } else {
                str3 = null;
                str = null;
                i3 = -1;
                i2 = 0;
                i = 0;
                metadata = metadata2;
                str2 = m18797y;
            }
        }
        return Format.m21743l(format.f14453d, str3, format.f14460k, C5529r.m18732e(str2), str2, metadata, z ? format.f14457h : -1, i3, -1, null, i2, i, str);
    }

    /* renamed from: y */
    private static Map<String, DrmInitData> m20039y(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < arrayList.size()) {
            DrmInitData drmInitData = list.get(i);
            String str = drmInitData.f15704f;
            i++;
            int i2 = i;
            while (i2 < arrayList.size()) {
                DrmInitData drmInitData2 = (DrmInitData) arrayList.get(i2);
                if (TextUtils.equals(drmInitData2.f15704f, str)) {
                    drmInitData = drmInitData.m20795f(drmInitData2);
                    arrayList.remove(i2);
                } else {
                    i2++;
                }
            }
            hashMap.put(str, drmInitData);
        }
        return hashMap;
    }

    /* renamed from: z */
    private static Format m20038z(Format format) {
        String m18797y = C5515h0.m18797y(format.f14458i, 2);
        return Format.m21759C(format.f14453d, format.f14454e, format.f14460k, C5529r.m18732e(m18797y), m18797y, format.f14459j, format.f14457h, format.f14466q, format.f14467r, format.f14468s, null, format.f14455f, format.f14456g);
    }

    /* renamed from: A */
    public void mo19869j(C5249n c5249n) {
        this.f16533r.mo19869j(this);
    }

    /* renamed from: B */
    public void m20045B() {
        this.f16520e.mo19950b(this);
        for (C5249n c5249n : this.f16536u) {
            c5249n.m20008a0();
        }
        this.f16533r = null;
        this.f16525j.m19825H();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: a */
    public long mo19768a() {
        return this.f16539x.mo19768a();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: b */
    public boolean mo19766b(long j) {
        if (this.f16535t == null) {
            for (C5249n c5249n : this.f16536u) {
                c5249n.m19990y();
            }
            return false;
        }
        return this.f16539x.mo19766b(j);
    }

    @Override // com.google.android.exoplayer2.source.hls.C5249n.AbstractC5250a
    /* renamed from: c */
    public void mo19988c() {
        C5249n[] c5249nArr;
        int i = this.f16534s - 1;
        this.f16534s = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (C5249n c5249n : this.f16536u) {
            i2 += c5249n.m19995r().f16308e;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i2];
        int i3 = 0;
        for (C5249n c5249n2 : this.f16536u) {
            int i4 = c5249n2.m19995r().f16308e;
            int i5 = 0;
            while (i5 < i4) {
                trackGroupArr[i3] = c5249n2.m19995r().m20155a(i5);
                i5++;
                i3++;
            }
        }
        this.f16535t = new TrackGroupArray(trackGroupArr);
        this.f16533r.mo19849o(this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: d */
    public boolean mo19762d() {
        return this.f16539x.mo19762d();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: e */
    public long mo19760e() {
        return this.f16539x.mo19760e();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: f */
    public void mo19758f(long j) {
        this.f16539x.mo19758f(j);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.AbstractC5256b
    /* renamed from: g */
    public void mo19967g() {
        this.f16533r.mo19869j(this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: h */
    public long mo19757h(AbstractC5408f[] abstractC5408fArr, boolean[] zArr, AbstractC5209b0[] abstractC5209b0Arr, boolean[] zArr2, long j) {
        boolean z;
        boolean z2;
        int[] iArr = new int[abstractC5408fArr.length];
        int[] iArr2 = new int[abstractC5408fArr.length];
        for (int i = 0; i < abstractC5408fArr.length; i++) {
            iArr[i] = abstractC5209b0Arr[i] == null ? -1 : this.f16527l.get(abstractC5209b0Arr[i]).intValue();
            iArr2[i] = -1;
            if (abstractC5408fArr[i] != null) {
                TrackGroup mo19295a = abstractC5408fArr[i].mo19295a();
                int i2 = 0;
                while (true) {
                    C5249n[] c5249nArr = this.f16536u;
                    if (i2 >= c5249nArr.length) {
                        break;
                    } else if (c5249nArr[i2].m19995r().m20154b(mo19295a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.f16527l.clear();
        int length = abstractC5408fArr.length;
        AbstractC5209b0[] abstractC5209b0Arr2 = new AbstractC5209b0[length];
        AbstractC5209b0[] abstractC5209b0Arr3 = new AbstractC5209b0[abstractC5408fArr.length];
        AbstractC5408f[] abstractC5408fArr2 = new AbstractC5408f[abstractC5408fArr.length];
        C5249n[] c5249nArr2 = new C5249n[this.f16536u.length];
        int i3 = 0;
        int i4 = 0;
        boolean z3 = false;
        while (i4 < this.f16536u.length) {
            for (int i5 = 0; i5 < abstractC5408fArr.length; i5++) {
                abstractC5209b0Arr3[i5] = iArr[i5] == i4 ? abstractC5209b0Arr[i5] : null;
                AbstractC5408f abstractC5408f = null;
                if (iArr2[i5] == i4) {
                    abstractC5408f = abstractC5408fArr[i5];
                }
                abstractC5408fArr2[i5] = abstractC5408f;
            }
            C5249n c5249n = this.f16536u[i4];
            boolean m20004e0 = c5249n.m20004e0(abstractC5408fArr2, zArr, abstractC5209b0Arr3, zArr2, j, z3);
            int i6 = 0;
            boolean z4 = false;
            while (true) {
                z = z4;
                boolean z5 = true;
                if (i6 >= abstractC5408fArr.length) {
                    break;
                }
                AbstractC5209b0 abstractC5209b0 = abstractC5209b0Arr3[i6];
                if (iArr2[i6] == i4) {
                    C5508e.m18911e(abstractC5209b0);
                    abstractC5209b0Arr2[i6] = abstractC5209b0;
                    this.f16527l.put(abstractC5209b0, Integer.valueOf(i4));
                    z2 = true;
                } else {
                    z2 = z;
                    if (iArr[i6] == i4) {
                        if (abstractC5209b0 != null) {
                            z5 = false;
                        }
                        C5508e.m18910f(z5);
                        z2 = z;
                    }
                }
                i6++;
                z4 = z2;
            }
            if (z) {
                c5249nArr2[i3] = c5249n;
                int i7 = i3 + 1;
                if (i3 == 0) {
                    c5249n.m20001h0(true);
                    if (!m20004e0) {
                        C5249n[] c5249nArr3 = this.f16537v;
                        if (c5249nArr3.length != 0) {
                            i3 = i7;
                            if (c5249n == c5249nArr3[0]) {
                            }
                        }
                    }
                    this.f16528m.m19975b();
                    z3 = true;
                    i3 = i7;
                } else {
                    c5249n.m20001h0(false);
                    i3 = i7;
                }
            }
            i4++;
        }
        System.arraycopy(abstractC5209b0Arr2, 0, abstractC5209b0Arr, 0, length);
        C5249n[] c5249nArr4 = (C5249n[]) C5515h0.m18834f0(c5249nArr2, i3);
        this.f16537v = c5249nArr4;
        this.f16539x = this.f16529n.mo19854a(c5249nArr4);
        return j;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.AbstractC5256b
    /* renamed from: i */
    public boolean mo19966i(Uri uri, long j) {
        boolean z = true;
        for (C5249n c5249n : this.f16536u) {
            z &= c5249n.m20012W(uri, j);
        }
        this.f16533r.mo19869j(this);
        return z;
    }

    @Override // com.google.android.exoplayer2.source.hls.C5249n.AbstractC5250a
    /* renamed from: k */
    public void mo19987k(Uri uri) {
        this.f16520e.mo19943j(uri);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: l */
    public void mo19755l() {
        for (C5249n c5249n : this.f16536u) {
            c5249n.m19997l();
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: m */
    public long mo19754m(long j) {
        C5249n[] c5249nArr = this.f16537v;
        if (c5249nArr.length > 0) {
            boolean m20005d0 = c5249nArr[0].m20005d0(j, false);
            int i = 1;
            while (true) {
                C5249n[] c5249nArr2 = this.f16537v;
                if (i >= c5249nArr2.length) {
                    break;
                }
                c5249nArr2[i].m20005d0(j, m20005d0);
                i++;
            }
            if (m20005d0) {
                this.f16528m.m19975b();
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: n */
    public long mo19753n(long j, C5579w0 c5579w0) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: p */
    public long mo19751p() {
        if (!this.f16540y) {
            this.f16525j.m19823J();
            this.f16540y = true;
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: q */
    public void mo19750q(AbstractC5292u.AbstractC5293a abstractC5293a, long j) {
        this.f16533r = abstractC5293a;
        this.f16520e.mo19942l(this);
        m20042v(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: r */
    public TrackGroupArray mo19749r() {
        return (TrackGroupArray) C5508e.m18911e(this.f16535t);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: u */
    public void mo19747u(long j, boolean z) {
        for (C5249n c5249n : this.f16537v) {
            c5249n.m19994u(j, z);
        }
    }
}
