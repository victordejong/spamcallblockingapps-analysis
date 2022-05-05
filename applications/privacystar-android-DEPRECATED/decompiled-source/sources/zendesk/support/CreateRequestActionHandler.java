package zendesk.support;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import java.util.List;
import java.util.Map;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.ActionDescription;
import zendesk.core.ActionHandler;
import zendesk.core.Zendesk;
import zendesk.support.request.RequestActivity;
/* loaded from: classes3-dex2jar.jar:zendesk/support/CreateRequestActionHandler.class */
public final class CreateRequestActionHandler implements ActionHandler {
    private static final String LOG_TAG = "CreateRequestActionHandler";
    private final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CreateRequestActionHandler(Context context) {
        this.context = context;
    }

    private static boolean isInitialized() {
        if (Support.INSTANCE.isInitialized() && Zendesk.INSTANCE.isInitialized()) {
            return true;
        }
        Logger.m289w(LOG_TAG, "Support SDK contact handler returning false because Support.init(..) or Zendesk.init(..) has not been called!", new Object[0]);
        return false;
    }

    @Override // zendesk.core.ActionHandler
    public boolean canHandle(@NonNull String str) {
        return isInitialized() && Constants.ACTION_CONTACT_OPTION.equals(str);
    }

    @VisibleForTesting
    @SuppressLint({"RestrictedApi"})
    List<UiConfig> extractConfigs(Map<String, Object> map) {
        UiConfig fromMap = UiConfigUtil.fromMap(map, UiConfig.class);
        return fromMap != null ? fromMap.getUiConfigs() : null;
    }

    @Override // zendesk.core.ActionHandler
    public ActionDescription getActionDescription() {
        String string = this.context.getString(C1790R.string.zs_request_contact_option_leave_a_message);
        return new ActionDescription(string, string, C1790R.C1792drawable.zs_contact_leave_message);
    }

    @Override // zendesk.core.ActionHandler
    public int getPriority() {
        return 0;
    }

    @Override // zendesk.core.ActionHandler
    @SuppressLint({"RestrictedApi"})
    public void handle(@Nullable Map<String, Object> map, @NonNull Context context) {
        if (isInitialized()) {
            List<UiConfig> extractConfigs = extractConfigs(map);
            if (extractConfigs != null) {
                RequestActivity.builder().show(context, extractConfigs);
            } else {
                RequestActivity.builder().show(context, new UiConfig[0]);
            }
        }
    }
}
