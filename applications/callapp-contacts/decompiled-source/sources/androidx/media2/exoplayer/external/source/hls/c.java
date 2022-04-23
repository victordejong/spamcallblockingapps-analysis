package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.e.a;
import androidx.media2.exoplayer.external.extractor.e.af;
import androidx.media2.exoplayer.external.extractor.e.d;
import androidx.media2.exoplayer.external.extractor.e.j;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.mp4.e;
import androidx.media2.exoplayer.external.source.hls.f;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.util.z;
import java.io.EOFException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/c.class */
public final class c implements f {

    /* renamed from: b  reason: collision with root package name */
    private final int f3644b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3645c;

    public c() {
        this(0, true);
    }

    public c(int i, boolean z) {
        this.f3644b = i;
        this.f3645c = z;
    }

    private static af a(int i, boolean z, Format format, List<Format> list, z zVar) {
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
            if (!"audio/mp4a-latm".equals(m.e(str))) {
                i4 = i2 | 2;
            }
            i3 = i4;
            if (!"video/avc".equals(m.d(str))) {
                i3 = i4 | 4;
            }
        }
        return new af(2, zVar, new j(i3, list));
    }

    private static e a(z zVar, DrmInitData drmInitData, List<Format> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        return new e(0, zVar, null, drmInitData, list);
    }

    private static f.a a(g gVar) {
        return new f.a(gVar, (gVar instanceof androidx.media2.exoplayer.external.extractor.e.g) || (gVar instanceof a) || (gVar instanceof d) || (gVar instanceof androidx.media2.exoplayer.external.extractor.c.c), b(gVar));
    }

    /* JADX WARN: Finally extract failed */
    private static boolean a(g gVar, h hVar) throws InterruptedException, IOException {
        boolean z;
        try {
            z = gVar.a(hVar);
            hVar.a();
        } catch (EOFException e) {
            hVar.a();
            z = false;
        } catch (Throwable th) {
            hVar.a();
            throw th;
        }
        return z;
    }

    private static boolean b(g gVar) {
        return (gVar instanceof af) || (gVar instanceof e);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.f
    public final f.a a(g gVar, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, z zVar, h hVar) throws InterruptedException, IOException {
        if (gVar != null) {
            if (b(gVar)) {
                return a(gVar);
            }
            if ((gVar instanceof p ? a(new p(format.language, zVar)) : gVar instanceof androidx.media2.exoplayer.external.extractor.e.g ? a(new androidx.media2.exoplayer.external.extractor.e.g()) : gVar instanceof a ? a(new a()) : gVar instanceof d ? a(new d()) : gVar instanceof androidx.media2.exoplayer.external.extractor.c.c ? a(new androidx.media2.exoplayer.external.extractor.c.c()) : null) == null) {
                String valueOf = String.valueOf(gVar.getClass().getSimpleName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unexpected previousExtractor type: ".concat(valueOf) : new String("Unexpected previousExtractor type: "));
            }
        }
        String lastPathSegment = uri.getLastPathSegment();
        String str = lastPathSegment;
        if (lastPathSegment == null) {
            str = "";
        }
        g pVar = ("text/vtt".equals(format.sampleMimeType) || str.endsWith(".webvtt") || str.endsWith(".vtt")) ? new p(format.language, zVar) : str.endsWith(".aac") ? new androidx.media2.exoplayer.external.extractor.e.g() : (str.endsWith(".ac3") || str.endsWith(".ec3")) ? new a() : str.endsWith(".ac4") ? new d() : str.endsWith(".mp3") ? new androidx.media2.exoplayer.external.extractor.c.c(0, 0L) : (str.endsWith(".mp4") || str.startsWith(".m4", str.length() - 4) || str.startsWith(".mp4", str.length() - 5) || str.startsWith(".cmf", str.length() - 5)) ? a(zVar, drmInitData, list) : a(this.f3644b, this.f3645c, format, list, zVar);
        hVar.a();
        if (a(pVar, hVar)) {
            return a(pVar);
        }
        if (!(pVar instanceof p)) {
            p pVar2 = new p(format.language, zVar);
            if (a(pVar2, hVar)) {
                return a(pVar2);
            }
        }
        if (!(pVar instanceof androidx.media2.exoplayer.external.extractor.e.g)) {
            androidx.media2.exoplayer.external.extractor.e.g gVar2 = new androidx.media2.exoplayer.external.extractor.e.g();
            if (a(gVar2, hVar)) {
                return a(gVar2);
            }
        }
        if (!(pVar instanceof a)) {
            a aVar = new a();
            if (a(aVar, hVar)) {
                return a(aVar);
            }
        }
        if (!(pVar instanceof d)) {
            d dVar = new d();
            if (a(dVar, hVar)) {
                return a(dVar);
            }
        }
        if (!(pVar instanceof androidx.media2.exoplayer.external.extractor.c.c)) {
            androidx.media2.exoplayer.external.extractor.c.c cVar = new androidx.media2.exoplayer.external.extractor.c.c(0, 0L);
            if (a(cVar, hVar)) {
                return a(cVar);
            }
        }
        if (!(pVar instanceof e)) {
            e a2 = a(zVar, drmInitData, list);
            if (a(a2, hVar)) {
                return a(a2);
            }
        }
        if (!(pVar instanceof af)) {
            af a3 = a(this.f3644b, this.f3645c, format, list, zVar);
            if (a(a3, hVar)) {
                return a(a3);
            }
        }
        return a(pVar);
    }
}
