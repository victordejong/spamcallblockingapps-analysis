package android.support.p003v4.media.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.KeyEvent;
/* renamed from: android.support.v4.media.session.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b.class */
public interface AbstractC0059b extends IInterface {

    /* renamed from: android.support.v4.media.session.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a.class */
    public static abstract class AbstractBinderC0060a extends Binder implements AbstractC0059b {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.b$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a$a.class */
        public static class C0061a implements AbstractC0059b {

            /* renamed from: d */
            private IBinder f128d;

            C0061a(IBinder iBinder) {
                this.f128d = iBinder;
            }

            @Override // android.support.p003v4.media.session.AbstractC0059b
            /* renamed from: W0 */
            public void mo35806W0(AbstractC0057a abstractC0057a) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC0057a != null ? abstractC0057a.asBinder() : null);
                    this.f128d.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f128d;
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p003v4.media.session.AbstractC0059b
            /* renamed from: w3 */
            public boolean mo35805w3(KeyEvent keyEvent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = true;
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f128d.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }

        /* renamed from: c0 */
        public static AbstractC0059b m35807c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0059b)) ? new C0061a(iBinder) : (AbstractC0059b) queryLocalInterface;
        }
    }

    /* renamed from: W0 */
    void mo35806W0(AbstractC0057a abstractC0057a);

    /* renamed from: w3 */
    boolean mo35805w3(KeyEvent keyEvent);
}
