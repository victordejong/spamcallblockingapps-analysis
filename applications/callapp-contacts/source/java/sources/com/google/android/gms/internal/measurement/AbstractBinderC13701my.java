package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.measurement.my */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/my.class */
public abstract class AbstractBinderC13701my extends BinderC13719v implements AbstractC13702mz {
    public AbstractBinderC13701my() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static AbstractC13702mz asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof AbstractC13702mz ? (AbstractC13702mz) queryLocalInterface : new C13698mv(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.BinderC13719v
    /* renamed from: a */
    protected final boolean mo12113a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        C13704na c13704na;
        C13704na c13704na2;
        C13704na c13704na3;
        C13704na c13704na4;
        C13704na c13704na5;
        C13704na c13704na6;
        C13710ng c13710ng;
        C13704na c13704na7;
        C13704na c13704na8;
        C13704na c13704na9;
        C13704na c13704na10;
        C13704na c13704na11;
        C13704na c13704na12;
        C13707nd c13707nd;
        C13707nd c13707nd2;
        C13707nd c13707nd3;
        C13704na c13704na13;
        C13704na c13704na14;
        switch (i) {
            case 1:
                initialize(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzz) C13371as.m13248a(parcel, zzz.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), C13371as.m13250a(parcel), C13371as.m13250a(parcel), parcel.readLong());
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) C13371as.m13248a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c13704na = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na = queryLocalInterface instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface : new C13704na(readStrongBinder);
                }
                logEventAndBundle(readString, readString2, bundle, c13704na, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), C13371as.m13250a(parcel), parcel.readLong());
                break;
            case 5:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                boolean m13250a = C13371as.m13250a(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c13704na2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na2 = queryLocalInterface2 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface2 : new C13704na(readStrongBinder2);
                }
                getUserProperties(readString3, readString4, m13250a, c13704na2);
                break;
            case 6:
                String readString5 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c13704na3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na3 = queryLocalInterface3 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface3 : new C13704na(readStrongBinder3);
                }
                getMaxUserProperties(readString5, c13704na3);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) C13371as.m13248a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c13704na4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na4 = queryLocalInterface4 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface4 : new C13704na(readStrongBinder4);
                }
                getConditionalUserProperties(readString6, readString7, c13704na4);
                break;
            case 11:
                setMeasurementEnabled(C13371as.m13250a(parcel), parcel.readLong());
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
                setCurrentScreen(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c13704na5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na5 = queryLocalInterface5 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface5 : new C13704na(readStrongBinder5);
                }
                getCurrentScreenName(c13704na5);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c13704na6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na6 = queryLocalInterface6 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface6 : new C13704na(readStrongBinder6);
                }
                getCurrentScreenClass(c13704na6);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c13710ng = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    c13710ng = queryLocalInterface7 instanceof AbstractC13711nh ? (AbstractC13711nh) queryLocalInterface7 : new C13710ng(readStrongBinder7);
                }
                setInstanceIdProvider(c13710ng);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c13704na7 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na7 = queryLocalInterface8 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface8 : new C13704na(readStrongBinder8);
                }
                getCachedAppInstanceId(c13704na7);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    c13704na8 = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na8 = queryLocalInterface9 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface9 : new C13704na(readStrongBinder9);
                }
                getAppInstanceId(c13704na8);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 == null) {
                    c13704na9 = null;
                } else {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na9 = queryLocalInterface10 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface10 : new C13704na(readStrongBinder10);
                }
                getGmpAppId(c13704na9);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 == null) {
                    c13704na10 = null;
                } else {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na10 = queryLocalInterface11 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface11 : new C13704na(readStrongBinder11);
                }
                generateEventId(c13704na10);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 == null) {
                    c13704na11 = null;
                } else {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na11 = queryLocalInterface12 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface12 : new C13704na(readStrongBinder12);
                }
                onActivitySaveInstanceState(m18981a, c13704na11, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) C13371as.m13248a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 == null) {
                    c13704na12 = null;
                } else {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na12 = queryLocalInterface13 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface13 : new C13704na(readStrongBinder13);
                }
                performAction(bundle2, c13704na12, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 == null) {
                    c13707nd = null;
                } else {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c13707nd = queryLocalInterface14 instanceof AbstractC13709nf ? (AbstractC13709nf) queryLocalInterface14 : new C13707nd(readStrongBinder14);
                }
                setEventInterceptor(c13707nd);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 == null) {
                    c13707nd2 = null;
                } else {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c13707nd2 = queryLocalInterface15 instanceof AbstractC13709nf ? (AbstractC13709nf) queryLocalInterface15 : new C13707nd(readStrongBinder15);
                }
                registerOnMeasurementEventListener(c13707nd2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 == null) {
                    c13707nd3 = null;
                } else {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    c13707nd3 = queryLocalInterface16 instanceof AbstractC13709nf ? (AbstractC13709nf) queryLocalInterface16 : new C13707nd(readStrongBinder16);
                }
                unregisterOnMeasurementEventListener(c13707nd3);
                break;
            case 37:
                initForTests(C13371as.m13245b(parcel));
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 == null) {
                    c13704na13 = null;
                } else {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na13 = queryLocalInterface17 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface17 : new C13704na(readStrongBinder17);
                }
                getTestFlag(c13704na13, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(C13371as.m13250a(parcel));
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 == null) {
                    c13704na14 = null;
                } else {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    c13704na14 = queryLocalInterface18 instanceof AbstractC13706nc ? (AbstractC13706nc) queryLocalInterface18 : new C13704na(readStrongBinder18);
                }
                isDataCollectionEnabled(c13704na14);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) C13371as.m13248a(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
