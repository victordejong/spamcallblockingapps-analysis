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
            private IBinder f4394a;

            Proxy(IBinder iBinder) {
                this.f4394a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4394a;
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int consumePurchase(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f4394a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.android.vending.billing.IInAppBillingService
            public Bundle getBuyIntent(int i, String str, String str2, String str3, String str4) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.f4394a.transact(3, obtain, obtain2, 0);
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
            public Bundle getBuyIntentExtraParams(int i, String str, String str2, String str3, String str4, Bundle bundle) {
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
                    this.f4394a.transact(8, obtain, obtain2, 0);
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
            public Bundle getBuyIntentToReplaceSkus(int i, String str, List<String> list, String str2, String str3, String str4) {
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
                    this.f4394a.transact(7, obtain, obtain2, 0);
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
            public Bundle getPurchaseHistory(int i, String str, String str2, String str3, Bundle bundle) {
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
                    this.f4394a.transact(9, obtain, obtain2, 0);
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
            public Bundle getPurchases(int i, String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f4394a.transact(4, obtain, obtain2, 0);
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
            public Bundle getSkuDetails(int i, String str, String str2, Bundle bundle) {
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
                    this.f4394a.transact(2, obtain, obtain2, 0);
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
            public int isBillingSupported(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f4394a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int isBillingSupportedExtraParams(int i, String str, String str2, Bundle bundle) {
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
                    this.f4394a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int stub(int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f4394a.transact(6, obtain, obtain2, 0);
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [com.android.vending.billing.IInAppBillingService] */
        public static IInAppBillingService asInterface(IBinder iBinder) {
            Proxy proxy;
            if (iBinder == null) {
                proxy = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
                proxy = (queryLocalInterface == null || !(queryLocalInterface instanceof IInAppBillingService)) ? new Proxy(iBinder) : (IInAppBillingService) queryLocalInterface;
            }
            return proxy;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            Bundle bundle = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int isBillingSupported = isBillingSupported(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isBillingSupported);
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int readInt = parcel.readInt();
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle skuDetails = getSkuDetails(readInt, readString, readString2, bundle);
                    parcel2.writeNoException();
                    if (skuDetails != null) {
                        parcel2.writeInt(1);
                        skuDetails.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 3:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle buyIntent = getBuyIntent(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (buyIntent != null) {
                        parcel2.writeInt(1);
                        buyIntent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 4:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle purchases = getPurchases(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (purchases != null) {
                        parcel2.writeInt(1);
                        purchases.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 5:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int consumePurchase = consumePurchase(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(consumePurchase);
                    z = true;
                    break;
                case 6:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int stub = stub(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(stub);
                    z = true;
                    break;
                case 7:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle buyIntentToReplaceSkus = getBuyIntentToReplaceSkus(parcel.readInt(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (buyIntentToReplaceSkus != null) {
                        parcel2.writeInt(1);
                        buyIntentToReplaceSkus.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 8:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle buyIntentExtraParams = getBuyIntentExtraParams(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (buyIntentExtraParams != null) {
                        parcel2.writeInt(1);
                        buyIntentExtraParams.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 9:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle purchaseHistory = getPurchaseHistory(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (purchaseHistory != null) {
                        parcel2.writeInt(1);
                        purchaseHistory.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    z = true;
                    break;
                case 10:
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int readInt2 = parcel.readInt();
                    String readString3 = parcel.readString();
                    String readString4 = parcel.readString();
                    Bundle bundle2 = null;
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    int isBillingSupportedExtraParams = isBillingSupportedExtraParams(readInt2, readString3, readString4, bundle2);
                    parcel2.writeNoException();
                    parcel2.writeInt(isBillingSupportedExtraParams);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.android.vending.billing.IInAppBillingService");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    int consumePurchase(int i, String str, String str2);

    Bundle getBuyIntent(int i, String str, String str2, String str3, String str4);

    Bundle getBuyIntentExtraParams(int i, String str, String str2, String str3, String str4, Bundle bundle);

    Bundle getBuyIntentToReplaceSkus(int i, String str, List<String> list, String str2, String str3, String str4);

    Bundle getPurchaseHistory(int i, String str, String str2, String str3, Bundle bundle);

    Bundle getPurchases(int i, String str, String str2, String str3);

    Bundle getSkuDetails(int i, String str, String str2, Bundle bundle);

    int isBillingSupported(int i, String str, String str2);

    int isBillingSupportedExtraParams(int i, String str, String str2, Bundle bundle);

    int stub(int i, String str, String str2);
}
