package com.telguarder.features.postCallStatistics;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.AdInfoActivity;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder.class */
public class CSAdInfoRowViewHolder extends CSRowViewHolder {
    public TextView mWhyAdsHereTextView;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSAdInfoRowViewHolder$AdInfoHolderCallbackInterface.class */
    public interface AdInfoHolderCallbackInterface {
        void onDataBinding(TextView textView);
    }

    public CSAdInfoRowViewHolder(View view) {
        super(view);
        initWhyAdsHereText(view);
    }

    private void initWhyAdsHereText(View view) {
        TextView textView = (TextView) view.findViewById(C2083R.C2086id.tv_why_do_we_show_ads);
        this.mWhyAdsHereTextView = textView;
        textView.setVisibility(8);
        this.mWhyAdsHereTextView.setOnClickListener(_$$Lambda$CSAdInfoRowViewHolder$RQKajvMQ8RFzgAhUL0d3bq4oeoc.INSTANCE);
    }

    public static /* synthetic */ void lambda$initWhyAdsHereText$0(View view) {
        if (LastPhoneCallActivity.isInstantiated()) {
            AdInfoActivity.adDebugInfoEnabled = false;
            LastPhoneCallActivity lastPhoneCallActivity = LastPhoneCallActivity.getInstance();
            Intent intent = new Intent(lastPhoneCallActivity, AdInfoActivity.class);
            intent.addFlags(268435456);
            lastPhoneCallActivity.startActivity(intent);
            LastPhoneCallActivity.getInstance().stop(true);
        }
    }

    public void bindData(AdInfoHolderCallbackInterface adInfoHolderCallbackInterface) {
        if (adInfoHolderCallbackInterface != null) {
            adInfoHolderCallbackInterface.onDataBinding(this.mWhyAdsHereTextView);
        }
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
