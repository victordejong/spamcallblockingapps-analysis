package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.al;
import androidx.media2.exoplayer.external.source.am;
import androidx.media2.exoplayer.external.source.g;
import androidx.media2.exoplayer.external.source.hls.k;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.source.hls.playlist.e;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/i.class */
public final class i implements k.a, HlsPlaylistTracker.b, s {

    /* renamed from: a  reason: collision with root package name */
    final HlsPlaylistTracker f3662a;

    /* renamed from: b  reason: collision with root package name */
    final u.a f3663b;

    /* renamed from: c  reason: collision with root package name */
    s.a f3664c;
    private final f e;
    private final e f;
    private final w g;
    private final androidx.media2.exoplayer.external.drm.k<?> h;
    private final t i;
    private final b j;
    private final g m;
    private final boolean n;
    private final boolean o;
    private int p;
    private TrackGroupArray q;
    private am t;
    private boolean u;
    private final IdentityHashMap<al, Integer> k = new IdentityHashMap<>();
    private final o l = new o();

    /* renamed from: d  reason: collision with root package name */
    k[] f3665d = new k[0];
    private k[] r = new k[0];
    private int[][] s = new int[0];

    /* JADX WARN: Type inference failed for: r1v20, types: [int[], int[][]] */
    public i(f fVar, HlsPlaylistTracker hlsPlaylistTracker, e eVar, w wVar, androidx.media2.exoplayer.external.drm.k<?> kVar, t tVar, u.a aVar, b bVar, g gVar, boolean z, boolean z2) {
        this.e = fVar;
        this.f3662a = hlsPlaylistTracker;
        this.f = eVar;
        this.g = wVar;
        this.h = kVar;
        this.i = tVar;
        this.f3663b = aVar;
        this.j = bVar;
        this.m = gVar;
        this.n = z;
        this.o = z2;
        this.t = gVar.a(new am[0]);
        aVar.a();
    }

    private static Format a(Format format, Format format2, boolean z) {
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
            str2 = ac.a(format.codecs, 1);
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
        return Format.createAudioContainerFormat(format.id, str3, format.containerMimeType, m.f(str2), str2, metadata, z ? format.bitrate : -1, i3, -1, null, i2, i, str);
    }

    private k a(int i, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j) {
        return new k(i, this, new d(this.e, this.f3662a, uriArr, formatArr, this.f, this.g, this.l, list), map, this.j, j, format, this.h, this.i, this.f3663b);
    }

