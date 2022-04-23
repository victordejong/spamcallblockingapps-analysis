package zendesk.support.guide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterUiConfig.class */
public class HelpCenterUiConfig implements UiConfig {
    private final boolean addListPaddingBottom;
    private final List<Long> categoryIds;
    private final boolean collapseCategories;
    private final boolean contactUsButtonVisibility;
    private final String[] labelNames;
    private final List<Long> sectionIds;
    private final boolean showConversationsMenuButton;
    private List<UiConfig> uiConfigs;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterUiConfig$Builder.class */
    public static class Builder {
        private List<Long> categoryIds = Collections.emptyList();
        private List<Long> sectionIds = Collections.emptyList();
        private String[] labelNames = new String[0];
        private boolean contactUsButtonVisible = true;
        private boolean addListPaddingBottom = true;
        private boolean collapseCategories = false;
        private boolean showConversationsMenuButton = true;
        private List<UiConfig> uiConfigs = new ArrayList();

        private void setUiConfigs(@NonNull List<UiConfig> list) {
            this.uiConfigs = list;
            HelpCenterUiConfig helpCenterUiConfig = (HelpCenterUiConfig) UiConfigUtil.findConfigForType(list, HelpCenterUiConfig.class);
            if (helpCenterUiConfig != null) {
                this.contactUsButtonVisible = helpCenterUiConfig.contactUsButtonVisibility;
                this.categoryIds = helpCenterUiConfig.categoryIds;
                this.sectionIds = helpCenterUiConfig.sectionIds;
                this.collapseCategories = helpCenterUiConfig.collapseCategories;
                this.addListPaddingBottom = helpCenterUiConfig.addListPaddingBottom;
                this.labelNames = helpCenterUiConfig.labelNames;
                this.showConversationsMenuButton = helpCenterUiConfig.showConversationsMenuButton;
            }
        }

        @NonNull
        public UiConfig config() {
            return new HelpCenterUiConfig(this);
        }

        @SuppressLint({"RestrictedApi"})
        public Intent intent(@NonNull Context context, List<UiConfig> list) {
            setUiConfigs(list);
            Intent intent = new Intent(context, HelpCenterActivity.class);
            UiConfigUtil.addToIntent(intent, config());
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

        public Builder withArticlesForCategoryIds(@NonNull List<Long> list) {
            if (this.sectionIds.size() > 0) {
                Logger.m289w("HelpCenterActivity", "Builder: sections have already been specified. Removing section IDs to set category IDs.", new Object[0]);
                this.sectionIds = Collections.emptyList();
            }
            this.categoryIds = CollectionUtils.copyOf(list);
            return this;
        }

        public Builder withArticlesForCategoryIds(@NonNull Long... lArr) {
            return withArticlesForCategoryIds(Arrays.asList(lArr));
        }

        public Builder withArticlesForSectionIds(@NonNull List<Long> list) {
            if (this.categoryIds.size() > 0) {
                Logger.m289w("HelpCenterActivity", "Builder: categories have already been specified. Removing category IDs to set section IDs.", new Object[0]);
                this.categoryIds = Collections.emptyList();
            }
            this.sectionIds = CollectionUtils.copyOf(list);
            return this;
        }

        public Builder withArticlesForSectionIds(@NonNull Long... lArr) {
            return withArticlesForSectionIds(Arrays.asList(lArr));
        }

        public Builder withCategoriesCollapsed(boolean z) {
            this.collapseCategories = z;
            return this;
        }

        public Builder withContactUsButtonVisible(boolean z) {
            this.contactUsButtonVisible = z;
            return this;
        }

        public Builder withLabelNames(@NonNull List<String> list) {
            return withLabelNames((String[]) list.toArray(new String[list.size()]));
        }

        public Builder withLabelNames(@NonNull String... strArr) {
            if (CollectionUtils.isNotEmpty(strArr)) {
                this.labelNames = strArr;
            }
            return this;
        }

        public Builder withShowConversationsMenuButton(boolean z) {
            this.showConversationsMenuButton = z;
            return this;
        }
    }

    private HelpCenterUiConfig(Builder builder) {
        this.categoryIds = builder.categoryIds;
        this.sectionIds = builder.sectionIds;
        this.labelNames = builder.labelNames;
        this.contactUsButtonVisibility = builder.contactUsButtonVisible;
        this.addListPaddingBottom = this.contactUsButtonVisibility;
        this.collapseCategories = builder.collapseCategories;
        this.showConversationsMenuButton = builder.showConversationsMenuButton;
        this.uiConfigs = builder.uiConfigs;
    }

    public List<Long> getCategoryIds() {
        return this.categoryIds;
    }

    public String[] getLabelNames() {
        return this.labelNames;
    }

    public List<Long> getSectionIds() {
        return this.sectionIds;
    }

    @Override // zendesk.commonui.UiConfig
    @SuppressLint({"RestrictedApi"})
    public List<UiConfig> getUiConfigs() {
        return UiConfigUtil.addSelfIfNotInList(this.uiConfigs, this);
    }

    public boolean isCollapseCategories() {
        return this.collapseCategories;
    }

    public boolean isContactUsButtonVisible() {
        return this.contactUsButtonVisibility;
    }

    public boolean isShowConversationsMenuButton() {
        return this.showConversationsMenuButton;
    }
}
