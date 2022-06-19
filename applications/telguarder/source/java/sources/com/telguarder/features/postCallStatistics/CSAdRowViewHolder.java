package com.telguarder.features.postCallStatistics;

import android.view.View;
import android.view.ViewGroup;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.helpers.common.AppUtil;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSAdRowViewHolder.class */
public class CSAdRowViewHolder extends CSRowViewHolder {
    public ViewGroup mBannerContainer;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface.class */
    public interface AdHolderCallbackInterface {
        void onDataBinding(ViewGroup viewGroup);
    }

    public CSAdRowViewHolder(View view) {
        super(view);
        ViewGroup viewGroup = (ViewGroup) view;
        this.mBannerContainer = viewGroup;
        viewGroup.setBackgroundColor(AppUtil.getColorResource(view.getContext(), C2083R.C2084color.post_call_divider));
    }

    public void bindData(CSAdData cSAdData, Advert advert, AdHolderCallbackInterface adHolderCallbackInterface) {
        if (adHolderCallbackInterface != null) {
            adHolderCallbackInterface.onDataBinding(this.mBannerContainer);
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
