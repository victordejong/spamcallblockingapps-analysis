package android.support.customtabs;

import android.os.Bundle;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:android/support/customtabs/IPostMessageService.class */
public interface IPostMessageService extends IInterface {
    void onMessageChannelReady(ICustomTabsCallback iCustomTabsCallback, Bundle bundle);

    void onPostMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle);
}
