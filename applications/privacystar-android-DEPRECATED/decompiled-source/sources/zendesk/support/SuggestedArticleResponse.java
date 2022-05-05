package zendesk.support;

import com.zendesk.util.CollectionUtils;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SuggestedArticleResponse.class */
public class SuggestedArticleResponse {
    private List<SimpleArticle> results;

    public List<SimpleArticle> getResults() {
        return CollectionUtils.copyOf(this.results);
    }
}
