package android.support.p003v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: android.support.v4.app.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/a.class */
public interface AbstractC0008a extends IInterface {

    /* renamed from: android.support.v4.app.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/a$a.class */
    public static abstract class AbstractBinderC0009a extends Binder implements AbstractC0008a {
        public AbstractBinderC0009a() {
            attachInterface(this, "android.support.v4.app.INotificationSideChannel");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                mo33479d6(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                mo33481P3(parcel.readString(), parcel.readInt(), parcel.readString());
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                mo33480W1(parcel.readString());
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.v4.app.INotificationSideChannel");
                return true;
            }
        }
    }

    /* renamed from: P3 */
    void mo33481P3(String str, int i, String str2);

    /* renamed from: W1 */
    void mo33480W1(String str);

    /* renamed from: d6 */
    void mo33479d6(String str, int i, String str2, Notification notification);
}
