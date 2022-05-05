package zendesk.support;

import android.support.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportBlipsProvider.class */
public interface SupportBlipsProvider {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:zendesk/support/SupportBlipsProvider$ArticleVote.class */
    public @interface ArticleVote {
        public static final int ARTICLE_VOTE_DOWN = -1;
        public static final int ARTICLE_VOTE_UP = 1;
    }

    void articleView(@NonNull Article article);

    void articleVote(Long l, int i);

    void helpCenterSearch(@NonNull String str);

    void requestCreated(String str);

    void requestListViewed();

    void requestUpdated(String str);

    void requestViewed(String str);

    void supportSdkInit();
}
