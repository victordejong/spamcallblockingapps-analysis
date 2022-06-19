package androidx.browser.customtabs;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageBackend.class */
public interface PostMessageBackend {
    void onDisconnectChannel(Context context);

    boolean onNotifyMessageChannelReady(Bundle bundle);

    boolean onPostMessage(String str, Bundle bundle);
}
