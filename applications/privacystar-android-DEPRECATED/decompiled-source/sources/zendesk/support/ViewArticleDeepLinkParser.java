package zendesk.support;

import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import zendesk.support.ZendeskDeepLinkParser;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ViewArticleDeepLinkParser.class */
class ViewArticleDeepLinkParser implements ZendeskDeepLinkParser.Module {
    private static final String HC_PATH_ELEMENT_ARTICLE = "articles";
    private static final String HC_PATH_ELEMENT_HC = "hc";
    private static final String HC_PATH_ELEMENT_NAME_SEPARATOR = "-";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/ViewArticleDeepLinkParser$ActionPayload.class */
    public static class ActionPayload {
        private final String action;
        private final Map<String, Object> payload;

        private ActionPayload(String str, Map<String, Object> map) {
            this.action = str;
            this.payload = map;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static ActionPayload invalid() {
            return new ActionPayload(null, null);
        }

        static ActionPayload invalid(String str) {
            return new ActionPayload(str, null);
        }

        static ActionPayload valid(String str, Map<String, Object> map) {
            return new ActionPayload(str, map);
        }

        public String getAction() {
            return this.action;
        }

        public Map<String, Object> getPayload() {
            return this.payload;
        }

        public boolean isValid() {
            return StringUtils.hasLength(this.action) && this.payload != null;
        }
    }

    @Override // zendesk.support.ZendeskDeepLinkParser.Module
    @NonNull
    public ActionPayload parse(@NonNull HttpUrl httpUrl) {
        List<String> pathSegments = httpUrl.pathSegments();
        if (pathSegments.size() < 4 && pathSegments.size() > 5) {
            return ActionPayload.invalid("help_center_view_article");
        }
        int indexOf = pathSegments.indexOf(HC_PATH_ELEMENT_ARTICLE);
        if (HC_PATH_ELEMENT_HC.equals(pathSegments.get(0))) {
            if (indexOf == 1 || indexOf == 2) {
                if (indexOf + 2 != pathSegments.size()) {
                    return ActionPayload.invalid("help_center_view_article");
                }
                String str = pathSegments.get(indexOf + 1);
                String[] split = str.split("-");
                if (CollectionUtils.isEmpty(split)) {
                    return ActionPayload.invalid("help_center_view_article");
                }
                try {
                    long parseLong = Long.parseLong(split[0]);
                    String str2 = "";
                    StringBuilder sb = new StringBuilder(str.length());
                    if (split.length > 1) {
                        int length = split.length;
                        for (int i = 1; i < length; i++) {
                            sb.append(split[i]);
                            sb.append(' ');
                        }
                        str2 = sb.toString().trim();
                    }
                    return ActionPayload.valid("help_center_view_article", ViewArticleActionHandler.data(Long.valueOf(parseLong).longValue(), str2));
                } catch (NumberFormatException e) {
                    return ActionPayload.invalid("help_center_view_article");
                }
            }
        }
        return ActionPayload.invalid("help_center_view_article");
    }
}
