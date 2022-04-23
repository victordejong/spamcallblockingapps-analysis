package zendesk.support;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.List;
import java.util.Map;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.support.ViewArticleDeepLinkParser;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskDeepLinkHelper.class */
public class ZendeskDeepLinkHelper {
    private final ZendeskDeepLinkParser parser;
    private final ActionHandlerRegistry registry;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskDeepLinkHelper(@NonNull ActionHandlerRegistry actionHandlerRegistry, @NonNull ZendeskDeepLinkParser zendeskDeepLinkParser) {
        this.registry = actionHandlerRegistry;
        this.parser = zendeskDeepLinkParser;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deepLinkToRequest(Intent intent, @NonNull Context context, List<Intent> list) {
        ActionHandler handlerByAction = this.registry.handlerByAction("request_view_conversation");
        if (handlerByAction != null) {
            handlerByAction.handle(DeepLinkToRequestActionHandler.data(intent, list), context);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public boolean launch(@Nullable String str, @Nullable UiConfig uiConfig, @NonNull Context context) {
        ActionHandler handlerByAction;
        ViewArticleDeepLinkParser.ActionPayload parse = this.parser.parse(str);
        if (!parse.isValid() || (handlerByAction = this.registry.handlerByAction(parse.getAction())) == null) {
            return false;
        }
        Map<String, Object> payload = parse.getPayload();
        UiConfigUtil.addToMap(payload, uiConfig);
        handlerByAction.handle(payload, context);
        return true;
    }
}
