package zendesk.support.guide;

import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import zendesk.core.NetworkInfoProvider;
import zendesk.core.RetryAction;
import zendesk.support.ArticleItem;
import zendesk.support.CategoryItem;
import zendesk.support.HelpItem;
import zendesk.support.SectionItem;
import zendesk.support.SeeAllArticlesItem;
import zendesk.support.guide.HelpCenterMvp;
import zendesk.support.guide.HelpMvp;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpAdapterPresenter.class */
public class HelpAdapterPresenter implements HelpMvp.Presenter {
    private static final Integer RETRY_ACTION_ID = 5;
    private HelpCenterMvp.Presenter contentPresenter;
    private boolean hasError;
    private HelpCenterUiConfig helpCenterUiConfig;
    private HelpMvp.Model model;
    private NetworkInfoProvider networkInfoProvider;
    private boolean noResults;
    private RetryAction retryAction;
    private HelpMvp.View view;
    private List<HelpItem> helpItems = new ArrayList();
    private List<HelpItem> filteredItems = new ArrayList();
    private ZendeskCallback<List<HelpItem>> callback = new ZendeskCallback<List<HelpItem>>() { // from class: zendesk.support.guide.HelpAdapterPresenter.2
        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            HelpAdapterPresenter.this.contentPresenter.onErrorWithRetry(CollectionUtils.isNotEmpty(HelpAdapterPresenter.this.helpCenterUiConfig.getCategoryIds()) ? HelpCenterMvp.ErrorType.CATEGORY_LOAD : CollectionUtils.isNotEmpty(HelpAdapterPresenter.this.helpCenterUiConfig.getSectionIds()) ? HelpCenterMvp.ErrorType.SECTION_LOAD : HelpCenterMvp.ErrorType.ARTICLES_LOAD, new RetryAction() { // from class: zendesk.support.guide.HelpAdapterPresenter.2.1
                @Override // zendesk.core.RetryAction
                public void onRetry() {
                    HelpAdapterPresenter.this.hasError = false;
                    HelpAdapterPresenter.this.view.showItems(HelpAdapterPresenter.this.filteredItems);
                    HelpAdapterPresenter.this.requestHelpContent();
                }
            });
            HelpAdapterPresenter.this.hasError = true;
            HelpAdapterPresenter.this.view.showItems(HelpAdapterPresenter.this.filteredItems);
        }

