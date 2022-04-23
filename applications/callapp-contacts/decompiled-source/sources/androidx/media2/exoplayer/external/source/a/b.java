package androidx.media2.exoplayer.external.source.a;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.upstream.v;
import androidx.media2.exoplayer.external.util.a;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/a/b.class */
public abstract class b implements Loader.d {

    /* renamed from: a  reason: collision with root package name */
    public final h f3498a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3499b;

    /* renamed from: c  reason: collision with root package name */
    public final Format f3500c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3501d;
    public final Object e;
    public final long f;
    public final long g;
    protected final v h;

    public b(f fVar, h hVar, int i, Format format, int i2, Object obj, long j, long j2) {
        this.h = new v(fVar);
        this.f3498a = (h) a.a(hVar);
        this.f3499b = i;
        this.f3500c = format;
        this.f3501d = i2;
        this.e = obj;
        this.f = j;
        this.g = j2;
    }

    public final long c() {
        return this.h.f4108a;
    }

    public final Uri d() {
        return this.h.f4109b;
    }

    public final Map<String, List<String>> e() {
        return this.h.f4110c;
    }
}
