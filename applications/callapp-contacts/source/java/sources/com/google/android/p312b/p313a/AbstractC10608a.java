package com.google.android.p312b.p313a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.p311a.BinderC10606b;
import com.google.android.p311a.C10605a;
import com.google.android.p311a.C10607c;
/* renamed from: com.google.android.b.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/b/a/a.class */
public interface AbstractC10608a extends IInterface {

    /* renamed from: com.google.android.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/b/a/a$a.class */
    public static abstract class AbstractBinderC10609a extends BinderC10606b implements AbstractC10608a {

        /* renamed from: com.google.android.b.a.a$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/b/a/a$a$a.class */
        public static final class C10610a extends C10605a implements AbstractC10608a {
            C10610a(IBinder iBinder) {
                super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            }

            @Override // com.google.android.p312b.p313a.AbstractC10608a
            /* renamed from: a */
            public final Bundle mo22615a(Bundle bundle) throws RemoteException {
                Parcel m22620a = m22620a();
                C10607c.m22617a(m22620a, bundle);
                Parcel m22619a = m22619a(m22620a);
                Bundle bundle2 = (Bundle) C10607c.m22618a(m22619a, Bundle.CREATOR);
                m22619a.recycle();
                return bundle2;
            }
        }

        public AbstractBinderC10609a() {
            super("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        }

        /* renamed from: a */
        public static AbstractC10608a m22616a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return queryLocalInterface instanceof AbstractC10608a ? (AbstractC10608a) queryLocalInterface : new C10610a(iBinder);
        }
    }

    /* renamed from: a */
    Bundle mo22615a(Bundle bundle) throws RemoteException;
}
