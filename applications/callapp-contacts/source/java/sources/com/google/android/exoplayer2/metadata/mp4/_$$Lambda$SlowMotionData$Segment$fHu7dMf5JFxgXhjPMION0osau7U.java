package com.google.android.exoplayer2.metadata.mp4;

import com.google.android.exoplayer2.metadata.mp4.-$;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.common.collect.AbstractC15537n;
import java.util.Comparator;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/mp4/_$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U.class */
public final /* synthetic */ class _$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U implements Comparator {
    public static final /* synthetic */ -$.Lambda.SlowMotionData.Segment.fHu7dMf5JFxgXhjPMION0osau7U INSTANCE = new _$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U();

    private /* synthetic */ _$$Lambda$SlowMotionData$Segment$fHu7dMf5JFxgXhjPMION0osau7U() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int mo8737b;
        mo8737b = AbstractC15537n.m8746a().mo8740a(r0.startTimeMs, r1.startTimeMs).mo8740a(r0.endTimeMs, r1.endTimeMs).mo8741a(((SlowMotionData.Segment) obj).speedDivisor, ((SlowMotionData.Segment) obj2).speedDivisor).mo8737b();
        return mo8737b;
    }
}
