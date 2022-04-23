package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzu.class */
public abstract class zzu extends zzc implements zzv {
    public zzu() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzv asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof zzv ? (zzv) queryLocalInterface : new zzx(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    public final boolean mo9195a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzw zzwVar;
        zzw zzwVar2 = null;
        zzab zzabVar = null;
        zzab zzabVar2 = null;
        zzab zzabVar3 = null;
        zzw zzwVar3 = null;
        zzw zzwVar4 = null;
        zzw zzwVar5 = null;
        zzw zzwVar6 = null;
        zzw zzwVar7 = null;
        zzw zzwVar8 = null;
        zzac zzacVar = null;
        zzw zzwVar9 = null;
        zzw zzwVar10 = null;
        zzw zzwVar11 = null;
        zzw zzwVar12 = null;
        zzw zzwVar13 = null;
        zzw zzwVar14 = null;
        switch (i) {
            case 1:
                initialize(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzae) zzb.m10428a(parcel, zzae.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzb.m10428a(parcel, Bundle.CREATOR), zzb.m10430a(parcel), zzb.m10430a(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzb.m10428a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzwVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar = queryLocalInterface instanceof zzw ? (zzw) queryLocalInterface : new zzy(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, zzwVar, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzb.m10430a(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean a = zzb.m10430a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar13 = queryLocalInterface2 instanceof zzw ? (zzw) queryLocalInterface2 : new zzy(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, a, zzwVar13);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar12 = queryLocalInterface3 instanceof zzw ? (zzw) queryLocalInterface3 : new zzy(readStrongBinder3);
                }
                getMaxUserProperties(readString5, zzwVar12);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) zzb.m10428a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzb.m10428a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar11 = queryLocalInterface4 instanceof zzw ? (zzw) queryLocalInterface4 : new zzy(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, zzwVar11);
                break;
            case 11:
                setMeasurementEnabled(zzb.m10430a(parcel), parcel.readLong());
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
                setCurrentScreen(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar10 = queryLocalInterface5 instanceof zzw ? (zzw) queryLocalInterface5 : new zzy(readStrongBinder5);
                }
                getCurrentScreenName(zzwVar10);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar9 = queryLocalInterface6 instanceof zzw ? (zzw) queryLocalInterface6 : new zzy(readStrongBinder6);
                }
                getCurrentScreenClass(zzwVar9);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    zzacVar = queryLocalInterface7 instanceof zzac ? (zzac) queryLocalInterface7 : new zzaf(readStrongBinder7);
                }
                setInstanceIdProvider(zzacVar);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar8 = queryLocalInterface8 instanceof zzw ? (zzw) queryLocalInterface8 : new zzy(readStrongBinder8);
                }
                getCachedAppInstanceId(zzwVar8);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar7 = queryLocalInterface9 instanceof zzw ? (zzw) queryLocalInterface9 : new zzy(readStrongBinder9);
                }
                getAppInstanceId(zzwVar7);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar6 = queryLocalInterface10 instanceof zzw ? (zzw) queryLocalInterface10 : new zzy(readStrongBinder10);
                }
                getGmpAppId(zzwVar6);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar5 = queryLocalInterface11 instanceof zzw ? (zzw) queryLocalInterface11 : new zzy(readStrongBinder11);
                }
                generateEventId(zzwVar5);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (Bundle) zzb.m10428a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar4 = queryLocalInterface12 instanceof zzw ? (zzw) queryLocalInterface12 : new zzy(readStrongBinder12);
                }
                onActivitySaveInstanceState(a2, zzwVar4, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) zzb.m10428a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar3 = queryLocalInterface13 instanceof zzw ? (zzw) queryLocalInterface13 : new zzy(readStrongBinder13);
                }
                performAction(bundle2, zzwVar3, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzabVar3 = queryLocalInterface14 instanceof zzab ? (zzab) queryLocalInterface14 : new zzad(readStrongBinder14);
                }
                setEventInterceptor(zzabVar3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzabVar2 = queryLocalInterface15 instanceof zzab ? (zzab) queryLocalInterface15 : new zzad(readStrongBinder15);
                }
                registerOnMeasurementEventListener(zzabVar2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzabVar = queryLocalInterface16 instanceof zzab ? (zzab) queryLocalInterface16 : new zzad(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(zzabVar);
                break;
            case 37:
                initForTests(zzb.m10425b(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar2 = queryLocalInterface17 instanceof zzw ? (zzw) queryLocalInterface17 : new zzy(readStrongBinder17);
                }
                getTestFlag(zzwVar2, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(zzb.m10430a(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzwVar14 = queryLocalInterface18 instanceof zzw ? (zzw) queryLocalInterface18 : new zzy(readStrongBinder18);
                }
                isDataCollectionEnabled(zzwVar14);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) zzb.m10428a(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) zzb.m10428a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) zzb.m10428a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
