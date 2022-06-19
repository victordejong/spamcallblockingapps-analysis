package com.tenor.android.core.measurable;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ItemVisualPosition;
import com.tenor.android.core.constant.ViewAction;
import e.m.e.d0.b;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/measurable/MeasurableViewHolderEvent.class */
public class MeasurableViewHolderEvent implements Serializable {
    private static final long serialVersionUID = 2288577105348192434L;
    @b("action")
    private final String mAction;
    @b("elapsed_ms")
    private String mDuration;
    @b("source_id")
    private final String mSourceId;
    @b("timestamp")
    private final String mTimestamp;
    @b(AnalyticsConstants.TIMEZONE)
    private final String mUtcOffset;
    @b("visible_fraction")
    private String mVisibleFraction;
    @b("visual_pos")
    @ItemVisualPosition.Value
    private final String mVisualPosition;

    public MeasurableViewHolderEvent(MeasurableViewHolderData measurableViewHolderData, String str) {
        this(measurableViewHolderData.getId(), ViewAction.VIEW, str, measurableViewHolderData.getVisualPosition());
        Locale locale = Locale.US;
        this.mDuration = String.format(locale, "%d", Integer.valueOf(measurableViewHolderData.getAccumulatedVisibleDuration()));
        this.mVisibleFraction = String.format(locale, "%f", Float.valueOf(measurableViewHolderData.getVisibleFraction()));
    }

    public MeasurableViewHolderEvent(String str, @ViewAction.Value String str2, String str3, @ItemVisualPosition.Value String str4) {
        this.mSourceId = str;
        this.mTimestamp = String.format(Locale.US, "%d", Long.valueOf(System.currentTimeMillis()));
        this.mAction = str2;
        this.mUtcOffset = str3;
        this.mVisualPosition = str4;
    }
}