    private void a(long j, List<e.a> list, List<k> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i).f3701d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z = true;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    z = z;
                    if (ac.a((Object) str, (Object) list.get(i2).f3701d)) {
                        e.a aVar = list.get(i2);
                        arrayList3.add(Integer.valueOf(i2));
                        arrayList.add(aVar.f3698a);
                        arrayList2.add(aVar.f3699b);
                        z &= aVar.f3699b.codecs != null;
                    }
                }
                k a2 = a(1, (Uri[]) arrayList.toArray(new Uri[0]), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j);
                list3.add(ac.a((List<Integer>) arrayList3));
                list2.add(a2);
                if (this.n && z) {
                    a2.a(new TrackGroup[]{new TrackGroup((Format[]) arrayList2.toArray(new Format[0]))}, new int[0]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.media2.exoplayer.external.source.hls.playlist.e r17, long r18, java.util.List<androidx.media2.exoplayer.external.source.hls.k> r20, java.util.List<int[]> r21, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.drm.DrmInitData> r22) {
        /*
            Method dump skipped, instructions count: 861
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.i.a(androidx.media2.exoplayer.external.source.hls.playlist.e, long, java.util.List, java.util.List, java.util.Map):void");
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long a(long j, aj ajVar) {
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03df  */
    @Override // androidx.media2.exoplayer.external.source.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(androidx.media2.exoplayer.external.trackselection.e[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.al[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.i.a(androidx.media2.exoplayer.external.trackselection.e[], boolean[], androidx.media2.exoplayer.external.source.al[], boolean[], long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final void a(long j) {
        this.t.a(j);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(long j, boolean z) {
        k[] kVarArr;
        for (k kVar : this.r) {
            if (kVar.l && !kVar.k()) {
                int length = kVar.i.length;
                for (int i = 0; i < length; i++) {
                    kVar.i[i].a(j, z, kVar.u[i]);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.k.a
    public final void a(Uri uri) {
        this.f3662a.c(uri);
    }

    @Override // androidx.media2.exoplayer.external.source.am.a
    public final /* bridge */ /* synthetic */ void a(k kVar) {
        this.f3664c.a((s.a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(s.a aVar, long j) {
        Map<String, DrmInitData> map;
        this.f3664c = aVar;
        this.f3662a.a(this);
        e eVar = (e) a.a(this.f3662a.b());
        if (this.o) {
            List<DrmInitData> list = eVar.k;
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
        boolean isEmpty = eVar.f3696c.isEmpty();
        List<e.a> list2 = eVar.e;
        List<e.a> list3 = eVar.f;
        this.p = 0;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (!isEmpty) {
            a(eVar, j, arrayList2, arrayList3, map);
        }
        a(j, list2, arrayList2, arrayList3, map);
        for (int i3 = 0; i3 < list3.size(); i3++) {
            e.a aVar2 = list3.get(i3);
            k a2 = a(3, new Uri[]{aVar2.f3698a}, new Format[]{aVar2.f3699b}, null, Collections.emptyList(), map, j);
            arrayList3.add(new int[]{i3});
            arrayList2.add(a2);
            a2.a(new TrackGroup[]{new TrackGroup(aVar2.f3699b)}, new int[0]);
        }
        this.f3665d = (k[]) arrayList2.toArray(new k[0]);
        this.s = (int[][]) arrayList3.toArray(new int[0]);
        k[] kVarArr = this.f3665d;
        this.p = kVarArr.length;
        kVarArr[0].a(true);
        for (k kVar : this.f3665d) {
            kVar.b();
        }
        this.r = this.f3665d;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.b
    public final boolean a(Uri uri, long j) {
        boolean z;
        int c2;
        boolean z2 = true;
        for (k kVar : this.f3665d) {
            d dVar = kVar.f3670b;
            int i = 0;
            while (true) {
                if (i >= dVar.f3646a.length) {
                    i = -1;
                    break;
                } else if (dVar.f3646a[i].equals(uri)) {
                    break;
                } else {
                    i++;
                }
            }
            if (!(i == -1 || (c2 = dVar.h.c(i)) == -1)) {
                dVar.i |= uri.equals(dVar.g);
                if (j != -9223372036854775807L && !dVar.h.a(c2, j)) {
                    z = false;
                    z2 &= z;
                }
            }
            z = true;
            z2 &= z;
        }
        this.f3664c.a((s.a) this);
        return z2;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long b(long j) {
        k[] kVarArr = this.r;
        if (kVarArr.length > 0) {
            boolean a2 = kVarArr[0].a(j, false);
            int i = 1;
            while (true) {
                k[] kVarArr2 = this.r;
                if (i >= kVarArr2.length) {
                    break;
                }
                kVarArr2[i].a(j, a2);
                i++;
            }
            if (a2) {
                this.l.f3676a.clear();
            }
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final TrackGroupArray b() {
        return this.q;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long c() {
        if (this.u) {
            return -9223372036854775807L;
        }
        this.f3663b.c();
        this.u = true;
        return -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final boolean c(long j) {
        if (this.q != null) {
            return this.t.c(j);
        }
        for (k kVar : this.f3665d) {
            kVar.b();
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long d() {
        return this.t.d();
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long e() {
        return this.t.e();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.k.a
    public final void f() {
        k[] kVarArr;
        int i = this.p - 1;
        this.p = i;
        if (i <= 0) {
            int i2 = 0;
            for (k kVar : this.f3665d) {
                i2 += kVar.r.length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            int i3 = 0;
            for (k kVar2 : this.f3665d) {
                int i4 = kVar2.r.length;
                int i5 = 0;
                while (i5 < i4) {
                    trackGroupArr[i3] = kVar2.r.get(i5);
                    i5++;
                    i3++;
                }
            }
            this.q = new TrackGroupArray(trackGroupArr);
            this.f3664c.a((s) this);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.b
    public final void g() {
        this.f3664c.a((s.a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void k_() throws IOException {
        k[] kVarArr;
        for (k kVar : this.f3665d) {
            kVar.c();
            if (kVar.y && !kVar.m) {
                throw new ParserException("Loading finished before preparation is complete.");
            }
        }
    }
}
