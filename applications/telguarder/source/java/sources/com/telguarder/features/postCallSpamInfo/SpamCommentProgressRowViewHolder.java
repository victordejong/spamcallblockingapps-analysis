package com.telguarder.features.postCallSpamInfo;

import android.view.View;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
import com.telguarder.features.postCallSpamInfo.SpamCommentProgressData;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder.class */
public class SpamCommentProgressRowViewHolder extends RecyclerView.ViewHolder {
    private ProgressBar mOrangeProgressBar;
    private ProgressBar mRedProgressBar;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.telguarder.features.postCallSpamInfo.SpamCommentProgressRowViewHolder$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder$1.class */
    public static /* synthetic */ class C22751 {

        /* renamed from: $SwitchMap$com$telguarder$features$postCallSpamInfo$SpamCommentProgressData$ProgressState */
        static final /* synthetic */ int[] f1297x70704dbb;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SpamCommentProgressData.ProgressState.values().length];
            f1297x70704dbb = iArr;
            try {
                iArr[SpamCommentProgressData.ProgressState.RED_REQUEST_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1297x70704dbb[SpamCommentProgressData.ProgressState.ORANGE_REQUEST_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1297x70704dbb[SpamCommentProgressData.ProgressState.NO_COMMENTS_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public SpamCommentProgressRowViewHolder(View view) {
        super(view);
        this.mRedProgressBar = (ProgressBar) view.findViewById(C2083R.C2086id.comments_loading_red);
        this.mOrangeProgressBar = (ProgressBar) view.findViewById(C2083R.C2086id.comments_loading_orange);
    }

    public void bindData(SpamCommentProgressData spamCommentProgressData) {
        if (spamCommentProgressData == null) {
            return;
        }
        int i = C22751.f1297x70704dbb[spamCommentProgressData.mProgressState.ordinal()];
        if (i == 1) {
            this.mOrangeProgressBar.setVisibility(8);
            this.mRedProgressBar.setVisibility(0);
        } else if (i == 2) {
            this.mRedProgressBar.setVisibility(8);
            this.mOrangeProgressBar.setVisibility(0);
        } else if (i != 3) {
        } else {
            this.mOrangeProgressBar.setVisibility(8);
            this.mRedProgressBar.setVisibility(8);
        }
    }
}