        public void onSuccess(List<HelpItem> list) {
            HelpAdapterPresenter.this.hasError = false;
            HelpAdapterPresenter.this.helpItems = CollectionUtils.copyOf(list);
            if (HelpAdapterPresenter.this.helpCenterUiConfig.isCollapseCategories()) {
                HelpAdapterPresenter.this.filteredItems = HelpAdapterPresenter.this.getCollapsedCategories(HelpAdapterPresenter.this.helpItems);
            } else {
                HelpAdapterPresenter.this.filteredItems = CollectionUtils.copyOf(HelpAdapterPresenter.this.helpItems);
            }
            HelpAdapterPresenter.this.noResults = CollectionUtils.isEmpty(HelpAdapterPresenter.this.filteredItems);
            HelpAdapterPresenter.this.view.showItems(HelpAdapterPresenter.this.filteredItems);
            HelpAdapterPresenter.this.contentPresenter.onLoad();
        }
    };

    public HelpAdapterPresenter(HelpMvp.View view, HelpMvp.Model model, NetworkInfoProvider networkInfoProvider, HelpCenterUiConfig helpCenterUiConfig) {
        this.view = view;
        this.model = model;
        this.networkInfoProvider = networkInfoProvider;
        this.helpCenterUiConfig = helpCenterUiConfig;
    }

    private void addItem(int i, HelpItem helpItem) {
        this.filteredItems.add(i, helpItem);
        this.view.addItem(i, helpItem);
    }

    private void collapseItem(int i) {
        if (i < getItemCount() - 1) {
            int i2 = i + 1;
            while (i2 < this.filteredItems.size() && 1 != this.filteredItems.get(i2).getViewType()) {
                removeItem(i2);
            }
        }
    }

    private void expandItem(CategoryItem categoryItem, int i) {
        int i2 = i + 1;
        for (SectionItem sectionItem : categoryItem.getSections()) {
            addItem(i2, sectionItem);
            int i3 = i2 + 1;
            try {
                Iterator<HelpItem> it = sectionItem.getChildren().iterator();
                while (true) {
                    i2 = i3;
                    if (it.hasNext()) {
                        addItem(i3, it.next());
                        i3++;
                    }
                }
            } catch (ClassCastException e) {
                Logger.m296e("HelpCenterActivity", "Error expanding item", e, new Object[0]);
                i2 = i3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<HelpItem> getCollapsedCategories(List<HelpItem> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() == 0) {
            return arrayList;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (1 == list.get(i).getViewType()) {
                arrayList.add(list.get(i));
                ((CategoryItem) list.get(i)).setExpanded(false);
            }
        }
        return arrayList;
    }

    private int getPaddingItemCount() {
        return this.helpCenterUiConfig.isContactUsButtonVisible() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMoreArticles(final SeeAllArticlesItem seeAllArticlesItem) {
        final SectionItem section = seeAllArticlesItem.getSection();
        final RetryAction retryAction = new RetryAction() { // from class: zendesk.support.guide.HelpAdapterPresenter.3
            @Override // zendesk.core.RetryAction
            public void onRetry() {
                HelpAdapterPresenter.this.loadMoreArticles(seeAllArticlesItem);
            }
        };
        if (this.networkInfoProvider.isNetworkAvailable()) {
            this.model.getArticlesForSection(section, this.helpCenterUiConfig.getLabelNames(), new ZendeskCallback<List<ArticleItem>>() { // from class: zendesk.support.guide.HelpAdapterPresenter.4
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    HelpAdapterPresenter.this.helpItems.remove(seeAllArticlesItem);
                    Logger.m295e("HelpCenterActivity", "Failed to load more articles", errorResponse);
                    HelpAdapterPresenter.this.contentPresenter.onErrorWithRetry(HelpCenterMvp.ErrorType.ARTICLES_LOAD, retryAction);
                }

                public void onSuccess(List<ArticleItem> list) {
                    int indexOf = HelpAdapterPresenter.this.helpItems.indexOf(seeAllArticlesItem);
                    int indexOf2 = HelpAdapterPresenter.this.filteredItems.indexOf(seeAllArticlesItem);
                    for (ArticleItem articleItem : list) {
                        if (!HelpAdapterPresenter.this.helpItems.contains(articleItem)) {
                            HelpAdapterPresenter.this.helpItems.add(indexOf, articleItem);
                            section.addArticle(articleItem);
                            indexOf2 = indexOf2;
                            if (indexOf2 != -1) {
                                HelpAdapterPresenter.this.filteredItems.add(indexOf2, articleItem);
                                HelpAdapterPresenter.this.view.addItem(indexOf2, articleItem);
                                indexOf2++;
                            }
                            indexOf++;
                        }
                    }
                    HelpAdapterPresenter.this.helpItems.remove(seeAllArticlesItem);
                    int indexOf3 = HelpAdapterPresenter.this.filteredItems.indexOf(seeAllArticlesItem);
                    HelpAdapterPresenter.this.filteredItems.remove(seeAllArticlesItem);
                    HelpAdapterPresenter.this.view.removeItem(indexOf3);
                }
            });
            return;
        }
        this.retryAction = retryAction;
        this.networkInfoProvider.addRetryAction(RETRY_ACTION_ID, this.retryAction);
    }

    private void removeItem(int i) {
        this.filteredItems.remove(i);
        this.view.removeItem(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestHelpContent() {
        if (!this.networkInfoProvider.isNetworkAvailable()) {
            this.retryAction = new RetryAction() { // from class: zendesk.support.guide.HelpAdapterPresenter.1
                @Override // zendesk.core.RetryAction
                public void onRetry() {
                    HelpAdapterPresenter.this.requestHelpContent();
                }
            };
            this.networkInfoProvider.addRetryAction(RETRY_ACTION_ID, this.retryAction);
        }
        this.model.getArticles(this.helpCenterUiConfig.getCategoryIds(), this.helpCenterUiConfig.getSectionIds(), this.helpCenterUiConfig.getLabelNames(), this.callback);
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public HelpItem getItem(int i) {
        return this.filteredItems.get(i);
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public int getItemCount() {
        if (this.hasError) {
            return 0;
        }
        return Math.max(this.filteredItems.size() + getPaddingItemCount(), 1);
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    @Nullable
    public HelpItem getItemForBinding(int i) {
        HelpItem helpItem = null;
        if (this.filteredItems.size() > 0) {
            helpItem = null;
            if (i < this.filteredItems.size()) {
                helpItem = this.filteredItems.get(i);
            }
        }
        return helpItem;
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public int getItemViewType(int i) {
        if (this.noResults) {
            return 7;
        }
        return this.filteredItems.size() > 0 ? i == this.filteredItems.size() ? 8 : this.filteredItems.get(i).getViewType() : 5;
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public void onAttached() {
        this.networkInfoProvider.register();
        if (CollectionUtils.isEmpty(this.helpItems)) {
            requestHelpContent();
        }
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public boolean onCategoryClick(CategoryItem categoryItem, int i) {
        if (categoryItem == null) {
            return false;
        }
        boolean expanded = categoryItem.setExpanded(!categoryItem.isExpanded());
        if (expanded) {
            expandItem(categoryItem, this.filteredItems.indexOf(categoryItem));
        } else {
            collapseItem(this.filteredItems.indexOf(categoryItem));
        }
        return expanded;
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public void onDetached() {
        this.networkInfoProvider.removeRetryAction(RETRY_ACTION_ID);
        this.networkInfoProvider.unregister();
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public void onSeeAllClick(SeeAllArticlesItem seeAllArticlesItem) {
        loadMoreArticles(seeAllArticlesItem);
    }

    @Override // zendesk.support.guide.HelpMvp.Presenter
    public void setContentPresenter(HelpCenterMvp.Presenter presenter) {
        this.contentPresenter = presenter;
    }
}
