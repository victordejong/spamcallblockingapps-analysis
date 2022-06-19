package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzcb.class */
public abstract class zzcb extends zzbn implements zzcc {
    public zzcb() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzcc asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof zzcc ? (zzcc) queryLocalInterface : new zzca(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcd zzcdVar;
        zzcd zzcdVar2;
        zzcd zzcdVar3;
        zzcd zzcdVar4;
        zzcd zzcdVar5;
        zzcd zzcdVar6;
        zzcj zzcjVar;
        zzcd zzcdVar7;
        zzcd zzcdVar8;
        zzcd zzcdVar9;
        zzcd zzcdVar10;
        zzcd zzcdVar11;
        zzcd zzcdVar12;
        zzcg zzcgVar;
        zzcg zzcgVar2;
        zzcg zzcgVar3;
        zzcd zzcdVar13;
        zzcd zzcdVar14;
        switch (i) {
            case 1:
                initialize(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzcl) zzbo.zza(parcel, zzcl.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzbo.zza(parcel, Bundle.CREATOR), zzbo.zzf(parcel), zzbo.zzf(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcdVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar = queryLocalInterface instanceof zzcf ? (zzcf) queryLocalInterface : new zzcd(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, zzcdVar, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzbo.zzf(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean zzf = zzbo.zzf(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzcdVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar2 = queryLocalInterface2 instanceof zzcf ? (zzcf) queryLocalInterface2 : new zzcd(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, zzf, zzcdVar2);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzcdVar3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar3 = queryLocalInterface3 instanceof zzcf ? (zzcf) queryLocalInterface3 : new zzcd(readStrongBinder3);
                }
                getMaxUserProperties(readString5, zzcdVar3);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) zzbo.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzbo.zza(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzcdVar4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar4 = queryLocalInterface4 instanceof zzcf ? (zzcf) queryLocalInterface4 : new zzcd(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, zzcdVar4);
                break;
            case 11:
                setMeasurementEnabled(zzbo.zzf(parcel), parcel.readLong());
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
                setCurrentScreen(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzcdVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar5 = queryLocalInterface5 instanceof zzcf ? (zzcf) queryLocalInterface5 : new zzcd(readStrongBinder5);
                }
                getCurrentScreenName(zzcdVar5);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzcdVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar6 = queryLocalInterface6 instanceof zzcf ? (zzcf) queryLocalInterface6 : new zzcd(readStrongBinder6);
                }
                getCurrentScreenClass(zzcdVar6);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzcjVar = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    zzcjVar = queryLocalInterface7 instanceof zzck ? (zzck) queryLocalInterface7 : new zzcj(readStrongBinder7);
                }
                setInstanceIdProvider(zzcjVar);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzcdVar7 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar7 = queryLocalInterface8 instanceof zzcf ? (zzcf) queryLocalInterface8 : new zzcd(readStrongBinder8);
                }
                getCachedAppInstanceId(zzcdVar7);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    zzcdVar8 = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar8 = queryLocalInterface9 instanceof zzcf ? (zzcf) queryLocalInterface9 : new zzcd(readStrongBinder9);
                }
                getAppInstanceId(zzcdVar8);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 == null) {
                    zzcdVar9 = null;
                } else {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar9 = queryLocalInterface10 instanceof zzcf ? (zzcf) queryLocalInterface10 : new zzcd(readStrongBinder10);
                }
                getGmpAppId(zzcdVar9);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 == null) {
                    zzcdVar10 = null;
                } else {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar10 = queryLocalInterface11 instanceof zzcf ? (zzcf) queryLocalInterface11 : new zzcd(readStrongBinder11);
                }
                generateEventId(zzcdVar10);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (Bundle) zzbo.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 == null) {
                    zzcdVar11 = null;
                } else {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar11 = queryLocalInterface12 instanceof zzcf ? (zzcf) queryLocalInterface12 : new zzcd(readStrongBinder12);
                }
                onActivitySaveInstanceState(m38750m1, zzcdVar11, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 == null) {
                    zzcdVar12 = null;
                } else {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar12 = queryLocalInterface13 instanceof zzcf ? (zzcf) queryLocalInterface13 : new zzcd(readStrongBinder13);
                }
                performAction(bundle2, zzcdVar12, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 == null) {
                    zzcgVar = null;
                } else {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzcgVar = queryLocalInterface14 instanceof zzci ? (zzci) queryLocalInterface14 : new zzcg(readStrongBinder14);
                }
                setEventInterceptor(zzcgVar);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 == null) {
                    zzcgVar2 = null;
                } else {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzcgVar2 = queryLocalInterface15 instanceof zzci ? (zzci) queryLocalInterface15 : new zzcg(readStrongBinder15);
                }
                registerOnMeasurementEventListener(zzcgVar2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 == null) {
                    zzcgVar3 = null;
                } else {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzcgVar3 = queryLocalInterface16 instanceof zzci ? (zzci) queryLocalInterface16 : new zzcg(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(zzcgVar3);
                break;
            case 37:
                initForTests(zzbo.zzb(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 == null) {
                    zzcdVar13 = null;
                } else {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar13 = queryLocalInterface17 instanceof zzcf ? (zzcf) queryLocalInterface17 : new zzcd(readStrongBinder17);
                }
                getTestFlag(zzcdVar13, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(zzbo.zzf(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 == null) {
                    zzcdVar14 = null;
                } else {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzcdVar14 = queryLocalInterface18 instanceof zzcf ? (zzcf) queryLocalInterface18 : new zzcd(readStrongBinder18);
                }
                isDataCollectionEnabled(zzcdVar14);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) zzbo.zza(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) zzbo.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) zzbo.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
