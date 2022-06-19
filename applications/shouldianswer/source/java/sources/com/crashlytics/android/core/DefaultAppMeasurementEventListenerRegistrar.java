package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar.class */
public class DefaultAppMeasurementEventListenerRegistrar implements AppMeasurementEventListenerRegistrar {
    private static final String ANALYTIC_CLASS = "com.google.android.gms.measurement.AppMeasurement";
    private static final String ANALYTIC_CLASS_ON_EVENT_LISTENER = "com.google.android.gms.measurement.AppMeasurement$OnEventListener";
    private static final String CRASH_ORIGIN = "crash";
    private static final String GET_INSTANCE_METHOD = "getInstance";
    private static final String NAME = "name";
    private static final String PARAMETERS = "parameters";
    private static final String REGISTER_METHOD = "registerOnMeasurementEventListener";
    private final CrashlyticsCore crashlyticsCore;

    private DefaultAppMeasurementEventListenerRegistrar(CrashlyticsCore crashlyticsCore) {
        this.crashlyticsCore = crashlyticsCore;
    }

    private Class<?> getClass(String str) {
        try {
            return this.crashlyticsCore.getContext().getClassLoader().loadClass(str);
        } catch (Exception e) {
            return null;
        }
    }

    private Object getInstance(Class<?> cls) {
        try {
            return cls.getDeclaredMethod(GET_INSTANCE_METHOD, Context.class).invoke(cls, this.crashlyticsCore.getContext());
        } catch (Exception e) {
            return null;
        }
    }

    public static AppMeasurementEventListenerRegistrar instanceFrom(CrashlyticsCore crashlyticsCore) {
        return new DefaultAppMeasurementEventListenerRegistrar(crashlyticsCore);
    }

    private boolean invoke(Class<?> cls, Object obj, String str) {
        Class<?> cls2 = getClass(ANALYTIC_CLASS_ON_EVENT_LISTENER);
        try {
            cls.getDeclaredMethod(str, cls2).invoke(obj, onEventListenerProxy(cls2));
            return true;
        } catch (IllegalAccessException e) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3547d(CrashlyticsCore.TAG, "Cannot access method: " + str, e);
            return false;
        } catch (NoSuchMethodException e2) {
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3547d(CrashlyticsCore.TAG, "Expected method missing: " + str, e2);
            return false;
        } catch (InvocationTargetException e3) {
            AbstractC1462k m3572g3 = C1449c.m3572g();
            m3572g3.mo3547d(CrashlyticsCore.TAG, "Cannot invoke method: " + str, e3);
            return false;
        }
    }

    private Object onEventListenerProxy(Class cls) {
        return Proxy.newProxyInstance(this.crashlyticsCore.getContext().getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (objArr.length == 4) {
                    String str = (String) objArr[0];
                    String str2 = (String) objArr[1];
                    Bundle bundle = (Bundle) objArr[2];
                    if (str == null || str.equals("crash")) {
                        return null;
                    }
                    DefaultAppMeasurementEventListenerRegistrar.writeEventToUserLog(DefaultAppMeasurementEventListenerRegistrar.this.crashlyticsCore, str2, bundle);
                    return null;
                }
                throw new RuntimeException("Unexpected AppMeasurement.OnEventListener signature");
            }
        });
    }

    private static String serializeEvent(String str, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put(PARAMETERS, jSONObject2);
        return jSONObject.toString();
    }

    public static void writeEventToUserLog(CrashlyticsCore crashlyticsCore, String str, Bundle bundle) {
        try {
            crashlyticsCore.log("$A$:" + serializeEvent(str, bundle));
        } catch (JSONException e) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3548d(CrashlyticsCore.TAG, "Unable to serialize Firebase Analytics event; " + str);
        }
    }

    @Override // com.crashlytics.android.core.AppMeasurementEventListenerRegistrar
    public boolean register() {
        Class<?> cls = getClass(ANALYTIC_CLASS);
        if (cls == null) {
            C1449c.m3572g().mo3548d(CrashlyticsCore.TAG, "Firebase Analytics is not present; you will not see automatic logging of events before a crash occurs.");
            return false;
        }
        Object defaultAppMeasurementEventListenerRegistrar = getInstance(cls);
        if (defaultAppMeasurementEventListenerRegistrar != null) {
            return invoke(cls, defaultAppMeasurementEventListenerRegistrar, REGISTER_METHOD);
        }
        C1449c.m3572g().mo3548d(CrashlyticsCore.TAG, "Could not create an instance of Firebase Analytics.");
        return false;
    }
}
