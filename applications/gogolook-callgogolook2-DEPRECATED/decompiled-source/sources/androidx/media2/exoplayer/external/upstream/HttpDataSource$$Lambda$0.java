package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.Predicate;
import androidx.media2.exoplayer.external.util.Util;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$$Lambda$0.class */
public final /* synthetic */ class HttpDataSource$$Lambda$0 implements Predicate {
    public static final Predicate $instance = new HttpDataSource$$Lambda$0();

    @Override // androidx.media2.exoplayer.external.util.Predicate
    public boolean evaluate(Object obj) {
        return Util.toLowerInvariant((String) obj);
    }
}
