package zendesk.support.requestlist;

import android.content.Context;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Map;
import zendesk.core.ActionDescription;
import zendesk.core.ActionHandler;
import zendesk.support.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListSyncHandler.class */
public class RequestListSyncHandler implements ActionHandler {
    private final RequestListPresenter presenter;
    private boolean running = false;
    private boolean outdated = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestListSyncHandler(@NonNull RequestListPresenter requestListPresenter) {
        this.presenter = requestListPresenter;
    }

    @Override // zendesk.core.ActionHandler
    public boolean canHandle(String str) {
        return Constants.ACTION_REFRESH_REQUEST_LIST.equals(str);
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
    @MainThread
    public void handle(@Nullable Map<String, Object> map, @NonNull Context context) {
        if (this.running) {
            this.presenter.refresh();
            this.outdated = false;
            return;
        }
        this.outdated = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRunning(boolean z) {
        this.running = z;
        if (this.outdated) {
            this.presenter.refresh();
            this.outdated = false;
        }
    }
}
