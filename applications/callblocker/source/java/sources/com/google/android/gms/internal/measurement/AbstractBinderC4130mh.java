package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.measurement.mh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/mh.class */
public abstract class AbstractBinderC4130mh extends BinderC3803as implements AbstractC4131mi {
    public AbstractBinderC4130mh() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.measurement.mi] */
    public static AbstractC4131mi asInterface(IBinder iBinder) {
        C4133mk c4133mk;
        if (iBinder == null) {
            c4133mk = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
            c4133mk = queryLocalInterface instanceof AbstractC4131mi ? (AbstractC4131mi) queryLocalInterface : new C4133mk(iBinder);
        }
        return c4133mk;
    }

    @Override // com.google.android.gms.internal.measurement.BinderC3803as
    /* renamed from: a */
    protected final boolean mo4706a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C4134ml c4134ml;
        C4134ml c4134ml2;
        C4138mp c4138mp;
        C4138mp c4138mp2;
        C4138mp c4138mp3;
        C4134ml c4134ml3;
        C4134ml c4134ml4;
        C4134ml c4134ml5;
        C4134ml c4134ml6;
        C4134ml c4134ml7;
        C4134ml c4134ml8;
        C3838c c3838c;
        C4134ml c4134ml9;
        C4134ml c4134ml10;
        C4134ml c4134ml11;
        C4134ml c4134ml12;
        C4134ml c4134ml13;
        boolean z;
        C4134ml c4134ml14 = null;
        switch (i) {
            case 1:
                initialize(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (C3811b) C4146u.m4944a(parcel, C3811b.CREATOR), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) C4146u.m4944a(parcel, Bundle.CREATOR), C4146u.m4946a(parcel), C4146u.m4946a(parcel), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) C4146u.m4944a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml14 = queryLocalInterface instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface : new C4134ml(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, c4134ml14, parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), C4146u.m4946a(parcel), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean m4946a = C4146u.m4946a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c4134ml13 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml13 = queryLocalInterface2 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface2 : new C4134ml(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, m4946a, c4134ml13);
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c4134ml12 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml12 = queryLocalInterface3 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface3 : new C4134ml(readStrongBinder3);
                }
                getMaxUserProperties(readString5, c4134ml12);
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                setConditionalUserProperty((Bundle) C4146u.m4944a(parcel, Bundle.CREATOR), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) C4146u.m4944a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c4134ml11 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml11 = queryLocalInterface4 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface4 : new C4134ml(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, c4134ml11);
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                setMeasurementEnabled(C4146u.m4946a(parcel), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                resetAnalyticsData(parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                setSessionTimeoutDuration(parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                setCurrentScreen(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c4134ml10 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml10 = queryLocalInterface5 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface5 : new C4134ml(readStrongBinder5);
                }
                getCurrentScreenName(c4134ml10);
                parcel2.writeNoException();
                z = true;
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c4134ml9 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml9 = queryLocalInterface6 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface6 : new C4134ml(readStrongBinder6);
                }
                getCurrentScreenClass(c4134ml9);
                parcel2.writeNoException();
                z = true;
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c3838c = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    c3838c = queryLocalInterface7 instanceof AbstractC4137mo ? (AbstractC4137mo) queryLocalInterface7 : new C3838c(readStrongBinder7);
                }
                setInstanceIdProvider(c3838c);
                parcel2.writeNoException();
                z = true;
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c4134ml8 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml8 = queryLocalInterface8 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface8 : new C4134ml(readStrongBinder8);
                }
                getCachedAppInstanceId(c4134ml8);
                parcel2.writeNoException();
                z = true;
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    c4134ml7 = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml7 = queryLocalInterface9 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface9 : new C4134ml(readStrongBinder9);
                }
                getAppInstanceId(c4134ml7);
                parcel2.writeNoException();
                z = true;
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 == null) {
                    c4134ml6 = null;
                } else {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml6 = queryLocalInterface10 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface10 : new C4134ml(readStrongBinder10);
                }
                getGmpAppId(c4134ml6);
                parcel2.writeNoException();
                z = true;
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 == null) {
                    c4134ml5 = null;
                } else {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml5 = queryLocalInterface11 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface11 : new C4134ml(readStrongBinder11);
                }
                generateEventId(c4134ml5);
                parcel2.writeNoException();
                z = true;
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 25:
                onActivityStarted(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 26:
                onActivityStopped(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 27:
                onActivityCreated(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (Bundle) C4146u.m4944a(parcel, Bundle.CREATOR), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 28:
                onActivityDestroyed(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 29:
                onActivityPaused(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 30:
                onActivityResumed(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 31:
                AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 == null) {
                    c4134ml4 = null;
                } else {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml4 = queryLocalInterface12 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface12 : new C4134ml(readStrongBinder12);
                }
                onActivitySaveInstanceState(m13796a, c4134ml4, parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 32:
                Bundle bundle2 = (Bundle) C4146u.m4944a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 == null) {
                    c4134ml3 = null;
                } else {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml3 = queryLocalInterface13 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface13 : new C4134ml(readStrongBinder13);
                }
                performAction(bundle2, c4134ml3, parcel.readLong());
                parcel2.writeNoException();
                z = true;
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 == null) {
                    c4138mp3 = null;
                } else {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c4138mp3 = queryLocalInterface14 instanceof AbstractC4136mn ? (AbstractC4136mn) queryLocalInterface14 : new C4138mp(readStrongBinder14);
                }
                setEventInterceptor(c4138mp3);
                parcel2.writeNoException();
                z = true;
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 == null) {
                    c4138mp2 = null;
                } else {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c4138mp2 = queryLocalInterface15 instanceof AbstractC4136mn ? (AbstractC4136mn) queryLocalInterface15 : new C4138mp(readStrongBinder15);
                }
                registerOnMeasurementEventListener(c4138mp2);
                parcel2.writeNoException();
                z = true;
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 == null) {
                    c4138mp = null;
                } else {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c4138mp = queryLocalInterface16 instanceof AbstractC4136mn ? (AbstractC4136mn) queryLocalInterface16 : new C4138mp(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(c4138mp);
                parcel2.writeNoException();
                z = true;
                break;
            case 37:
                initForTests(C4146u.m4941b(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 == null) {
                    c4134ml2 = null;
                } else {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml2 = queryLocalInterface17 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface17 : new C4134ml(readStrongBinder17);
                }
                getTestFlag(c4134ml2, parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 39:
                setDataCollectionEnabled(C4146u.m4946a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 == null) {
                    c4134ml = null;
                } else {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c4134ml = queryLocalInterface18 instanceof AbstractC4132mj ? (AbstractC4132mj) queryLocalInterface18 : new C4134ml(readStrongBinder18);
                }
                isDataCollectionEnabled(c4134ml);
                parcel2.writeNoException();
                z = true;
                break;
            case 41:
            default:
                z = false;
                break;
            case 42:
                setDefaultEventParameters((Bundle) C4146u.m4944a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
