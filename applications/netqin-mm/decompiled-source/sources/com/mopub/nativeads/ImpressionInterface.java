package com.mopub.nativeads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ImpressionInterface.class */
public interface ImpressionInterface {
    int getImpressionMinPercentageViewed();

    int getImpressionMinTimeViewed();

    Integer getImpressionMinVisiblePx();

    boolean isImpressionRecorded();

    void recordImpression(View view);

    void setImpressionRecorded();
}
