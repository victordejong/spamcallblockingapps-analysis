package android.support.customtabs;

import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:android/support/customtabs/ICustomTabsCallback.class */
public interface ICustomTabsCallback extends IInterface {
    void extraCallback(String str, Bundle bundle);

    Bundle extraCallbackWithResult(String str, Bundle bundle);

    void onMessageChannelReady(Bundle bundle);

    void onNavigationEvent(int i, Bundle bundle);

    void onPostMessage(String str, Bundle bundle);

    void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle);
}
