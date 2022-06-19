package p1727n3.p1874y.p1876b.p1877a.p1895t0.p1898q0;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import n3.y.b.a.t0.p0.b;
import n3.y.b.a.t0.p0.d;
import n3.y.b.a.t0.q0.r.e;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.p1897p0.AbstractC27350e;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.p1898q0.p1899r.AbstractC27365i;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.AbstractC27383e;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27404e0;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27405h;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.C27409k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.t0.q0.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/q0/d.class */
public class C27351d {

    /* renamed from: a */
    public final AbstractC27355f f76982a;

    /* renamed from: b */
    public final AbstractC27405h f76983b;

    /* renamed from: c */
    public final AbstractC27405h f76984c;

    /* renamed from: d */
    public final C27362p f76985d;

    /* renamed from: e */
    public final Uri[] f76986e;

    /* renamed from: f */
    public final Format[] f76987f;

    /* renamed from: g */
    public final AbstractC27365i f76988g;

    /* renamed from: h */
    public final TrackGroup f76989h;

    /* renamed from: i */
    public final List<Format> f76990i;

    /* renamed from: k */
    public boolean f76992k;

    /* renamed from: l */
    public byte[] f76993l;

    /* renamed from: m */
    public IOException f76994m;

    /* renamed from: n */
    public Uri f76995n;

    /* renamed from: o */
    public boolean f76996o;

    /* renamed from: p */
    public AbstractC27383e f76997p;

    /* renamed from: r */
    public boolean f76999r;

    /* renamed from: j */
    public final C27352b f76991j = new C27352b();

    /* renamed from: q */
    public long f76998q = -9223372036854775807L;

    /* renamed from: n3.y.b.a.t0.q0.d$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/q0/d$b.class */
    public static final class C27352b extends LinkedHashMap<Uri, byte[]> {
        public C27352b() {
            super(8, 1.0f, false);
        }

        /* renamed from: c */
        public byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }

        /* renamed from: g */
        public byte[] put(Uri uri, byte[] bArr) {
            Objects.requireNonNull(bArr);
            return (byte[]) super.put(uri, bArr);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }
    }

    /* renamed from: n3.y.b.a.t0.q0.d$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/q0/d$c.class */
    public static final class C27353c {

        /* renamed from: a */
        public b f77000a = null;

        /* renamed from: b */
        public boolean f77001b = false;

        /* renamed from: c */
        public Uri f77002c = null;
    }

    public C27351d(AbstractC27355f abstractC27355f, AbstractC27365i abstractC27365i, Uri[] uriArr, Format[] formatArr, AbstractC27354e abstractC27354e, AbstractC27404e0 abstractC27404e0, C27362p c27362p, List<Format> list) {
        this.f76982a = abstractC27355f;
        this.f76988g = abstractC27365i;
        this.f76986e = uriArr;
        this.f76987f = formatArr;
        this.f76985d = c27362p;
        this.f76990i = list;
        AbstractC27405h m463a = abstractC27354e.m463a(1);
        this.f76983b = m463a;
        if (abstractC27404e0 != null) {
            m463a.m384c(abstractC27404e0);
        }
        this.f76984c = abstractC27354e.m463a(3);
        this.f76989h = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i = 0; i < uriArr.length; i++) {
            iArr[i] = i;
        }
        this.f76997p = new e(this.f76989h, iArr);
    }

    /* renamed from: a */
    public AbstractC27350e[] m468a(h hVar, long j) {
        AbstractC27350e abstractC27350e = AbstractC27350e.f76981a;
        int m42826a = hVar == null ? -1 : this.f76989h.m42826a(((b) hVar).c);
        int length = this.f76997p.length();
        AbstractC27350e[] abstractC27350eArr = new AbstractC27350e[length];
        for (int i = 0; i < length; i++) {
            int m428d = this.f76997p.m428d(i);
            Uri uri = this.f76986e[m428d];
            if (!this.f76988g.m453h(uri)) {
                abstractC27350eArr[i] = abstractC27350e;
            } else {
                e m450k = this.f76988g.m450k(uri, false);
                long m459b = m450k.f - this.f76988g.m459b();
                long m467b = m467b(hVar, m428d != m42826a, m450k, m459b, j);
                long j2 = m450k.i;
                if (m467b < j2) {
                    abstractC27350eArr[i] = abstractC27350e;
                } else {
                    abstractC27350eArr[i] = new d(m450k, m459b, (int) (m467b - j2));
                }
            }
        }
        return abstractC27350eArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* renamed from: b */
    public final long m467b(h hVar, boolean z, e eVar, long j, long j2) {
        char c;
        char c2;
        int i;
        if (hVar != null && !z) {
            long j3 = ((d) hVar).i;
            char c3 = 65535;
            if (j3 != -1) {
                c3 = 1 + j3;
            }
            return c3;
        }
        long j4 = eVar.p;
        char c4 = j2;
        if (hVar != null) {
            c4 = this.f76996o ? j2 : ((b) hVar).f;
        }
        if (eVar.l || c4 < j4 + j) {
            List list = eVar.o;
            Long valueOf = Long.valueOf(c4 - j);
            boolean z2 = !this.f76988g.m452i() || hVar == null;
            int i2 = C27445x.f77229a;
            int binarySearch = Collections.binarySearch(list, valueOf);
            int i3 = binarySearch;
            if (binarySearch < 0) {
                i = -(binarySearch + 2);
            } else {
                do {
                    i3--;
                    if (i3 < 0) {
                        break;
                    }
                } while (((Comparable) list.get(i3)).compareTo(valueOf) == 0);
                i = i3 + 1;
            }
            int i4 = i;
            if (z2) {
                i4 = Math.max(0, i);
            }
            c2 = i4;
            c = eVar.i;
        } else {
            c2 = eVar.i;
            c = eVar.o.size();
        }
        return c2 + c;
    }

    /* renamed from: c */
    public final b m466c(Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        if (!this.f76991j.containsKey(uri)) {
            return new a(this.f76984c, new C27409k(uri, 0L, -1L, null, 1), this.f76987f[i], this.f76997p.m417o(), this.f76997p.m418n(), this.f76993l);
        }
        C27352b c27352b = this.f76991j;
        c27352b.put(uri, c27352b.remove(uri));
        return null;
    }
}
