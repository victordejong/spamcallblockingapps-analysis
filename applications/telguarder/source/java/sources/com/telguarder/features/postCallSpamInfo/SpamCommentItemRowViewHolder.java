package com.telguarder.features.postCallSpamInfo;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder.class */
public class SpamCommentItemRowViewHolder extends RecyclerView.ViewHolder {
    private View mItemView;

    public SpamCommentItemRowViewHolder(View view) {
        super(view);
        this.mItemView = view;
    }

    public void bindData(SpamCommentListItemData spamCommentListItemData) {
        if (spamCommentListItemData == null) {
            return;
        }
        ((TextView) this.mItemView.findViewById(C2083R.C2086id.comment_text)).setText(spamCommentListItemData.mCommentText != null ? spamCommentListItemData.mCommentText.trim() : "");
        TextView textView = (TextView) this.mItemView.findViewById(C2083R.C2086id.comment_date);
        String str = "";
        if (spamCommentListItemData.mCommentDate != null) {
            str = spamCommentListItemData.mCommentDate.substring(0, 10);
        }
        textView.setText(str);
    }
}
