package zendesk.support.guide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
import zendesk.support.Article;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ArticleUiConfig.class */
public class ArticleUiConfig implements UiConfig {
    static final int ARTICLE_ID = 1;
    static final int ARTICLE_MODEL = 2;
    static final int UNKNOWN = -1;
    private final ArticleViewModel article;
    private final long articleId;
    private final int configurationState;
    private final boolean contactUsVisible;
    private final List<UiConfig> uiConfigs;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ArticleUiConfig$Builder.class */
    public static class Builder {
        private ArticleViewModel article;
        private long articleId;
        private boolean contactUsVisible = true;
        private List<UiConfig> uiConfigs = new ArrayList();
        private int configurationState = -1;

        public Builder() {
        }

        public Builder(long j) {
            this.articleId = j;
        }

        public Builder(@NonNull Article article) {
            this.article = new ArticleViewModel(article);
        }

        private void setUiConfigs(@NonNull List<UiConfig> list) {
            this.uiConfigs = list;
            ArticleUiConfig articleUiConfig = (ArticleUiConfig) UiConfigUtil.findConfigForType(list, ArticleUiConfig.class);
            if (articleUiConfig != null) {
                this.contactUsVisible = articleUiConfig.isContactUsButtonVisible();
            }
        }

        @NonNull
        public UiConfig config() {
            return new ArticleUiConfig(this);
        }

        @SuppressLint({"RestrictedApi"})
        public Intent intent(@NonNull Context context, List<UiConfig> list) {
            setUiConfigs(list);
            ArticleUiConfig articleUiConfig = new ArticleUiConfig(this);
            Intent intent = new Intent(context, ViewArticleActivity.class);
            UiConfigUtil.addToIntent(intent, articleUiConfig);
            return intent;
        }

        public Intent intent(@NonNull Context context, UiConfig... uiConfigArr) {
            return intent(context, Arrays.asList(uiConfigArr));
        }

        public void show(@NonNull Context context, List<UiConfig> list) {
            context.startActivity(intent(context, list));
        }

        public void show(@NonNull Context context, UiConfig... uiConfigArr) {
            context.startActivity(intent(context, uiConfigArr));
        }

        public Builder withContactUsButtonVisible(boolean z) {
            this.contactUsVisible = z;
            return this;
        }
    }

    private ArticleUiConfig(Builder builder) {
        this.configurationState = builder.configurationState;
        this.article = builder.article;
        this.articleId = builder.articleId;
        this.contactUsVisible = builder.contactUsVisible;
        this.uiConfigs = builder.uiConfigs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArticleViewModel getArticle() {
        return this.article;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getArticleId() {
        return this.articleId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getConfigurationState() {
        return this.configurationState;
    }

    @Override // zendesk.commonui.UiConfig
    @SuppressLint({"RestrictedApi"})
    public List<UiConfig> getUiConfigs() {
        return UiConfigUtil.addSelfIfNotInList(this.uiConfigs, this);
    }

    public boolean isContactUsButtonVisible() {
        return this.contactUsVisible;
    }
}
