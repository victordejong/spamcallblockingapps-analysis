package zendesk.support;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.ActionDescription;
import zendesk.core.ActionHandler;
import zendesk.support.guide.ViewArticleActivity;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ViewArticleActionHandler.class */
class ViewArticleActionHandler implements ActionHandler {
    private static final String HELP_CENTER_ARTICLE_ID = "help_center_article_id";
    private static final String HELP_CENTER_ARTICLE_TITLE = "help_center_article_title";
    static final String HELP_CENTER_VIEW_ARTICLE = "help_center_view_article";
    private static final String LOG_TAG = "ViewArticleActionHandle";

    @NonNull
    public static Map<String, Object> data(long j, @NonNull String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(HELP_CENTER_ARTICLE_ID, Long.valueOf(j));
        hashMap.put(HELP_CENTER_ARTICLE_TITLE, str);
        return hashMap;
    }

    @Override // zendesk.core.ActionHandler
    public boolean canHandle(String str) {
        return str.equals(HELP_CENTER_VIEW_ARTICLE);
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
        if (map == null) {
            Logger.m289w(LOG_TAG, "Property map is null, cannot open article.", new Object[0]);
            return;
        }
        long longValue = ((Long) map.get(HELP_CENTER_ARTICLE_ID)).longValue();
        UiConfig fromMap = UiConfigUtil.fromMap(map, UiConfig.class);
        ViewArticleActivity.builder(longValue).show(context, fromMap != null ? fromMap.getUiConfigs() : Collections.emptyList());
    }
}
