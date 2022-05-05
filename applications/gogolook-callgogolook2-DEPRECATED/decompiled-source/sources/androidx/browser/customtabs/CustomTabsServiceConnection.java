package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import p065f.p066a.p067a.AbstractC4235b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsServiceConnection.class */
public abstract class CustomTabsServiceConnection implements ServiceConnection {
    public abstract void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        onCustomTabsServiceConnected(componentName, new CustomTabsClient(AbstractC4235b.AbstractBinderC4236a.asInterface(iBinder), componentName) { // from class: androidx.browser.customtabs.CustomTabsServiceConnection.1
        });
    }
}
