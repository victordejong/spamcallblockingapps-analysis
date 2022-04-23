package com.android.internal.telephony;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.NeighboringCellInfo;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/internal/telephony/ITelephony.class */
public interface ITelephony extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/android/internal/telephony/ITelephony$Stub.class */
    public static abstract class Stub extends Binder implements ITelephony {
        public static final String DESCRIPTOR = "com.android.internal.telephony.ITelephony";
        public static final int TRANSACTION_call = 2;
        public static final int TRANSACTION_cancelMissedCallsNotification = 11;
        public static final int TRANSACTION_dial = 1;
        public static final int TRANSACTION_disableApnType = 20;
        public static final int TRANSACTION_disableDataConnectivity = 22;
        public static final int TRANSACTION_disableLocationUpdates = 18;
        public static final int TRANSACTION_enableApnType = 19;
        public static final int TRANSACTION_enableDataConnectivity = 21;
        public static final int TRANSACTION_enableLocationUpdates = 17;
        public static final int TRANSACTION_endCall = 5;
        public static final int TRANSACTION_getCallState = 26;
        public static final int TRANSACTION_getCellLocation = 24;
        public static final int TRANSACTION_getDataActivity = 27;
        public static final int TRANSACTION_getDataState = 28;
        public static final int TRANSACTION_getNeighboringCellInfo = 25;
        public static final int TRANSACTION_handlePinMmi = 13;
        public static final int TRANSACTION_isDataConnectivityPossible = 23;
        public static final int TRANSACTION_isIdle = 8;
        public static final int TRANSACTION_isOffhook = 6;
        public static final int TRANSACTION_isRadioOn = 9;
        public static final int TRANSACTION_isRinging = 7;
        public static final int TRANSACTION_isSimPinEnabled = 10;
        public static final int TRANSACTION_setRadio = 15;
        public static final int TRANSACTION_showCallScreen = 3;
        public static final int TRANSACTION_showCallScreenWithDialpad = 4;
        public static final int TRANSACTION_supplyPin = 12;
        public static final int TRANSACTION_toggleRadioOnOff = 14;
        public static final int TRANSACTION_updateServiceLocation = 16;

        /* loaded from: classes-dex2jar.jar:com/android/internal/telephony/ITelephony$Stub$Proxy.class */
        public static class Proxy implements ITelephony {
            public IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.android.internal.telephony.ITelephony
            public void call(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void cancelMissedCallsNotification() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void dial(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int disableApnType(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean disableDataConnectivity() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void disableLocationUpdates() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int enableApnType(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean enableDataConnectivity() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void enableLocationUpdates() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean endCall() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getCallState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public Bundle getCellLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataActivity() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public int getDataState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.android.internal.telephony.ITelephony
            public List<NeighboringCellInfo> getNeighboringCellInfo() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(NeighboringCellInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean handlePinMmi(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    boolean z = false;
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isDataConnectivityPossible() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isIdle() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isOffhook() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isRadioOn() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isRinging() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean isSimPinEnabled() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean setRadio(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z2 = true;
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z2 = false;
                    }
                    return z2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean showCallScreen() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = false;
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean showCallScreenWithDialpad(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z2 = true;
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z2 = false;
                    }
                    return z2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean supplyPin(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    boolean z = false;
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void toggleRadioOnOff() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void updateServiceLocation() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITelephony asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ITelephony)) ? new Proxy(iBinder) : (ITelephony) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                boolean z = false;
                boolean z2 = false;
                switch (i) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        dial(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        call(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean showCallScreen = showCallScreen();
                        parcel2.writeNoException();
                        parcel2.writeInt(showCallScreen ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        boolean showCallScreenWithDialpad = showCallScreenWithDialpad(z);
                        parcel2.writeNoException();
                        parcel2.writeInt(showCallScreenWithDialpad ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean endCall = endCall();
                        parcel2.writeNoException();
                        parcel2.writeInt(endCall ? 1 : 0);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isOffhook = isOffhook();
                        parcel2.writeNoException();
                        parcel2.writeInt(isOffhook ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isRinging = isRinging();
                        parcel2.writeNoException();
                        parcel2.writeInt(isRinging ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isIdle = isIdle();
                        parcel2.writeNoException();
                        parcel2.writeInt(isIdle ? 1 : 0);
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isRadioOn = isRadioOn();
                        parcel2.writeNoException();
                        parcel2.writeInt(isRadioOn ? 1 : 0);
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isSimPinEnabled = isSimPinEnabled();
                        parcel2.writeNoException();
                        parcel2.writeInt(isSimPinEnabled ? 1 : 0);
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        cancelMissedCallsNotification();
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean supplyPin = supplyPin(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(supplyPin ? 1 : 0);
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean handlePinMmi = handlePinMmi(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(handlePinMmi ? 1 : 0);
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        toggleRadioOnOff();
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            z2 = true;
                        }
                        boolean radio = setRadio(z2);
                        parcel2.writeNoException();
                        parcel2.writeInt(radio ? 1 : 0);
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        updateServiceLocation();
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        parcel.enforceInterface(DESCRIPTOR);
                        enableLocationUpdates();
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        parcel.enforceInterface(DESCRIPTOR);
                        disableLocationUpdates();
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        parcel.enforceInterface(DESCRIPTOR);
                        int enableApnType = enableApnType(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(enableApnType);
                        return true;
                    case 20:
                        parcel.enforceInterface(DESCRIPTOR);
                        int disableApnType = disableApnType(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(disableApnType);
                        return true;
                    case 21:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean enableDataConnectivity = enableDataConnectivity();
                        parcel2.writeNoException();
                        parcel2.writeInt(enableDataConnectivity ? 1 : 0);
                        return true;
                    case 22:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean disableDataConnectivity = disableDataConnectivity();
                        parcel2.writeNoException();
                        parcel2.writeInt(disableDataConnectivity ? 1 : 0);
                        return true;
                    case 23:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean isDataConnectivityPossible = isDataConnectivityPossible();
                        parcel2.writeNoException();
                        parcel2.writeInt(isDataConnectivityPossible ? 1 : 0);
                        return true;
                    case 24:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle cellLocation = getCellLocation();
                        parcel2.writeNoException();
                        if (cellLocation != null) {
                            parcel2.writeInt(1);
                            cellLocation.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 25:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<NeighboringCellInfo> neighboringCellInfo = getNeighboringCellInfo();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(neighboringCellInfo);
                        return true;
                    case 26:
                        parcel.enforceInterface(DESCRIPTOR);
                        int callState = getCallState();
                        parcel2.writeNoException();
                        parcel2.writeInt(callState);
                        return true;
                    case 27:
                        parcel.enforceInterface(DESCRIPTOR);
                        int dataActivity = getDataActivity();
                        parcel2.writeNoException();
                        parcel2.writeInt(dataActivity);
                        return true;
                    case 28:
                        parcel.enforceInterface(DESCRIPTOR);
                        int dataState = getDataState();
                        parcel2.writeNoException();
                        parcel2.writeInt(dataState);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    void call(String str) throws RemoteException;

    void cancelMissedCallsNotification() throws RemoteException;

    void dial(String str) throws RemoteException;

    int disableApnType(String str) throws RemoteException;

    boolean disableDataConnectivity() throws RemoteException;

    void disableLocationUpdates() throws RemoteException;

    int enableApnType(String str) throws RemoteException;

    boolean enableDataConnectivity() throws RemoteException;

    void enableLocationUpdates() throws RemoteException;

    boolean endCall() throws RemoteException;

    int getCallState() throws RemoteException;

    Bundle getCellLocation() throws RemoteException;

    int getDataActivity() throws RemoteException;

    int getDataState() throws RemoteException;

    List<NeighboringCellInfo> getNeighboringCellInfo() throws RemoteException;

    boolean handlePinMmi(String str) throws RemoteException;

    boolean isDataConnectivityPossible() throws RemoteException;

    boolean isIdle() throws RemoteException;

    boolean isOffhook() throws RemoteException;

    boolean isRadioOn() throws RemoteException;

    boolean isRinging() throws RemoteException;

    boolean isSimPinEnabled() throws RemoteException;

    boolean setRadio(boolean z) throws RemoteException;

    boolean showCallScreen() throws RemoteException;

    boolean showCallScreenWithDialpad(boolean z) throws RemoteException;

    boolean supplyPin(String str) throws RemoteException;

    void toggleRadioOnOff() throws RemoteException;

    void updateServiceLocation() throws RemoteException;
}
