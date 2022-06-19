package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C2030z;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.source.hls.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/f.class */
public interface AbstractC1791f {

    /* renamed from: a */
    public static final AbstractC1791f f7076a = new C1783c();

    /* renamed from: androidx.media2.exoplayer.external.source.hls.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/f$a.class */
    public static final class C1792a {

        /* renamed from: a */
        public final AbstractC1599g f7077a;

        /* renamed from: b */
        public final boolean f7078b;

        /* renamed from: c */
        public final boolean f7079c;

        public C1792a(AbstractC1599g abstractC1599g, boolean z, boolean z2) {
            this.f7077a = abstractC1599g;
            this.f7078b = z;
            this.f7079c = z2;
        }
    }

    /* renamed from: a */
    C1792a mo42228a(AbstractC1599g abstractC1599g, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, C2030z c2030z, AbstractC1600h abstractC1600h) throws InterruptedException, IOException;
}
