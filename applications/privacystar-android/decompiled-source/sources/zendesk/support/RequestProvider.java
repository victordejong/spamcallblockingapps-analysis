package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
import java.util.Date;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestProvider.class */
public interface RequestProvider {
    void addComment(@NonNull String str, @NonNull EndUserComment endUserComment, @Nullable ZendeskCallback<Comment> zendeskCallback);

    void createRequest(@NonNull CreateRequest createRequest, @Nullable ZendeskCallback<Request> zendeskCallback);

    void getAllRequests(@Nullable ZendeskCallback<List<Request>> zendeskCallback);

    void getComments(@NonNull String str, @Nullable ZendeskCallback<CommentsResponse> zendeskCallback);

    void getCommentsSince(@NonNull String str, @NonNull Date date, boolean z, @Nullable ZendeskCallback<CommentsResponse> zendeskCallback);

    void getRequest(@NonNull String str, @Nullable ZendeskCallback<Request> zendeskCallback);

    void getRequests(@NonNull String str, @Nullable ZendeskCallback<List<Request>> zendeskCallback);

    void getTicketFormsById(@NonNull List<Long> list, @Nullable ZendeskCallback<List<TicketForm>> zendeskCallback);

    void getUpdatesForDevice(@NonNull ZendeskCallback<RequestUpdates> zendeskCallback);

    void markRequestAsRead(@NonNull String str, int i);

    void markRequestAsUnread(@NonNull String str);
}
