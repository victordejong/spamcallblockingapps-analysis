package zendesk.support;

import android.annotation.SuppressLint;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.LocaleUtil;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskHelpCenterProvider.class */
public class ZendeskHelpCenterProvider implements HelpCenterProvider {
    private static final String EMPTY_JSON_BODY = "{}";
    private static final String LOG_TAG = "ZendeskHelpCenterProvider";
    private final SupportBlipsProvider blipsProvider;
    private final ZendeskHelpCenterService helpCenterService;
    private final HelpCenterSessionCache helpCenterSessionCache;
    private final SupportSettingsProvider settingsProvider;
    private final ZendeskTracker zendeskTracker;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskHelpCenterProvider(SupportSettingsProvider supportSettingsProvider, SupportBlipsProvider supportBlipsProvider, ZendeskHelpCenterService zendeskHelpCenterService, HelpCenterSessionCache helpCenterSessionCache, ZendeskTracker zendeskTracker) {
        this.settingsProvider = supportSettingsProvider;
        this.blipsProvider = supportBlipsProvider;
        this.helpCenterService = zendeskHelpCenterService;
        this.helpCenterSessionCache = helpCenterSessionCache;
        this.zendeskTracker = zendeskTracker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkSettingsAndVotingEnabled(ZendeskCallback<?> zendeskCallback, SupportSdkSettings supportSdkSettings) {
        if (sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
            return false;
        }
        if (supportSdkSettings.isHelpCenterArticleVotingEnabled()) {
            return true;
        }
        Logger.m295e(LOG_TAG, "Help Center voting is disabled in your app's settings. Can not continue with the call", new Object[0]);
        if (zendeskCallback == null) {
            return false;
        }
        zendeskCallback.onError(new ErrorResponseAdapter("Help Center voting is disabled in your app's settings. Can not continue with the call"));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<HelpItem> convert(HelpResponse helpResponse) {
        if (helpResponse == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (CategoryItem categoryItem : helpResponse.getCategories()) {
            arrayList.add(categoryItem);
            for (SectionItem sectionItem : categoryItem.getSections()) {
                arrayList.add(sectionItem);
                arrayList.addAll(sectionItem.getChildren());
            }
        }
        return arrayList;
    }

    @SuppressLint({"UseSparseArrays"})
    List<FlatArticle> asFlatArticleList(ArticlesResponse articlesResponse) {
        List<FlatArticle> list;
        if (articlesResponse == null) {
            return new ArrayList();
        }
        List<Category> categories = articlesResponse.getCategories();
        List<Section> sections = articlesResponse.getSections();
        List<Article> articles = articlesResponse.getArticles();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.isNotEmpty(articles)) {
            for (Category category : categories) {
                hashMap.put(category.getId(), category);
            }
            for (Section section : sections) {
                hashMap2.put(section.getId(), section);
            }
            Iterator<Article> it = articles.iterator();
            while (true) {
                list = arrayList;
                if (!it.hasNext()) {
                    break;
                }
                Article next = it.next();
                Section section2 = (Section) hashMap2.get(next.getSectionId());
                arrayList.add(new FlatArticle((Category) hashMap.get(section2.getCategoryId()), section2, next));
            }
        } else {
            Logger.m298d(LOG_TAG, "There are no articles contained in this account", new Object[0]);
            list = Collections.emptyList();
        }
        Collections.sort(list);
        return list;
    }

    @SuppressLint({"UseSparseArrays"})
    List<SearchArticle> asSearchArticleList(ArticlesResponse articlesResponse) {
        Section section;
        ArrayList arrayList = new ArrayList();
        if (articlesResponse == null) {
            return arrayList;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        List<Article> ensureEmpty = CollectionUtils.ensureEmpty(articlesResponse.getArticles());
        List<Section> ensureEmpty2 = CollectionUtils.ensureEmpty(articlesResponse.getSections());
        List<Category> ensureEmpty3 = CollectionUtils.ensureEmpty(articlesResponse.getCategories());
        List<User> ensureEmpty4 = CollectionUtils.ensureEmpty(articlesResponse.getUsers());
        for (Section section2 : ensureEmpty2) {
            if (section2.getId() != null) {
                hashMap.put(section2.getId(), section2);
            }
        }
        for (Category category : ensureEmpty3) {
            if (category.getId() != null) {
                hashMap2.put(category.getId(), category);
            }
        }
        for (User user : ensureEmpty4) {
            if (user.getId() != null) {
                hashMap3.put(user.getId(), user);
            }
        }
        for (Article article : ensureEmpty) {
            Category category2 = null;
            if (article.getSectionId() != null) {
                section = (Section) hashMap.get(article.getSectionId());
            } else {
                Logger.m289w(LOG_TAG, "Unable to determine section as section id was null.", new Object[0]);
                section = null;
            }
            if (section == null || section.getCategoryId() == null) {
                Logger.m289w(LOG_TAG, "Unable to determine category as section was null.", new Object[0]);
            } else {
                category2 = (Category) hashMap2.get(section.getCategoryId());
            }
            if (article.getAuthorId() != null) {
                article.setAuthor((User) hashMap3.get(article.getAuthorId()));
            } else {
                Logger.m289w(LOG_TAG, "Unable to determine author as author id was null.", new Object[0]);
            }
            arrayList.add(new SearchArticle(article, section, category2));
        }
        return arrayList;
    }

    @Override // zendesk.support.HelpCenterProvider
    public void deleteVote(@NonNull final Long l, @Nullable final ZendeskCallback<Void> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.14
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (ZendeskHelpCenterProvider.this.checkSettingsAndVotingEnabled(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.deleteVote(l, new ZendeskCallbackSuccess<Void>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.14.1
                            public void onSuccess(Void r4) {
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(r4);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void downvoteArticle(@NonNull final Long l, @Nullable final ZendeskCallback<ArticleVote> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.13
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (ZendeskHelpCenterProvider.this.checkSettingsAndVotingEnabled(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.downvoteArticle(l, ZendeskHelpCenterProvider.EMPTY_JSON_BODY, new ZendeskCallbackSuccess<ArticleVoteResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.13.1
                            public void onSuccess(ArticleVoteResponse articleVoteResponse) {
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(articleVoteResponse.getVote());
                                }
                                ZendeskHelpCenterProvider.this.blipsProvider.articleVote(l, -1);
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getArticle(@NonNull final Long l, @Nullable final ZendeskCallback<Article> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.8
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getArticle(l, ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), "users", new ZendeskCallbackSuccess<Article>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.8.1
                            public void onSuccess(Article article) {
                                ZendeskHelpCenterProvider.this.submitRecordArticleView(article, LocaleUtil.forLanguageTag(article.getLocale()), new ZendeskCallback<Void>() { // from class: zendesk.support.ZendeskHelpCenterProvider.8.1.1
                                    @Override // com.zendesk.service.ZendeskCallback
                                    public void onError(ErrorResponse errorResponse) {
                                        Logger.m295e(ZendeskHelpCenterProvider.LOG_TAG, "Error submitting Help Center reporting: [reason] %s [isNetworkError] %s [status] %d", errorResponse.getReason(), Boolean.valueOf(errorResponse.isNetworkError()), Integer.valueOf(errorResponse.getStatus()));
                                    }

                                    public void onSuccess(Void r2) {
                                    }
                                });
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(article);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getArticles(@NonNull Long l, @Nullable ZendeskCallback<List<Article>> zendeskCallback) {
        getArticles(l, null, zendeskCallback);
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getArticles(@NonNull final Long l, @Nullable final String str, @Nullable final ZendeskCallback<List<Article>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.4
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getArticlesForSection(l, ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), "users", str, zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getAttachments(@NonNull final Long l, @NonNull final AttachmentType attachmentType, @Nullable final ZendeskCallback<List<HelpCenterAttachment>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l, attachmentType)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.11
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getAttachments(ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), l, attachmentType, zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getCategories(@Nullable final ZendeskCallback<List<Category>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, new Object[0])) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.2
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getCategories(ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getCategory(@NonNull final Long l, @Nullable final ZendeskCallback<Category> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.10
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getCategoryById(l, ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getHelp(@NonNull final HelpRequest helpRequest, @Nullable final ZendeskCallback<List<HelpItem>> zendeskCallback) {
        this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.1
            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                    ZendeskHelpCenterProvider.this.helpCenterService.getHelp(ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), helpRequest.getCategoryIds(), helpRequest.getSectionIds(), helpRequest.getIncludes(), helpRequest.getArticlesPerPageLimit(), StringUtils.toCsvString(helpRequest.getLabelNames()), new ZendeskCallbackSuccess<HelpResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.1.1
                        public void onSuccess(HelpResponse helpResponse) {
                            ZendeskHelpCenterProvider.this.zendeskTracker.helpCenterLoaded();
                            if (zendeskCallback != null) {
                                zendeskCallback.onSuccess(ZendeskHelpCenterProvider.this.convert(helpResponse));
                            }
                        }
                    });
                }
            }
        });
    }

    Locale getLocale(SupportSdkSettings supportSdkSettings) {
        if (Support.INSTANCE.getHelpCenterLocaleOverride() != null) {
            return Support.INSTANCE.getHelpCenterLocaleOverride();
        }
        String helpCenterLocale = supportSdkSettings != null ? supportSdkSettings.getHelpCenterLocale() : "";
        return StringUtils.isEmpty(helpCenterLocale) ? Locale.getDefault() : LocaleUtil.forLanguageTag(helpCenterLocale);
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getSection(@NonNull final Long l, @Nullable final ZendeskCallback<Section> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.9
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getSectionById(l, ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getSections(@Nullable final Long l, @Nullable final ZendeskCallback<List<Section>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.3
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getSectionsForCategory(l, ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings), zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void getSuggestedArticles(@NonNull final SuggestedArticleSearch suggestedArticleSearch, @Nullable final ZendeskCallback<SuggestedArticleResponse> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, suggestedArticleSearch)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.15
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.getSuggestedArticles(suggestedArticleSearch.getQuery(), suggestedArticleSearch.getLocale() == null ? ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings) : suggestedArticleSearch.getLocale(), StringUtils.isEmpty(suggestedArticleSearch.getLabelNames()) ? null : StringUtils.toCsvString(suggestedArticleSearch.getLabelNames()), suggestedArticleSearch.getCategoryId(), suggestedArticleSearch.getSectionId(), zendeskCallback);
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void listArticles(@NonNull final ListArticleQuery listArticleQuery, @Nullable final ZendeskCallback<List<SearchArticle>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, listArticleQuery)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.5
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        String csvString = listArticleQuery.getInclude() == null ? StringUtils.toCsvString("categories", "sections", "users") : listArticleQuery.getInclude();
                        ZendeskHelpCenterProvider.this.helpCenterService.listArticles(StringUtils.toCsvString(listArticleQuery.getLabelNames()), listArticleQuery.getLocale() == null ? ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings) : listArticleQuery.getLocale(), csvString, (listArticleQuery.getSortBy() == null ? SortBy.CREATED_AT : listArticleQuery.getSortBy()).getApiValue(), (listArticleQuery.getSortOrder() == null ? SortOrder.DESCENDING : listArticleQuery.getSortOrder()).getApiValue(), listArticleQuery.getPage(), listArticleQuery.getResultsPerPage(), new ZendeskCallbackSuccess<ArticlesListResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.5.1
                            public void onSuccess(ArticlesListResponse articlesListResponse) {
                                List<SearchArticle> asSearchArticleList = ZendeskHelpCenterProvider.this.asSearchArticleList(articlesListResponse);
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(asSearchArticleList);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void listArticlesFlat(@NonNull final ListArticleQuery listArticleQuery, @Nullable final ZendeskCallback<List<FlatArticle>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, listArticleQuery)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.6
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.listArticles(StringUtils.toCsvString(listArticleQuery.getLabelNames()), listArticleQuery.getLocale() == null ? ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings) : listArticleQuery.getLocale(), "categories,sections", (listArticleQuery.getSortBy() == null ? SortBy.CREATED_AT : listArticleQuery.getSortBy()).getApiValue(), (listArticleQuery.getSortOrder() == null ? SortOrder.DESCENDING : listArticleQuery.getSortOrder()).getApiValue(), listArticleQuery.getPage(), listArticleQuery.getResultsPerPage(), new ZendeskCallbackSuccess<ArticlesListResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.6.1
                            public void onSuccess(ArticlesListResponse articlesListResponse) {
                                List<FlatArticle> asFlatArticleList = ZendeskHelpCenterProvider.this.asFlatArticleList(articlesListResponse);
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(asFlatArticleList);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    boolean sanityCheck(ZendeskCallback<?> zendeskCallback, Object... objArr) {
        if (objArr == null) {
            return false;
        }
        boolean z = true;
        for (Object obj : objArr) {
            if (obj == null) {
                z = false;
            }
        }
        if (z) {
            return false;
        }
        Logger.m295e(LOG_TAG, "One or more provided parameters are null.", new Object[0]);
        if (zendeskCallback == null) {
            return true;
        }
        zendeskCallback.onError(new ErrorResponseAdapter("One or more provided parameters are null."));
        return true;
    }

    boolean sanityCheckHelpCenterSettings(ZendeskCallback<?> zendeskCallback, SupportSdkSettings supportSdkSettings) {
        if (!supportSdkSettings.hasHelpCenterSettings()) {
            Logger.m295e(LOG_TAG, "Help Center settings are null. Can not continue with the call", new Object[0]);
            if (zendeskCallback == null) {
                return true;
            }
            zendeskCallback.onError(new ErrorResponseAdapter("Help Center settings are null. Can not continue with the call"));
            return true;
        } else if (supportSdkSettings.isHelpCenterEnabled()) {
            return false;
        } else {
            Logger.m295e(LOG_TAG, "Help Center is disabled in your app's settings. Can not continue with the call", new Object[0]);
            if (zendeskCallback == null) {
                return true;
            }
            zendeskCallback.onError(new ErrorResponseAdapter("Help Center is disabled in your app's settings. Can not continue with the call"));
            return true;
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void searchArticles(@NonNull final HelpCenterSearch helpCenterSearch, @Nullable final ZendeskCallback<List<SearchArticle>> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, helpCenterSearch)) {
            this.blipsProvider.helpCenterSearch(helpCenterSearch.getQuery());
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.7
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.searchArticles(helpCenterSearch.getQuery(), helpCenterSearch.getLocale() == null ? ZendeskHelpCenterProvider.this.getLocale(supportSdkSettings) : helpCenterSearch.getLocale(), StringUtils.isEmpty(helpCenterSearch.getInclude()) ? StringUtils.toCsvString("categories", "sections", "users") : StringUtils.toCsvString(helpCenterSearch.getInclude()), StringUtils.isEmpty(helpCenterSearch.getLabelNames()) ? null : StringUtils.toCsvString(helpCenterSearch.getLabelNames()), helpCenterSearch.getCategoryIds(), helpCenterSearch.getSectionIds(), helpCenterSearch.getPage(), helpCenterSearch.getPerPage(), new ZendeskCallbackSuccess<ArticlesSearchResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.7.1
                            public void onSuccess(ArticlesSearchResponse articlesSearchResponse) {
                                ZendeskHelpCenterProvider.this.zendeskTracker.helpCenterSearched(helpCenterSearch.getQuery());
                                ZendeskHelpCenterProvider.this.helpCenterSessionCache.setLastSearch(helpCenterSearch.getQuery(), (articlesSearchResponse == null || !CollectionUtils.isNotEmpty(articlesSearchResponse.getArticles())) ? 0 : articlesSearchResponse.getArticles().size());
                                List<SearchArticle> asSearchArticleList = ZendeskHelpCenterProvider.this.asSearchArticleList(articlesSearchResponse);
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(asSearchArticleList);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void submitRecordArticleView(@NonNull final Article article, @NonNull final Locale locale, @Nullable final ZendeskCallback<Void> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, article)) {
            this.zendeskTracker.helpCenterArticleViewed();
            this.blipsProvider.articleView(article);
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.16
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (!ZendeskHelpCenterProvider.this.sanityCheckHelpCenterSettings(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.submitRecordArticleView(article.getId(), locale, new RecordArticleViewRequest(ZendeskHelpCenterProvider.this.helpCenterSessionCache.getLastSearch(), ZendeskHelpCenterProvider.this.helpCenterSessionCache.isUniqueSearchResultClick()), new ZendeskCallbackSuccess<Void>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.16.1
                            public void onSuccess(Void r4) {
                                ZendeskHelpCenterProvider.this.helpCenterSessionCache.unsetUniqueSearchResultClick();
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(r4);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // zendesk.support.HelpCenterProvider
    public void upvoteArticle(@NonNull final Long l, @Nullable final ZendeskCallback<ArticleVote> zendeskCallback) {
        if (!sanityCheck(zendeskCallback, l)) {
            this.settingsProvider.getSettings(new ZendeskCallbackSuccess<SupportSdkSettings>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.12
                public void onSuccess(SupportSdkSettings supportSdkSettings) {
                    if (ZendeskHelpCenterProvider.this.checkSettingsAndVotingEnabled(zendeskCallback, supportSdkSettings)) {
                        ZendeskHelpCenterProvider.this.helpCenterService.upvoteArticle(l, ZendeskHelpCenterProvider.EMPTY_JSON_BODY, new ZendeskCallbackSuccess<ArticleVoteResponse>(zendeskCallback) { // from class: zendesk.support.ZendeskHelpCenterProvider.12.1
                            public void onSuccess(ArticleVoteResponse articleVoteResponse) {
                                if (zendeskCallback != null) {
                                    zendeskCallback.onSuccess(articleVoteResponse.getVote());
                                }
                                ZendeskHelpCenterProvider.this.blipsProvider.articleVote(l, 1);
                            }
                        });
                    }
                }
            });
        }
    }
}
