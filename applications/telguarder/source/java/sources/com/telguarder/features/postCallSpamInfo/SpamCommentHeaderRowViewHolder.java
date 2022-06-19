package com.telguarder.features.postCallSpamInfo;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder.class */
public class SpamCommentHeaderRowViewHolder extends RecyclerView.ViewHolder {
    private View mItemView;

    public SpamCommentHeaderRowViewHolder(View view) {
        super(view);
        this.mItemView = view;
    }

    public void bindData(SpamCommentHeaderData spamCommentHeaderData) {
        if (spamCommentHeaderData == null) {
            return;
        }
        ((TextView) this.mItemView.findViewById(C2083R.C2086id.textViewCommentListTitle)).setTextColor(spamCommentHeaderData.headerTextColor);
    }
}
