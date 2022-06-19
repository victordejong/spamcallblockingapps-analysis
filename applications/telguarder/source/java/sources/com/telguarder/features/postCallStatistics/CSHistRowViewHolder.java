package com.telguarder.features.postCallStatistics;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.pubmatic.sdk.video.POBVastError;
import com.telguarder.ApplicationObject;
import com.telguarder.C2083R;
import com.telguarder.helpers.common.AppUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSHistRowViewHolder.class */
public class CSHistRowViewHolder extends CSRowViewHolder {
    private TextView dateTimeText;
    private TextView durationValue;
    private ImageView incomingIcon;
    private CSHistData mData;
    private ImageView missedicon;
    private ImageView outgoingIcon;
    private ProgressBar pbDuration;
    private ImageView rejectedIcon;

    public CSHistRowViewHolder(View view) {
        super(view);
        this.outgoingIcon = (ImageView) view.findViewById(C2083R.C2086id.outgoingIcon);
        this.missedicon = (ImageView) view.findViewById(C2083R.C2086id.missedicon);
        this.incomingIcon = (ImageView) view.findViewById(C2083R.C2086id.incomingIcon);
        this.rejectedIcon = (ImageView) view.findViewById(C2083R.C2086id.rejectedIcon);
        this.durationValue = (TextView) view.findViewById(C2083R.C2086id.durationValue);
        this.dateTimeText = (TextView) view.findViewById(C2083R.C2086id.dateTimeText);
        this.pbDuration = (ProgressBar) view.findViewById(C2083R.C2086id.pbDuration);
    }

    private String getTimeValueText(long j) {
        if (j > 216000) {
            int round = Math.round((float) (((j / 60) / 60) / 24));
            return round + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_day_short);
        } else if (j > 36000) {
            int round2 = Math.round((float) ((j / 60) / 60));
            return round2 + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_hour_short);
        } else if (j <= 60) {
            return j + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_second_short);
        } else {
            int round3 = Math.round((float) (j / 60));
            return round3 + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_minute_short);
        }
    }

    private void setProgressBarColor(ProgressBar progressBar, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            progressBar.setProgressTintList(ColorStateList.valueOf(i));
        } else {
            progressBar.getProgressDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
    }

    private void showBlockedCallData() {
        this.outgoingIcon.setVisibility(8);
        this.missedicon.setVisibility(8);
        this.incomingIcon.setVisibility(8);
        this.rejectedIcon.setVisibility(0);
        ProgressBar progressBar = this.pbDuration;
        setProgressBarColor(progressBar, AppUtil.getColorResource(progressBar.getContext(), C2083R.C2084color.progress_bar_incoming_color));
    }

    private void showIncomingCallData() {
        this.outgoingIcon.setVisibility(8);
        this.missedicon.setVisibility(8);
        this.incomingIcon.setVisibility(0);
        this.rejectedIcon.setVisibility(8);
        ProgressBar progressBar = this.pbDuration;
        setProgressBarColor(progressBar, AppUtil.getColorResource(progressBar.getContext(), C2083R.C2084color.progress_bar_incoming_color));
    }

    private void showMissedCallData() {
        this.outgoingIcon.setVisibility(8);
        this.missedicon.setVisibility(0);
        this.incomingIcon.setVisibility(8);
        this.rejectedIcon.setVisibility(8);
        ProgressBar progressBar = this.pbDuration;
        setProgressBarColor(progressBar, AppUtil.getColorResource(progressBar.getContext(), C2083R.C2084color.progress_bar_incoming_color));
    }

    private void showOutgoingCallData() {
        this.outgoingIcon.setVisibility(0);
        this.missedicon.setVisibility(8);
        this.incomingIcon.setVisibility(8);
        this.rejectedIcon.setVisibility(8);
        ProgressBar progressBar = this.pbDuration;
        setProgressBarColor(progressBar, AppUtil.getColorResource(progressBar.getContext(), C2083R.C2084color.progress_bar_outgoing_color));
    }

    private void showRejectedCallData() {
        this.outgoingIcon.setVisibility(8);
        this.missedicon.setVisibility(8);
        this.incomingIcon.setVisibility(8);
        this.rejectedIcon.setVisibility(0);
        ProgressBar progressBar = this.pbDuration;
        setProgressBarColor(progressBar, AppUtil.getColorResource(progressBar.getContext(), C2083R.C2084color.progress_bar_incoming_color));
    }

    public void bindData(CSHistData cSHistData) {
        this.mData = cSHistData;
        int i = cSHistData.callType;
        if (i == 1) {
            showIncomingCallData();
        } else if (i == 2) {
            showOutgoingCallData();
        } else if (i == 3) {
            showMissedCallData();
        } else if (i == 5) {
            showRejectedCallData();
        } else if (i == 6) {
            showBlockedCallData();
        }
        this.dateTimeText.setText(new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss", Locale.getDefault()).format(Long.valueOf(this.mData.callDate)));
        this.pbDuration.setMax(POBVastError.UNDEFINED_ERROR);
        this.pbDuration.setProgress(this.mData.callDuration);
        this.durationValue.setText(getTimeValueText(this.mData.callDuration));
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onAttachToWindow() {
        super.onAttachToWindow();
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onDetachFromWindow() {
        super.onDetachFromWindow();
    }
}
