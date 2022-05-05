package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushRegistrationProvider.class */
public interface PushRegistrationProvider {
    boolean isRegisteredForPush();

    void registerWithDeviceIdentifier(@NonNull String str, @Nullable ZendeskCallback<String> zendeskCallback);

    void registerWithUAChannelId(@NonNull String str, @Nullable ZendeskCallback<String> zendeskCallback);

    void unregisterDevice(@Nullable ZendeskCallback<Void> zendeskCallback);
}
