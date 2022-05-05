package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.util.SlidingPercentile;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/SlidingPercentile$$Lambda$0.class */
public final /* synthetic */ class SlidingPercentile$$Lambda$0 implements Comparator {
    public static final Comparator $instance = new SlidingPercentile$$Lambda$0();

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return SlidingPercentile.lambda$static$0$SlidingPercentile((SlidingPercentile.Sample) obj, (SlidingPercentile.Sample) obj2);
    }
}
