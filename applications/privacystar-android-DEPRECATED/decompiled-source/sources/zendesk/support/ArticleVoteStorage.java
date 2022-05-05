package zendesk.support;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ArticleVoteStorage.class */
public interface ArticleVoteStorage {
    ArticleVote getStoredArticleVote(Long l);

    void removeStoredArticleVote(Long l);

    void storeArticleVote(Long l, ArticleVote articleVote);
}
