package p081h.p203i.p204a.p221c.p222a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p205a.AbstractBinderC6490b;
import p081h.p203i.p204a.p205a.AbstractC6489a;
import p081h.p203i.p204a.p205a.C6491c;
/* renamed from: h.i.a.c.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/c/a/a.class */
public interface AbstractC6700a extends IInterface {

    /* renamed from: h.i.a.c.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/c/a/a$a.class */
    public static abstract class AbstractBinderC6701a extends AbstractBinderC6490b implements AbstractC6700a {

        /* renamed from: h.i.a.c.a.a$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/c/a/a$a$a.class */
        public static class C6702a extends AbstractC6489a implements AbstractC6700a {
            public C6702a(IBinder iBinder) {
                super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            }

            @Override // p081h.p203i.p204a.p221c.p222a.AbstractC6700a
            /* renamed from: e */
            public Bundle mo22061e(Bundle bundle) throws RemoteException {
                Parcel G0 = m22472G0();
                C6491c.m22469a(G0, bundle);
                Parcel a = m22471a(1, G0);
                Bundle bundle2 = (Bundle) C6491c.m22470a(a, Bundle.CREATOR);
                a.recycle();
                return bundle2;
            }
        }

        /* renamed from: a */
        public static AbstractC6700a m22062a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return queryLocalInterface instanceof AbstractC6700a ? (AbstractC6700a) queryLocalInterface : new C6702a(iBinder);
        }
    }

    /* renamed from: e */
    Bundle mo22061e(Bundle bundle) throws RemoteException;
}
