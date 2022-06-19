package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.offline.C1710b;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.upstream.C1987u;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/d.class */
public final class C1812d implements AbstractC1821i {

    /* renamed from: a */
    private final AbstractC1821i f7222a;

    /* renamed from: b */
    private final List<StreamKey> f7223b;

    public C1812d(AbstractC1821i abstractC1821i, List<StreamKey> list) {
        this.f7222a = abstractC1821i;
        this.f7223b = list;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.AbstractC1821i
    /* renamed from: a */
    public final C1987u.AbstractC1988a<AbstractC1818g> mo42126a() {
        return new C1710b(this.f7222a.mo42126a(), this.f7223b);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.AbstractC1821i
    /* renamed from: a */
    public final C1987u.AbstractC1988a<AbstractC1818g> mo42125a(C1813e c1813e) {
        return new C1710b(this.f7222a.mo42125a(c1813e), this.f7223b);
    }
}
