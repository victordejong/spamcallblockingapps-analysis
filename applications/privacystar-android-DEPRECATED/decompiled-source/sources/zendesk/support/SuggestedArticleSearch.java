package zendesk.support;

import com.zendesk.util.StringUtils;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SuggestedArticleSearch.class */
public class SuggestedArticleSearch {
    private Long mCategoryId;
    private String mLabelNames;
    private Locale mLocale;
    private String mQuery;
    private Long mSectionId;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/SuggestedArticleSearch$Builder.class */
    public static class Builder {
        private Long mCategoryId;
        private String[] mLabelNames;
        private Locale mLocale;
        private String mQuery;
        private Long mSectionId;

        public SuggestedArticleSearch build() {
            SuggestedArticleSearch suggestedArticleSearch = new SuggestedArticleSearch();
            suggestedArticleSearch.mQuery = this.mQuery;
            suggestedArticleSearch.mLocale = this.mLocale;
            suggestedArticleSearch.mLabelNames = StringUtils.toCsvString(this.mLabelNames);
            suggestedArticleSearch.mCategoryId = this.mCategoryId;
            suggestedArticleSearch.mSectionId = this.mSectionId;
            return suggestedArticleSearch;
        }

        public Builder forLocale(Locale locale) {
            this.mLocale = locale;
            return this;
        }

        public Builder withCategoryId(Long l) {
            this.mCategoryId = l;
            return this;
        }

        public Builder withLabelNames(String... strArr) {
            this.mLabelNames = strArr;
            return this;
        }

        public Builder withQuery(String str) {
            this.mQuery = str;
            return this;
        }

        public Builder withSectionId(Long l) {
            this.mSectionId = l;
            return this;
        }
    }

    private SuggestedArticleSearch() {
    }

    public Long getCategoryId() {
        return this.mCategoryId;
    }

    public String getLabelNames() {
        return this.mLabelNames;
    }

    public Locale getLocale() {
        return this.mLocale;
    }

    public String getQuery() {
        return this.mQuery;
    }

    public Long getSectionId() {
        return this.mSectionId;
    }
}
