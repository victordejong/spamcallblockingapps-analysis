package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.LocaleUtil;
import com.zendesk.util.StringUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import zendesk.core.BlipsGroup;
import zendesk.core.BlipsProvider;
import zendesk.core.PageView;
import zendesk.core.UserAction;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportBlipsProvider.class */
class ZendeskSupportBlipsProvider implements SupportBlipsProvider {
    private static final String BLIPS_FIELD_NAME_ARTICLE_ID = "articleId";
    private static final String BLIPS_FIELD_NAME_CODE = "code";
    private static final String BLIPS_FIELD_NAME_QUERY = "query";
    private static final String BLIPS_FIELD_NAME_REQUEST_ID = "requestId";
    private static final String BLIPS_FIELD_NAME_VOTE = "vote";
    private static final String BLIPS_FIELD_VALUE_CODE = "java";
    private static final String BLIPS_SUPPORT_ACTION_INIT = "init";
    private static final String BLIPS_SUPPORT_ACTION_REQUEST_CREATED = "requestCreated";
    private static final String BLIPS_SUPPORT_ACTION_REQUEST_LIST_VIEWED = "requestListViewed";
    private static final String BLIPS_SUPPORT_ACTION_REQUEST_UPDATED = "requestUpdated";
    private static final String BLIPS_SUPPORT_ACTION_REQUEST_VIEWED = "requestViewed";
    private static final String BLIPS_SUPPORT_ACTION_SEARCH = "search";
    private static final String BLIPS_SUPPORT_ACTION_VOTE = "articleVote";
    private static final String BLIPS_SUPPORT_CATEGORY = "SupportSDK";
    private static final String BLIPS_SUPPORT_CHANNEL = "support_sdk";
    private static final String BLIPS_SUPPORT_LABEL_HELP_CENTER = "helpCenterForm";
    private static final String BLIPS_SUPPORT_VERSION = "2.2.1";
    private BlipsProvider blipsProvider;
    private Locale locale;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskSupportBlipsProvider(BlipsProvider blipsProvider, Locale locale) {
        this.blipsProvider = blipsProvider;
        this.locale = locale;
    }

    private void sendUserAction(BlipsGroup blipsGroup, String str) {
        sendUserAction(blipsGroup, str, null, null);
    }

    private void sendUserAction(@NonNull BlipsGroup blipsGroup, @NonNull String str, @Nullable String str2, @Nullable Map<String, Object> map) {
        this.blipsProvider.sendBlip(new UserAction("2.2.1", BLIPS_SUPPORT_CHANNEL, BLIPS_SUPPORT_CATEGORY, str, str2, map), blipsGroup);
    }

    private void sendUserAction(BlipsGroup blipsGroup, String str, Map<String, Object> map) {
        sendUserAction(blipsGroup, str, null, map);
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void articleView(@NonNull Article article) {
        if (article != null) {
            String htmlUrl = article.getHtmlUrl();
            String title = article.getTitle();
            if (StringUtils.hasLengthMany(htmlUrl, title)) {
                HashMap hashMap = new HashMap();
                hashMap.put(BLIPS_FIELD_NAME_CODE, BLIPS_FIELD_VALUE_CODE);
                this.blipsProvider.sendBlip(new PageView("2.2.1", BLIPS_SUPPORT_CHANNEL, htmlUrl, LocaleUtil.toLanguageTag(this.locale), title, hashMap), BlipsGroup.PATHFINDER);
            }
        }
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void articleVote(Long l, int i) {
        if (l != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(BLIPS_FIELD_NAME_ARTICLE_ID, l);
            hashMap.put(BLIPS_FIELD_NAME_VOTE, Integer.valueOf(i));
            sendUserAction(BlipsGroup.BEHAVIOURAL, BLIPS_SUPPORT_ACTION_VOTE, hashMap);
        }
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void helpCenterSearch(@NonNull String str) {
        if (StringUtils.hasLength(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("query", str);
            hashMap.put(BLIPS_FIELD_NAME_CODE, BLIPS_FIELD_VALUE_CODE);
            sendUserAction(BlipsGroup.PATHFINDER, "search", BLIPS_SUPPORT_LABEL_HELP_CENTER, hashMap);
        }
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void requestCreated(String str) {
        if (!StringUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("requestId", str);
            sendUserAction(BlipsGroup.BEHAVIOURAL, BLIPS_SUPPORT_ACTION_REQUEST_CREATED, hashMap);
        }
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void requestListViewed() {
        sendUserAction(BlipsGroup.BEHAVIOURAL, BLIPS_SUPPORT_ACTION_REQUEST_LIST_VIEWED);
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void requestUpdated(String str) {
        if (!StringUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("requestId", str);
            sendUserAction(BlipsGroup.BEHAVIOURAL, BLIPS_SUPPORT_ACTION_REQUEST_UPDATED, hashMap);
        }
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void requestViewed(String str) {
        if (!StringUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("requestId", str);
            sendUserAction(BlipsGroup.BEHAVIOURAL, BLIPS_SUPPORT_ACTION_REQUEST_VIEWED, hashMap);
        }
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void supportSdkInit() {
        sendUserAction(BlipsGroup.REQUIRED, BLIPS_SUPPORT_ACTION_INIT);
    }
}
