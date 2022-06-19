package com.telguarder.features.postCallStatistics;

import android.view.View;
import com.telguarder.helpers.analytics.AnalyticsManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSHistHeaderRowViewHolder.class */
public class CSHistHeaderRowViewHolder extends CSRowViewHolder {
    public CSHistHeaderRowViewHolder(View view) {
        super(view);
    }

    public void bindData(CSHistHeaderData cSHistHeaderData) {
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onAttachToWindow() {
        super.onAttachToWindow();
        AnalyticsManager.getInstance().sendCallStatisticsCallHistoryAction();
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onDetachFromWindow() {
        super.onDetachFromWindow();
    }
}
