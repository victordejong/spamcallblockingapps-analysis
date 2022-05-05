package zendesk.support;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.app.TaskStackBuilder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.commonui.UiConfig;
import zendesk.core.ActionDescription;
import zendesk.core.ActionHandler;
import zendesk.support.requestlist.RequestListActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/DeepLinkToRequestActionHandler.class */
public class DeepLinkToRequestActionHandler implements ActionHandler {
    private static final String BACK_STACK_ACTIVITIES = "back_stack_activities";
    private static final String REQUEST_INTENT = "request_ui_config";
    static final String REQUEST_VIEW_CONVERSATION = "request_view_conversation";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> data(Intent intent, List<Intent> list) {
        HashMap hashMap = new HashMap();
        hashMap.put(REQUEST_INTENT, intent);
        hashMap.put(BACK_STACK_ACTIVITIES, list);
        return hashMap;
    }

    @Override // zendesk.core.ActionHandler
    public boolean canHandle(String str) {
        return str.equals(REQUEST_VIEW_CONVERSATION);
    }

    @Override // zendesk.core.ActionHandler
    public ActionDescription getActionDescription() {
        return null;
    }

    @Override // zendesk.core.ActionHandler
    public int getPriority() {
        return 0;
    }

    @Override // zendesk.core.ActionHandler
    public void handle(@Nullable Map<String, Object> map, @NonNull Context context) {
        TaskStackBuilder create = TaskStackBuilder.create(context);
        if (map != null) {
            for (Intent intent : (List) map.get(BACK_STACK_ACTIVITIES)) {
                create.addNextIntentWithParentStack(intent);
            }
        }
        create.addNextIntentWithParentStack(RequestListActivity.builder().intent(context, new UiConfig[0]));
        if (map != null) {
            create.addNextIntentWithParentStack((Intent) map.get(REQUEST_INTENT));
        }
        create.startActivities();
    }
}
