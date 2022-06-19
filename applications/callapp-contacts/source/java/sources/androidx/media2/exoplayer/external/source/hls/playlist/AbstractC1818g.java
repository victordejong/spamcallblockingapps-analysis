package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.offline.AbstractC1709a;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/g.class */
public abstract class AbstractC1818g implements AbstractC1709a<AbstractC1818g> {

    /* renamed from: n */
    public final String f7270n;

    /* renamed from: o */
    public final List<String> f7271o;

    /* renamed from: p */
    public final boolean f7272p;

    public AbstractC1818g(String str, List<String> list, boolean z) {
        this.f7270n = str;
        this.f7271o = Collections.unmodifiableList(list);
        this.f7272p = z;
    }
}
