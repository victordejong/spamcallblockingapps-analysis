package zendesk.support.requestlist;

import com.zendesk.service.SafeZendeskCallback;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/CancelableCompositeCallback.class */
class CancelableCompositeCallback {
    private Set<SafeZendeskCallback> zendeskCallbacks = new HashSet();

    public void add(SafeZendeskCallback safeZendeskCallback) {
        this.zendeskCallbacks.add(safeZendeskCallback);
    }

    public void add(SafeZendeskCallback... safeZendeskCallbackArr) {
        for (SafeZendeskCallback safeZendeskCallback : safeZendeskCallbackArr) {
            add(safeZendeskCallback);
        }
    }

    public void cancel() {
        for (SafeZendeskCallback safeZendeskCallback : this.zendeskCallbacks) {
            safeZendeskCallback.cancel();
        }
        this.zendeskCallbacks.clear();
    }
}
