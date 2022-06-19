package com.telguarder.features.postCallSpamInfo;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder.class */
public class SpamCommentAdRowViewHolder extends RecyclerView.ViewHolder {
    public ViewGroup mBannerContainer;

    public SpamCommentAdRowViewHolder(View view) {
        super(view);
        this.mBannerContainer = (ViewGroup) view;
    }

    public void bindData(SpamCommentAdData spamCommentAdData, ViewGroup viewGroup) {
        if (spamCommentAdData != null) {
            spamCommentAdData.bindAd(this.mBannerContainer);
        }
    }
}
