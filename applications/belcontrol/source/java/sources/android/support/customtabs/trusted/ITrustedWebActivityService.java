package android.support.customtabs.trusted;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:android/support/customtabs/trusted/ITrustedWebActivityService.class */
public interface ITrustedWebActivityService extends IInterface {
    Bundle areNotificationsEnabled(Bundle bundle);

    void cancelNotification(Bundle bundle);

    Bundle extraCommand(String str, Bundle bundle, IBinder iBinder);

    Bundle getActiveNotifications();

    Bundle getSmallIconBitmap();

    int getSmallIconId();

    Bundle notifyNotificationWithChannel(Bundle bundle);
}
