package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.util.z;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/f.class */
public interface f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f3656a = new c();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final g f3657a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3658b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f3659c;

        public a(g gVar, boolean z, boolean z2) {
            this.f3657a = gVar;
            this.f3658b = z;
            this.f3659c = z2;
        }
    }

    a a(g gVar, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, z zVar, h hVar) throws InterruptedException, IOException;
}
