package zendesk.support;

import com.crashlytics.android.answers.shim.AnswersOptionalLogger;
import com.crashlytics.android.answers.shim.KitEvent;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/AnswersTracker.class */
public class AnswersTracker implements ZendeskTracker {
    private static final String LOG_TAG = "AnswersTracker";

    @Override // zendesk.support.ZendeskTracker
    public void helpCenterArticleViewed() {
        Logger.m298d(LOG_TAG, "helpCenterArticleViewed", new Object[0]);
        AnswersOptionalLogger.get().logKitEvent(new KitEvent("help-center-article-viewed"));
    }

    @Override // zendesk.support.ZendeskTracker
    public void helpCenterLoaded() {
        Logger.m298d(LOG_TAG, "helpCenterLoaded", new Object[0]);
        AnswersOptionalLogger.get().logKitEvent(new KitEvent("help-center-fetched"));
    }

    @Override // zendesk.support.ZendeskTracker
    public void helpCenterSearched(String str) {
        Logger.m298d(LOG_TAG, "helpCenterSearched", new Object[0]);
        KitEvent kitEvent = new KitEvent("help-center-search");
        String str2 = str;
        if (StringUtils.isEmpty(str)) {
            str2 = "";
        }
        kitEvent.putAttribute("search-term", str2);
        AnswersOptionalLogger.get().logKitEvent(kitEvent);
    }

    @Override // zendesk.support.ZendeskTracker
    public void requestCreated() {
        Logger.m298d(LOG_TAG, "requestCreated", new Object[0]);
        AnswersOptionalLogger.get().logKitEvent(new KitEvent("request-created"));
    }

    @Override // zendesk.support.ZendeskTracker
    public void requestUpdated() {
        Logger.m298d(LOG_TAG, "requestUpdated", new Object[0]);
        AnswersOptionalLogger.get().logKitEvent(new KitEvent("request-updated"));
    }
}
