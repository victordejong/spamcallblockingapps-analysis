package com.google.android.exoplayer2.metadata.mp4;

import com.google.android.exoplayer2.metadata.mp4.-$;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.common.collect.n;
import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/mp4/_$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U.class */
public final /* synthetic */ class _$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U implements Comparator {
    public static final /* synthetic */ -$.Lambda.SlowMotionData.Segment.fHu7dMf5JFxgXhjPMION0osau7U INSTANCE = new _$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U();

    private /* synthetic */ _$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int b2;
        b2 = n.a().a(r0.startTimeMs, r1.startTimeMs).a(r0.endTimeMs, r1.endTimeMs).a(((SlowMotionData.Segment) obj).speedDivisor, ((SlowMotionData.Segment) obj2).speedDivisor).b();
        return b2;
    }
}
