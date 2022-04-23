package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p081h.p451q.p455d.C10862d;
import zendesk.core.BlipsGroup;
import zendesk.core.BlipsProvider;
import zendesk.core.UserAction;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskSupportBlipsProvider.class */
public class ZendeskSupportBlipsProvider implements SupportBlipsProvider {
    public BlipsProvider blipsProvider;

    public ZendeskSupportBlipsProvider(BlipsProvider blipsProvider, Locale locale) {
        this.blipsProvider = blipsProvider;
    }

    @Override // zendesk.support.SupportBlipsProvider
    public void requestCreated(String str) {
        if (!C10862d.m10389c(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("requestId", str);
            sendUserAction(BlipsGroup.BEHAVIOURAL, "requestCreated", hashMap);
        }
    }

    public final void sendUserAction(@NonNull BlipsGroup blipsGroup, @NonNull String str, @Nullable String str2, @Nullable Map<String, Object> map) {
        this.blipsProvider.sendBlip(new UserAction("3.0.2", "support_sdk", "SupportSDK", str, str2, map), blipsGroup);
    }

    public final void sendUserAction(BlipsGroup blipsGroup, String str, Map<String, Object> map) {
        sendUserAction(blipsGroup, str, null, map);
    }
}
