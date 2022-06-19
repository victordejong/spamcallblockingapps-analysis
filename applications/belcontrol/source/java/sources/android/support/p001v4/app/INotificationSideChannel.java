package android.support.p001v4.app;

import android.app.Notification;
import android.os.IInterface;
/* renamed from: android.support.v4.app.INotificationSideChannel */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/INotificationSideChannel.class */
public interface INotificationSideChannel extends IInterface {
    void cancel(String str, int i, String str2);

    void cancelAll(String str);

    void notify(String str, int i, String str2, Notification notification);
}
