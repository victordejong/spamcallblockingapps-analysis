package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SettingsProvider.class */
public interface SettingsProvider {
    void getCoreSettings(@Nullable ZendeskCallback<CoreSettings> zendeskCallback);

    <E extends Settings> void getSettingsForSdk(@NonNull String str, @NonNull Class<E> cls, @Nullable ZendeskCallback<SettingsPack<E>> zendeskCallback);
}
