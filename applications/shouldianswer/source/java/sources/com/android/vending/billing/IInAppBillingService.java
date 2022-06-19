package com.android.vending.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/vending/billing/IInAppBillingService.class */
public interface IInAppBillingService extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/android/vending/billing/IInAppBillingService$Stub.class */
    public static abstract class Stub extends Binder implements IInAppBillingService {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/android/vending/billing/IInAppBillingService$Stub$Proxy.class */
        public static class Proxy implements IInAppBillingService {

            /* renamed from: a */
            private IBinder f3761a;

            Proxy(IBinder iBinder) {
                this.f3761a = iBinder;
            }

            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public int mo3854a(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f3761a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public Bundle mo3853a(int i, String str, String str2, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3761a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public Bundle mo3852a(int i, String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f3761a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public Bundle mo3851a(int i, String str, String str2, String str3, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3761a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public Bundle mo3850a(int i, String str, String str2, String str3, String str4) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.f3761a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public Bundle mo3849a(int i, String str, String str2, String str3, String str4, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3761a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: a */
            public Bundle mo3848a(int i, String str, List<String> list, String str2, String str3, String str4) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStringList(list);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.f3761a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3761a;
            }

            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: b */
            public int mo3847b(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f3761a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: b */
            public int mo3846b(int i, String str, String str2, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3761a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: b */
            public Bundle mo3845b(int i, String str, String str2, String str3, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f3761a.transact(801, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            /* renamed from: c */
            public int mo3844c(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f3761a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.android.vending.billing.IInAppBillingService");
        }

        /* renamed from: a */
        public static IInAppBillingService m3855a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IInAppBillingService)) ? new Proxy(iBinder) : (IInAppBillingService) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            if (i == 801) {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                Bundle b = mo3845b(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (b == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                b.writeToParcel(parcel2, 1);
                return true;
            } else if (i == 1598968902) {
                parcel2.writeString("com.android.vending.billing.IInAppBillingService");
                return true;
            } else {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        int a = mo3854a(parcel.readInt(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(a);
                        return true;
                    case 2:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        int readInt = parcel.readInt();
                        String readString = parcel.readString();
                        String readString2 = parcel.readString();
                        Bundle bundle2 = null;
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle a2 = mo3853a(readInt, readString, readString2, bundle2);
                        parcel2.writeNoException();
                        if (a2 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a2.writeToParcel(parcel2, 1);
                        return true;
                    case 3:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a3 = mo3850a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (a3 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a3.writeToParcel(parcel2, 1);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a4 = mo3852a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (a4 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a4.writeToParcel(parcel2, 1);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        int b2 = mo3847b(parcel.readInt(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(b2);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        int c = mo3844c(parcel.readInt(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(c);
                        return true;
                    case 7:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a5 = mo3848a(parcel.readInt(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        if (a5 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a5.writeToParcel(parcel2, 1);
                        return true;
                    case 8:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a6 = mo3849a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (a6 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a6.writeToParcel(parcel2, 1);
                        return true;
                    case 9:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        Bundle a7 = mo3851a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (a7 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        a7.writeToParcel(parcel2, 1);
                        return true;
                    case 10:
                        parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                        int readInt2 = parcel.readInt();
                        String readString3 = parcel.readString();
                        String readString4 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int b3 = mo3846b(readInt2, readString3, readString4, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(b3);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
        }
    }

    /* renamed from: a */
    int mo3854a(int i, String str, String str2);

    /* renamed from: a */
    Bundle mo3853a(int i, String str, String str2, Bundle bundle);

    /* renamed from: a */
    Bundle mo3852a(int i, String str, String str2, String str3);

    /* renamed from: a */
    Bundle mo3851a(int i, String str, String str2, String str3, Bundle bundle);

    /* renamed from: a */
    Bundle mo3850a(int i, String str, String str2, String str3, String str4);

    /* renamed from: a */
    Bundle mo3849a(int i, String str, String str2, String str3, String str4, Bundle bundle);

    /* renamed from: a */
    Bundle mo3848a(int i, String str, List<String> list, String str2, String str3, String str4);

    /* renamed from: b */
    int mo3847b(int i, String str, String str2);

    /* renamed from: b */
    int mo3846b(int i, String str, String str2, Bundle bundle);

    /* renamed from: b */
    Bundle mo3845b(int i, String str, String str2, String str3, Bundle bundle);

    /* renamed from: c */
    int mo3844c(int i, String str, String str2);
}
