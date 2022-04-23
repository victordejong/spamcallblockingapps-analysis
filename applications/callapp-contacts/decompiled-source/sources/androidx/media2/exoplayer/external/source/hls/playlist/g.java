package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.offline.a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/g.class */
public abstract class g implements a<g> {
    public final String n;
    public final List<String> o;
    public final boolean p;

    /* JADX INFO: Access modifiers changed from: protected */
    public g(String str, List<String> list, boolean z) {
        this.n = str;
        this.o = Collections.unmodifiableList(list);
        this.p = z;
    }
}
