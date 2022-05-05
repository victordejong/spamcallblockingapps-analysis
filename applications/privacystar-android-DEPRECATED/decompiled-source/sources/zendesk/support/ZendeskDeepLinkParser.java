package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.List;
import okhttp3.HttpUrl;
import zendesk.support.ViewArticleDeepLinkParser;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskDeepLinkParser.class */
public class ZendeskDeepLinkParser {
    private final List<Module> modules;
    private final String zendeskHost;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskDeepLinkParser$Module.class */
    public interface Module {
        @NonNull
        ViewArticleDeepLinkParser.ActionPayload parse(@NonNull HttpUrl httpUrl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskDeepLinkParser(@NonNull String str, List<Module> list) {
        HttpUrl parse = HttpUrl.parse(str);
        this.zendeskHost = parse != null ? parse.host() : null;
        this.modules = CollectionUtils.ensureEmpty(list);
    }

    @NonNull
    public ViewArticleDeepLinkParser.ActionPayload parse(@Nullable String str) {
        if (!StringUtils.hasLengthMany(this.zendeskHost, str)) {
            return ViewArticleDeepLinkParser.ActionPayload.invalid();
        }
        HttpUrl parse = HttpUrl.parse(str);
        if (parse == null || !parse.host().equals(this.zendeskHost)) {
            return ViewArticleDeepLinkParser.ActionPayload.invalid();
        }
        for (Module module : this.modules) {
            ViewArticleDeepLinkParser.ActionPayload parse2 = module.parse(parse);
            if (parse2.isValid()) {
                return parse2;
            }
        }
        return ViewArticleDeepLinkParser.ActionPayload.invalid();
    }
}
