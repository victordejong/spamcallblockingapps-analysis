package p193e.p1577m.p1578a.p1639d.p1640a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import p193e.p1577m.p1578a.p1579a.BinderC23984b;
import p193e.p1577m.p1578a.p1579a.C23983a;
import p193e.p1577m.p1578a.p1579a.C23985c;
/* renamed from: e.m.a.d.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/d/a/a.class */
public interface AbstractC24868a extends IInterface {

    /* renamed from: e.m.a.d.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/d/a/a$a.class */
    public static abstract class AbstractBinderC24869a extends BinderC23984b implements AbstractC24868a {

        /* renamed from: a */
        public static final /* synthetic */ int f69753a = 0;

        /* renamed from: e.m.a.d.a.a$a$a */
        /* loaded from: classes2-dex2jar.jar:e/m/a/d/a/a$a$a.class */
        public static class C24870a extends C23983a implements AbstractC24868a {
            public C24870a(IBinder iBinder) {
                super(iBinder);
            }

            @Override // p193e.p1577m.p1578a.p1639d.p1640a.AbstractC24868a
            /* renamed from: l */
            public final Bundle mo4344l(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                int i = C23985c.f66461a;
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
                Parcel obtain2 = Parcel.obtain();
                try {
                    try {
                        this.f66460a.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        obtain.recycle();
                        Bundle bundle2 = (Bundle) (obtain2.readInt() == 0 ? null : (Parcelable) Bundle.CREATOR.createFromParcel(obtain2));
                        obtain2.recycle();
                        return bundle2;
                    } catch (RuntimeException e) {
                        obtain2.recycle();
                        throw e;
                    }
                } catch (Throwable th) {
                    obtain.recycle();
                    throw th;
                }
            }
        }
    }

    /* renamed from: l */
    Bundle mo4344l(Bundle bundle) throws RemoteException;
}
