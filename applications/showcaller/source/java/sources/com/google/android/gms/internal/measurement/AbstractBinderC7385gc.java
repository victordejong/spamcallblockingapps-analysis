package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.measurement.gc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gc.class */
public abstract class AbstractBinderC7385gc extends BinderC7564u implements AbstractC7399hc {
    public AbstractBinderC7385gc() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static AbstractC7399hc asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof AbstractC7399hc ? (AbstractC7399hc) queryLocalInterface : new C7343dc(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.BinderC7564u
    /* renamed from: c0 */
    protected final boolean mo6466c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        C7413ic c7413ic;
        C7413ic c7413ic2;
        C7413ic c7413ic3;
        C7413ic c7413ic4;
        C7413ic c7413ic5;
        C7413ic c7413ic6;
        C7497oc c7497oc;
        C7413ic c7413ic7;
        C7413ic c7413ic8;
        C7413ic c7413ic9;
        C7413ic c7413ic10;
        C7413ic c7413ic11;
        C7413ic c7413ic12;
        C7455lc c7455lc;
        C7455lc c7455lc2;
        C7455lc c7455lc3;
        C7413ic c7413ic13;
        C7413ic c7413ic14;
        switch (i) {
            case 1:
                initialize(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), (zzz) C7526r0.m6987c(parcel, zzz.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), C7526r0.m6989a(parcel), C7526r0.m6989a(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c7413ic = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic = queryLocalInterface instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface : new C7413ic(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, c7413ic, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), C7526r0.m6989a(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean m6989a = C7526r0.m6989a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c7413ic2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic2 = queryLocalInterface2 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface2 : new C7413ic(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, m6989a, c7413ic2);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c7413ic3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic3 = queryLocalInterface3 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface3 : new C7413ic(readStrongBinder3);
                }
                getMaxUserProperties(readString5, c7413ic3);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c7413ic4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic4 = queryLocalInterface4 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface4 : new C7413ic(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, c7413ic4);
                break;
            case 11:
                setMeasurementEnabled(C7526r0.m6989a(parcel), parcel.readLong());
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
                setCurrentScreen(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c7413ic5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic5 = queryLocalInterface5 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface5 : new C7413ic(readStrongBinder5);
                }
                getCurrentScreenName(c7413ic5);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c7413ic6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic6 = queryLocalInterface6 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface6 : new C7413ic(readStrongBinder6);
                }
                getCurrentScreenClass(c7413ic6);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c7497oc = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    c7497oc = queryLocalInterface7 instanceof AbstractC7511pc ? (AbstractC7511pc) queryLocalInterface7 : new C7497oc(readStrongBinder7);
                }
                setInstanceIdProvider(c7497oc);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c7413ic7 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic7 = queryLocalInterface8 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface8 : new C7413ic(readStrongBinder8);
                }
                getCachedAppInstanceId(c7413ic7);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    c7413ic8 = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic8 = queryLocalInterface9 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface9 : new C7413ic(readStrongBinder9);
                }
                getAppInstanceId(c7413ic8);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 == null) {
                    c7413ic9 = null;
                } else {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic9 = queryLocalInterface10 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface10 : new C7413ic(readStrongBinder10);
                }
                getGmpAppId(c7413ic9);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 == null) {
                    c7413ic10 = null;
                } else {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic10 = queryLocalInterface11 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface11 : new C7413ic(readStrongBinder11);
                }
                generateEventId(c7413ic10);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), (Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 == null) {
                    c7413ic11 = null;
                } else {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic11 = queryLocalInterface12 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface12 : new C7413ic(readStrongBinder12);
                }
                onActivitySaveInstanceState(m16746D0, c7413ic11, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 == null) {
                    c7413ic12 = null;
                } else {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic12 = queryLocalInterface13 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface13 : new C7413ic(readStrongBinder13);
                }
                performAction(bundle2, c7413ic12, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 == null) {
                    c7455lc = null;
                } else {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c7455lc = queryLocalInterface14 instanceof AbstractC7483nc ? (AbstractC7483nc) queryLocalInterface14 : new C7455lc(readStrongBinder14);
                }
                setEventInterceptor(c7455lc);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 == null) {
                    c7455lc2 = null;
                } else {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c7455lc2 = queryLocalInterface15 instanceof AbstractC7483nc ? (AbstractC7483nc) queryLocalInterface15 : new C7455lc(readStrongBinder15);
                }
                registerOnMeasurementEventListener(c7455lc2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 == null) {
                    c7455lc3 = null;
                } else {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c7455lc3 = queryLocalInterface16 instanceof AbstractC7483nc ? (AbstractC7483nc) queryLocalInterface16 : new C7455lc(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(c7455lc3);
                break;
            case 37:
                initForTests(C7526r0.m6984f(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 == null) {
                    c7413ic13 = null;
                } else {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic13 = queryLocalInterface17 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface17 : new C7413ic(readStrongBinder17);
                }
                getTestFlag(c7413ic13, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(C7526r0.m6989a(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 == null) {
                    c7413ic14 = null;
                } else {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c7413ic14 = queryLocalInterface18 instanceof AbstractC7441kc ? (AbstractC7441kc) queryLocalInterface18 : new C7413ic(readStrongBinder18);
                }
                isDataCollectionEnabled(c7413ic14);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
