package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/my.class */
public abstract class my extends v implements mz {
    public my() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static mz asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof mz ? (mz) queryLocalInterface : new mv(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.v
    protected final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        nc ncVar;
        nc ncVar2 = null;
        nf nfVar = null;
        nf nfVar2 = null;
        nf nfVar3 = null;
        nc ncVar3 = null;
        nc ncVar4 = null;
        nc ncVar5 = null;
        nc ncVar6 = null;
        nc ncVar7 = null;
        nc ncVar8 = null;
        nh nhVar = null;
        nc ncVar9 = null;
        nc ncVar10 = null;
        nc ncVar11 = null;
        nc ncVar12 = null;
        nc ncVar13 = null;
        nc ncVar14 = null;
        switch (i) {
            case 1:
                initialize(b.a.a(parcel.readStrongBinder()), (zzz) as.a(parcel, zzz.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) as.a(parcel, Bundle.CREATOR), as.a(parcel), as.a(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) as.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ncVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar = queryLocalInterface instanceof nc ? (nc) queryLocalInterface : new na(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, ncVar, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), b.a.a(parcel.readStrongBinder()), as.a(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean a2 = as.a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar13 = queryLocalInterface2 instanceof nc ? (nc) queryLocalInterface2 : new na(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, a2, ncVar13);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar12 = queryLocalInterface3 instanceof nc ? (nc) queryLocalInterface3 : new na(readStrongBinder3);
                }
                getMaxUserProperties(readString5, ncVar12);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) as.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) as.a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar11 = queryLocalInterface4 instanceof nc ? (nc) queryLocalInterface4 : new na(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, ncVar11);
                break;
            case 11:
                setMeasurementEnabled(as.a(parcel), parcel.readLong());
                break;
            case 12:
                resetAnalyticsData(parcel.readLong());
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                break;
            case 14:
                setSessionTimeoutDuration(parcel.readLong());
                break;
            case 15:
                setCurrentScreen(b.a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar10 = queryLocalInterface5 instanceof nc ? (nc) queryLocalInterface5 : new na(readStrongBinder5);
                }
                getCurrentScreenName(ncVar10);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar9 = queryLocalInterface6 instanceof nc ? (nc) queryLocalInterface6 : new na(readStrongBinder6);
                }
                getCurrentScreenClass(ncVar9);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    nhVar = queryLocalInterface7 instanceof nh ? (nh) queryLocalInterface7 : new ng(readStrongBinder7);
                }
                setInstanceIdProvider(nhVar);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar8 = queryLocalInterface8 instanceof nc ? (nc) queryLocalInterface8 : new na(readStrongBinder8);
                }
                getCachedAppInstanceId(ncVar8);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar7 = queryLocalInterface9 instanceof nc ? (nc) queryLocalInterface9 : new na(readStrongBinder9);
                }
                getAppInstanceId(ncVar7);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar6 = queryLocalInterface10 instanceof nc ? (nc) queryLocalInterface10 : new na(readStrongBinder10);
                }
                getGmpAppId(ncVar6);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar5 = queryLocalInterface11 instanceof nc ? (nc) queryLocalInterface11 : new na(readStrongBinder11);
                }
                generateEventId(ncVar5);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(b.a.a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(b.a.a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(b.a.a(parcel.readStrongBinder()), (Bundle) as.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(b.a.a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(b.a.a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(b.a.a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                b a3 = b.a.a(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar4 = queryLocalInterface12 instanceof nc ? (nc) queryLocalInterface12 : new na(readStrongBinder12);
                }
                onActivitySaveInstanceState(a3, ncVar4, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) as.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar3 = queryLocalInterface13 instanceof nc ? (nc) queryLocalInterface13 : new na(readStrongBinder13);
                }
                performAction(bundle2, ncVar3, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    nfVar3 = queryLocalInterface14 instanceof nf ? (nf) queryLocalInterface14 : new nd(readStrongBinder14);
                }
                setEventInterceptor(nfVar3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    nfVar2 = queryLocalInterface15 instanceof nf ? (nf) queryLocalInterface15 : new nd(readStrongBinder15);
                }
                registerOnMeasurementEventListener(nfVar2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    nfVar = queryLocalInterface16 instanceof nf ? (nf) queryLocalInterface16 : new nd(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(nfVar);
                break;
            case 37:
                initForTests(as.b(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar2 = queryLocalInterface17 instanceof nc ? (nc) queryLocalInterface17 : new na(readStrongBinder17);
                }
                getTestFlag(ncVar2, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(as.a(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    ncVar14 = queryLocalInterface18 instanceof nc ? (nc) queryLocalInterface18 : new na(readStrongBinder18);
                }
                isDataCollectionEnabled(ncVar14);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) as.a(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) as.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) as.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
