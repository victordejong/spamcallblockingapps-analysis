package zendesk.support.guide;

import android.content.Context;
import com.zendesk.service.ZendeskCallback;
import java.util.List;
import zendesk.core.RetryAction;
import zendesk.support.SearchArticle;
import zendesk.support.SupportSdkSettings;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterMvp.class */
interface HelpCenterMvp {

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterMvp$ErrorType.class */
    public enum ErrorType {
        CATEGORY_LOAD,
        SECTION_LOAD,
        ARTICLES_LOAD
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterMvp$Model.class */
    public interface Model {
        void getSettings(ZendeskCallback<SupportSdkSettings> zendeskCallback);

        void search(List<Long> list, List<Long> list2, String str, String[] strArr, ZendeskCallback<List<SearchArticle>> zendeskCallback);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterMvp$Presenter.class */
    public interface Presenter {
        void init(HelpCenterUiConfig helpCenterUiConfig);

        void onErrorWithRetry(ErrorType errorType, RetryAction retryAction);

        void onLoad();

        void onPause();

        void onResume(View view);

        void onSearchSubmit(String str);

        boolean shouldShowConversationsMenuItem();

        boolean shouldShowSearchMenuItem();
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterMvp$View.class */
    public interface View {
        void announceContentLoaded();

        void clearSearchResults();

        void dismissError();

        void exitActivity();

        Context getContext();

        void hideLoadingState();

        boolean isShowingHelp();

        void setSearchEnabled(boolean z);

        void showContactUsButton();

        void showContactZendesk();

        void showHelp(HelpCenterUiConfig helpCenterUiConfig);

        void showLoadArticleErrorWithRetry(ErrorType errorType, RetryAction retryAction);

        void showLoadingState();

        void showNoConnectionError();

        void showRequestList();

        void showSearchResults(List<SearchArticle> list, String str);
    }
}
