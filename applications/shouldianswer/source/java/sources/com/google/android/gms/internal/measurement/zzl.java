package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzl.class */
public abstract class zzl extends zzc implements zzm {
    public zzl() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzm asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzo(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzp zzpVar;
        zzp zzpVar2;
        zzp zzpVar3;
        zzp zzpVar4;
        zzp zzpVar5;
        zzp zzpVar6;
        zzw zzwVar;
        zzp zzpVar7;
        zzp zzpVar8;
        zzp zzpVar9;
        zzp zzpVar10;
        zzp zzpVar11;
        zzp zzpVar12;
        zzu zzuVar;
        zzu zzuVar2;
        zzu zzuVar3;
        zzp zzpVar13;
        zzp zzpVar14;
        switch (i) {
            case 1:
                initialize(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzv) zzb.zza(parcel, zzv.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzb.zza(parcel, Bundle.CREATOR), zzb.zza(parcel), zzb.zza(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzb.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzpVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar = queryLocalInterface instanceof zzn ? (zzn) queryLocalInterface : new zzp(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, zzpVar, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzb.zza(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean zza = zzb.zza(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzpVar2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar2 = queryLocalInterface2 instanceof zzn ? (zzn) queryLocalInterface2 : new zzp(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, zza, zzpVar2);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzpVar3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar3 = queryLocalInterface3 instanceof zzn ? (zzn) queryLocalInterface3 : new zzp(readStrongBinder3);
                }
                getMaxUserProperties(readString5, zzpVar3);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) zzb.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzb.zza(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzpVar4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar4 = queryLocalInterface4 instanceof zzn ? (zzn) queryLocalInterface4 : new zzp(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, zzpVar4);
                break;
            case 11:
                setMeasurementEnabled(zzb.zza(parcel), parcel.readLong());
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
                setCurrentScreen(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzpVar5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar5 = queryLocalInterface5 instanceof zzn ? (zzn) queryLocalInterface5 : new zzp(readStrongBinder5);
                }
                getCurrentScreenName(zzpVar5);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzpVar6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar6 = queryLocalInterface6 instanceof zzn ? (zzn) queryLocalInterface6 : new zzp(readStrongBinder6);
                }
                getCurrentScreenClass(zzpVar6);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzwVar = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    zzwVar = queryLocalInterface7 instanceof zzt ? (zzt) queryLocalInterface7 : new zzw(readStrongBinder7);
                }
                setInstanceIdProvider(zzwVar);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzpVar7 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar7 = queryLocalInterface8 instanceof zzn ? (zzn) queryLocalInterface8 : new zzp(readStrongBinder8);
                }
                getCachedAppInstanceId(zzpVar7);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    zzpVar8 = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar8 = queryLocalInterface9 instanceof zzn ? (zzn) queryLocalInterface9 : new zzp(readStrongBinder9);
                }
                getAppInstanceId(zzpVar8);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 == null) {
                    zzpVar9 = null;
                } else {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar9 = queryLocalInterface10 instanceof zzn ? (zzn) queryLocalInterface10 : new zzp(readStrongBinder10);
                }
                getGmpAppId(zzpVar9);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 == null) {
                    zzpVar10 = null;
                } else {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar10 = queryLocalInterface11 instanceof zzn ? (zzn) queryLocalInterface11 : new zzp(readStrongBinder11);
                }
                generateEventId(zzpVar10);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (Bundle) zzb.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 == null) {
                    zzpVar11 = null;
                } else {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar11 = queryLocalInterface12 instanceof zzn ? (zzn) queryLocalInterface12 : new zzp(readStrongBinder12);
                }
                onActivitySaveInstanceState(asInterface, zzpVar11, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) zzb.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 == null) {
                    zzpVar12 = null;
                } else {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar12 = queryLocalInterface13 instanceof zzn ? (zzn) queryLocalInterface13 : new zzp(readStrongBinder13);
                }
                performAction(bundle2, zzpVar12, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 == null) {
                    zzuVar = null;
                } else {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzuVar = queryLocalInterface14 instanceof zzs ? (zzs) queryLocalInterface14 : new zzu(readStrongBinder14);
                }
                setEventInterceptor(zzuVar);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 == null) {
                    zzuVar2 = null;
                } else {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzuVar2 = queryLocalInterface15 instanceof zzs ? (zzs) queryLocalInterface15 : new zzu(readStrongBinder15);
                }
                registerOnMeasurementEventListener(zzuVar2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 == null) {
                    zzuVar3 = null;
                } else {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    zzuVar3 = queryLocalInterface16 instanceof zzs ? (zzs) queryLocalInterface16 : new zzu(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(zzuVar3);
                break;
            case 37:
                initForTests(zzb.zzb(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 == null) {
                    zzpVar13 = null;
                } else {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar13 = queryLocalInterface17 instanceof zzn ? (zzn) queryLocalInterface17 : new zzp(readStrongBinder17);
                }
                getTestFlag(zzpVar13, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(zzb.zza(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 == null) {
                    zzpVar14 = null;
                } else {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zzpVar14 = queryLocalInterface18 instanceof zzn ? (zzn) queryLocalInterface18 : new zzp(readStrongBinder18);
                }
                isDataCollectionEnabled(zzpVar14);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
