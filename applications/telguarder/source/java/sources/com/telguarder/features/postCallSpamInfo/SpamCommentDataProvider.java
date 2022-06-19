package com.telguarder.features.postCallSpamInfo;

import android.content.Context;
import com.telguarder.features.rateAndFeedback.CommentsResult;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.backend.BackendRequestCreator;
import com.telguarder.helpers.log.Logger;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentDataProvider.class */
public class SpamCommentDataProvider {
    private static SpamCommentDataProvider mInstance;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback.class */
    public interface SpamCommentDataProviderCallback {
        void onAddAdvertItem();

        void onAddCommentListItem(String str, String str2);

        void onEndRequest();

        void onStartRequest();
    }

    private SpamCommentDataProvider() {
    }

    public static SpamCommentDataProvider getInstance() {
        SpamCommentDataProvider spamCommentDataProvider;
        synchronized (SpamCommentDataProvider.class) {
            try {
                if (mInstance == null) {
                    mInstance = new SpamCommentDataProvider();
                }
                spamCommentDataProvider = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return spamCommentDataProvider;
    }

    public void getData(Context context, String str, boolean z, final SpamCommentDataProviderCallback spamCommentDataProviderCallback) {
        if (spamCommentDataProviderCallback == null) {
            return;
        }
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_REPORT_COMMENTS, BackendRequest.Method.POST);
        backendRequestOfUrlAndMethodWithLogging.putParam("number", str);
        if (z) {
            backendRequestOfUrlAndMethodWithLogging.putParam("sortType", "legacy");
        }
        backendRequestOfUrlAndMethodWithLogging.putParam("offset", (Number) 0);
        backendRequestOfUrlAndMethodWithLogging.putParam("count", (Number) 30);
        backendRequestOfUrlAndMethodWithLogging.execute(CommentsResult.class, (BackendCallbackListener) new BackendCallbackListener<CommentsResult>() { // from class: com.telguarder.features.postCallSpamInfo.SpamCommentDataProvider.1
            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onError(Exception exc) {
                Logger.error("Comment list error: " + exc.getMessage());
                spamCommentDataProviderCallback.onEndRequest();
            }

            @Override // com.telguarder.helpers.backend.BackendCallbackListener
            public void onStart() {
                spamCommentDataProviderCallback.onStartRequest();
            }

            public void onSuccess(CommentsResult commentsResult) {
                if (commentsResult != null && commentsResult.comments != null && !commentsResult.comments.isEmpty()) {
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i >= commentsResult.comments.size()) {
                            break;
                        }
                        CommentsResult.Comment comment = commentsResult.comments.get(i);
                        spamCommentDataProviderCallback.onAddCommentListItem(comment.text, comment.timeStamp);
                        int i4 = i3;
                        if (i == i3) {
                            i4 = i3 + 18;
                            spamCommentDataProviderCallback.onAddAdvertItem();
                        }
                        i++;
                        i2 = i4;
                    }
                }
                spamCommentDataProviderCallback.onEndRequest();
            }
        });
    }
}
