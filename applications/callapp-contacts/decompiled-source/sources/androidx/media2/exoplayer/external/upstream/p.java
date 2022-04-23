package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/p.class */
public final class p extends HttpDataSource.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f4098a;

    /* renamed from: b  reason: collision with root package name */
    private final w f4099b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4100c;

    /* renamed from: d  reason: collision with root package name */
    private final int f4101d;
    private final boolean e;

    public p(String str) {
        this(str, null);
    }

    public p(String str, int i, int i2, boolean z) {
        this(str, null, i, i2, z);
    }

    public p(String str, w wVar) {
        this(str, wVar, 8000, 8000, false);
    }

    public p(String str, w wVar, int i, int i2, boolean z) {
        this.f4098a = a.a(str);
        this.f4099b = wVar;
        this.f4100c = i;
        this.f4101d = i2;
        this.e = z;
    }

    @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.a
    protected final /* synthetic */ HttpDataSource a(HttpDataSource.b bVar) {
        o oVar = new o(this.f4098a, this.f4100c, this.f4101d, this.e, bVar);
        w wVar = this.f4099b;
        if (wVar != null) {
            oVar.a(wVar);
        }
        return oVar;
    }
}
