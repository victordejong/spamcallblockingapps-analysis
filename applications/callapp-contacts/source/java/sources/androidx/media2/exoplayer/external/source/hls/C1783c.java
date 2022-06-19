package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.mp4.C1621e;
import androidx.media2.exoplayer.external.extractor.p066c.C1506c;
import androidx.media2.exoplayer.external.extractor.p068e.C1537a;
import androidx.media2.exoplayer.external.extractor.p068e.C1544af;
import androidx.media2.exoplayer.external.extractor.p068e.C1557d;
import androidx.media2.exoplayer.external.extractor.p068e.C1560g;
import androidx.media2.exoplayer.external.extractor.p068e.C1563j;
import androidx.media2.exoplayer.external.source.hls.AbstractC1791f;
import androidx.media2.exoplayer.external.util.C2012m;
import androidx.media2.exoplayer.external.util.C2030z;
import java.io.EOFException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.source.hls.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/c.class */
public final class C1783c implements AbstractC1791f {

    /* renamed from: b */
    private final int f7049b;

    /* renamed from: c */
    private final boolean f7050c;

    public C1783c() {
        this(0, true);
    }

    public C1783c(int i, boolean z) {
        this.f7049b = i;
        this.f7050c = z;
    }

    /* renamed from: a */
    private static C1544af m42244a(int i, boolean z, Format format, List<Format> list, C2030z c2030z) {
        int i2 = i | 16;
        if (list != null) {
            i2 |= 32;
        } else {
            list = z ? Collections.singletonList(Format.createTextSampleFormat(null, "application/cea-608", 0, null)) : Collections.emptyList();
        }
        String str = format.codecs;
        int i3 = i2;
        if (!TextUtils.isEmpty(str)) {
            int i4 = i2;
            if (!"audio/mp4a-latm".equals(C2012m.m41570e(str))) {
                i4 = i2 | 2;
            }
            i3 = i4;
            if (!"video/avc".equals(C2012m.m41571d(str))) {
                i3 = i4 | 4;
            }
        }
        return new C1544af(2, c2030z, new C1563j(i3, list));
    }

    /* renamed from: a */
    private static C1621e m42241a(C2030z c2030z, DrmInitData drmInitData, List<Format> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        return new C1621e(0, c2030z, null, drmInitData, list);
    }

    /* renamed from: a */
    private static AbstractC1791f.C1792a m42243a(AbstractC1599g abstractC1599g) {
        return new AbstractC1791f.C1792a(abstractC1599g, (abstractC1599g instanceof C1560g) || (abstractC1599g instanceof C1537a) || (abstractC1599g instanceof C1557d) || (abstractC1599g instanceof C1506c), m42240b(abstractC1599g));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static boolean m42242a(AbstractC1599g abstractC1599g, AbstractC1600h abstractC1600h) throws InterruptedException, IOException {
        boolean z;
        try {
            z = abstractC1599g.mo42188a(abstractC1600h);
            abstractC1600h.mo42612a();
        } catch (EOFException e) {
            abstractC1600h.mo42612a();
            z = false;
        } catch (Throwable th) {
            abstractC1600h.mo42612a();
            throw th;
        }
        return z;
    }

    /* renamed from: b */
    private static boolean m42240b(AbstractC1599g abstractC1599g) {
        return (abstractC1599g instanceof C1544af) || (abstractC1599g instanceof C1621e);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.AbstractC1791f
    /* renamed from: a */
    public final AbstractC1791f.C1792a mo42228a(AbstractC1599g abstractC1599g, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, C2030z c2030z, AbstractC1600h abstractC1600h) throws InterruptedException, IOException {
        if (abstractC1599g != null) {
            if (m42240b(abstractC1599g)) {
                return m42243a(abstractC1599g);
            }
            if ((abstractC1599g instanceof C1804p ? m42243a(new C1804p(format.language, c2030z)) : abstractC1599g instanceof C1560g ? m42243a(new C1560g()) : abstractC1599g instanceof C1537a ? m42243a(new C1537a()) : abstractC1599g instanceof C1557d ? m42243a(new C1557d()) : abstractC1599g instanceof C1506c ? m42243a(new C1506c()) : null) == null) {
                String valueOf = String.valueOf(abstractC1599g.getClass().getSimpleName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unexpected previousExtractor type: ".concat(valueOf) : new String("Unexpected previousExtractor type: "));
            }
        }
        String lastPathSegment = uri.getLastPathSegment();
        String str = lastPathSegment;
        if (lastPathSegment == null) {
            str = "";
        }
        C1560g c1804p = ("text/vtt".equals(format.sampleMimeType) || str.endsWith(".webvtt") || str.endsWith(".vtt")) ? new C1804p(format.language, c2030z) : str.endsWith(".aac") ? new C1560g() : (str.endsWith(".ac3") || str.endsWith(".ec3")) ? new C1537a() : str.endsWith(".ac4") ? new C1557d() : str.endsWith(".mp3") ? new C1506c(0, 0L) : (str.endsWith(".mp4") || str.startsWith(".m4", str.length() - 4) || str.startsWith(".mp4", str.length() - 5) || str.startsWith(".cmf", str.length() - 5)) ? m42241a(c2030z, drmInitData, list) : m42244a(this.f7049b, this.f7050c, format, list, c2030z);
        abstractC1600h.mo42612a();
        if (m42242a(c1804p, abstractC1600h)) {
            return m42243a(c1804p);
        }
        if (!(c1804p instanceof C1804p)) {
            C1804p c1804p2 = new C1804p(format.language, c2030z);
            if (m42242a(c1804p2, abstractC1600h)) {
                return m42243a(c1804p2);
            }
        }
        if (!(c1804p instanceof C1560g)) {
            C1560g c1560g = new C1560g();
            if (m42242a(c1560g, abstractC1600h)) {
                return m42243a(c1560g);
            }
        }
        if (!(c1804p instanceof C1537a)) {
            C1537a c1537a = new C1537a();
            if (m42242a(c1537a, abstractC1600h)) {
                return m42243a(c1537a);
            }
        }
        if (!(c1804p instanceof C1557d)) {
            C1557d c1557d = new C1557d();
            if (m42242a(c1557d, abstractC1600h)) {
                return m42243a(c1557d);
            }
        }
        if (!(c1804p instanceof C1506c)) {
            C1506c c1506c = new C1506c(0, 0L);
            if (m42242a(c1506c, abstractC1600h)) {
                return m42243a(c1506c);
            }
        }
        if (!(c1804p instanceof C1621e)) {
            C1621e m42241a = m42241a(c2030z, drmInitData, list);
            if (m42242a(m42241a, abstractC1600h)) {
                return m42243a(m42241a);
            }
        }
        if (!(c1804p instanceof C1544af)) {
            C1544af m42244a = m42244a(this.f7049b, this.f7050c, format, list, c2030z);
            if (m42242a(m42244a, abstractC1600h)) {
                return m42243a(m42244a);
            }
        }
        return m42243a(c1804p);
    }
}
