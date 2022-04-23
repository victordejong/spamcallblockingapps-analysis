package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.p001v4.util.Pair;
import android.view.View;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import zendesk.suas.Action;
import zendesk.suas.Listener;
import zendesk.support.CommentsResponse;
import zendesk.support.request.ActionCreateComment;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestAccessibilityHerald.class */
public class RequestAccessibilityHerald implements Listener<Action<?>> {
    private final View view;

    RequestAccessibilityHerald(View view) {
        this.view = view;
    }

    private void announce(@StringRes int i, Object... objArr) {
        this.view.announceForAccessibility(this.view.getContext().getString(i, objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RequestAccessibilityHerald create(RequestActivity requestActivity) {
        return new RequestAccessibilityHerald(requestActivity.findViewById(C1790R.C1793id.activity_request_root));
    }

    public void update(@NonNull Action<?> action) {
        char c;
        String actionType = action.getActionType();
        int hashCode = actionType.hashCode();
        if (hashCode == -1679314784) {
            if (actionType.equals("CREATE_COMMENT_SUCCESS")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != -1319777819) {
            if (hashCode == -292168757 && actionType.equals("LOAD_COMMENT_INITIAL")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (actionType.equals("CREATE_COMMENT_ERROR")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                announce(C1790R.string.zs_request_announce_comment_created_accessibility, ((ActionCreateComment.CreateCommentResult) action.getData()).getMessage().getPlainBody());
                return;
            case 1:
                announce(C1790R.string.zs_request_announce_comment_failed_accessibility, ((StateMessage) action.getData()).getPlainBody());
                return;
            case 2:
                Pair pair = (Pair) action.getData();
                if (pair != null && pair.first != 0 && CollectionUtils.isNotEmpty(((CommentsResponse) pair.first).getComments())) {
                    announce(C1790R.string.zs_request_announce_comments_loaded_accessibility, new Object[0]);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
