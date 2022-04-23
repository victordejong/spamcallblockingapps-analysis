package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.offline.b;
import androidx.media2.exoplayer.external.upstream.u;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/d.class */
public final class d implements i {

    /* renamed from: a  reason: collision with root package name */
    private final i f3692a;

    /* renamed from: b  reason: collision with root package name */
    private final List<StreamKey> f3693b;

    public d(i iVar, List<StreamKey> list) {
        this.f3692a = iVar;
        this.f3693b = list;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.i
    public final u.a<g> a() {
        return new b(this.f3692a.a(), this.f3693b);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.i
    public final u.a<g> a(e eVar) {
        return new b(this.f3692a.a(eVar), this.f3693b);
    }
}
