package com.telguarder.features.postCallStatistics;

import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.facebook.ads.AdError;
import com.telguarder.C2083R;
import com.telguarder.features.postCallStatistics.CircleProgressView;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSCountRowViewHolder.class */
public class CSCountRowViewHolder extends CSRowViewHolder {
    private CSCountData mData;
    private CircleProgressView mIncomingCountView;
    private CircleProgressView mMissedCountView;
    private CircleProgressView mOutgoingCountView;

    public CSCountRowViewHolder(View view) {
        super(view);
        this.mIncomingCountView = (CircleProgressView) view.findViewById(C2083R.C2086id.circle_progress_view_incoming);
        this.mOutgoingCountView = (CircleProgressView) view.findViewById(C2083R.C2086id.circle_progress_view_outgoing);
        this.mMissedCountView = (CircleProgressView) view.findViewById(C2083R.C2086id.circle_progress_view_missed);
    }

    private void updateCountValue(final CircleProgressView circleProgressView, long j, long j2) {
        circleProgressView.showTextView(null, AppUtil.getColorResource(circleProgressView.getContext(), C2083R.C2084color.post_call_dark_text), 12, false);
        circleProgressView.setInterpolator(new AccelerateDecelerateInterpolator());
        circleProgressView.setStartAngle(260.0f);
        circleProgressView.setProgressWithAnimation((float) j, (float) (j2 - j), AdError.SERVER_ERROR_CODE, false);
        circleProgressView.addAnimationListener(new CircleProgressView.ProgressAnimationListener() { // from class: com.telguarder.features.postCallStatistics.CSCountRowViewHolder.1
            @Override // com.telguarder.features.postCallStatistics.CircleProgressView.ProgressAnimationListener
            public void onAnimationEnd() {
                circleProgressView.invalidate();
            }

            @Override // com.telguarder.features.postCallStatistics.CircleProgressView.ProgressAnimationListener
            public void onValueChanged(float f) {
            }
        });
    }

    public void bindData(CSCountData cSCountData) {
        if (this.mData == null) {
            if (cSCountData.incomingCount == 0 && cSCountData.missedCount == 0 && cSCountData.outgoingCount == 0) {
                return;
            }
            this.mData = cSCountData;
            int i = cSCountData.incomingCount;
            int i2 = this.mData.outgoingCount;
            long j = i + i2 + this.mData.missedCount;
            updateCountValue(this.mIncomingCountView, this.mData.incomingCount, j);
            updateCountValue(this.mOutgoingCountView, this.mData.outgoingCount, j);
            updateCountValue(this.mMissedCountView, this.mData.missedCount, j);
        }
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onAttachToWindow() {
        super.onAttachToWindow();
        AnalyticsManager.getInstance().sendCallStatisticsCounterAction();
        this.mIncomingCountView.startAnimation();
        this.mOutgoingCountView.startAnimation();
        this.mMissedCountView.startAnimation();
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onDetachFromWindow() {
        super.onDetachFromWindow();
    }
}
