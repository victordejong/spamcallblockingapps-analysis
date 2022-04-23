package zendesk.support;

import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSettingsProvider.class */
public interface SupportSettingsProvider {
    void getSettings(@Nullable ZendeskCallback<SupportSdkSettings> zendeskCallback);
}
