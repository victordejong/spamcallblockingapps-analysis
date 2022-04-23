package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar.class */
class DefaultAppMeasurementEventListenerRegistrar implements AppMeasurementEventListenerRegistrar {
    private static final String ANALYTIC_CLASS = "com.google.android.gms.measurement.AppMeasurement";
    private static final String ANALYTIC_CLASS_ON_EVENT_LISTENER = "com.google.android.gms.measurement.AppMeasurement$OnEventListener";
    private static final String CRASH_ORIGIN = "crash";
    private static final String ERROR_PREFIX = "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: ";
    private static final String GET_INSTANCE_METHOD = "getInstance";
    private static final String METHOD_EQUALS = "equals";
    private static final String METHOD_HASHCODE = "hashCode";
    private static final String METHOD_ONEVENT = "onEvent";
    private static final String METHOD_TOSTRING = "toString";
    private static final String NAME = "name";
    private static final List<Class<?>> ONEVENT_EXPECTED_ARGTYPES = Collections.unmodifiableList(Arrays.asList(String.class, String.class, Bundle.class, Long.class));
    private static final String PARAMETERS = "parameters";
    private static final String REGISTER_METHOD = "registerOnMeasurementEventListener";
    private final CrashlyticsCore crashlyticsCore;
    private Object eventListenerProxy;

    public DefaultAppMeasurementEventListenerRegistrar(CrashlyticsCore crashlyticsCore) {
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

    private static String serializeEvent(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put(PARAMETERS, jSONObject2);
        return jSONObject.toString();
    }

    static boolean validateOnEventArgTypes(Object[] objArr) {
        if (objArr.length != ONEVENT_EXPECTED_ARGTYPES.size()) {
            return false;
        }
        Iterator<Class<?>> it = ONEVENT_EXPECTED_ARGTYPES.iterator();
        for (Object obj : objArr) {
            if (!obj.getClass().equals(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeEventToUserLog(CrashlyticsCore crashlyticsCore, String str, Bundle bundle) {
        try {
            crashlyticsCore.log("$A$:" + serializeEvent(str, bundle));
        } catch (JSONException e) {
            Logger logger = Fabric.getLogger();
            logger.mo280w(CrashlyticsCore.TAG, "Unable to serialize Firebase Analytics event; " + str);
        }
    }

    Object getOnEventListenerProxy(Class cls) {
        Object obj;
        synchronized (this) {
            if (this.eventListenerProxy == null) {
                this.eventListenerProxy = Proxy.newProxyInstance(this.crashlyticsCore.getContext().getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar.1
                    public boolean equalsImpl(Object obj2, Object obj3) {
                        boolean z = true;
                        if (obj2 == obj3) {
                            return true;
                        }
                        if (obj3 == null || !Proxy.isProxyClass(obj3.getClass()) || !super.equals(Proxy.getInvocationHandler(obj3))) {
                            z = false;
                        }
                        return z;
                    }

                    @Override // java.lang.reflect.InvocationHandler
                    public Object invoke(Object obj2, Method method, Object[] objArr) {
                        String name = method.getName();
                        if (objArr.length == 1 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_EQUALS)) {
                            return Boolean.valueOf(equalsImpl(obj2, objArr[0]));
                        }
                        if (objArr.length == 0 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_HASHCODE)) {
                            return Integer.valueOf(super.hashCode());
                        }
                        if (objArr.length == 0 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_TOSTRING)) {
                            return super.toString();
                        }
                        if (objArr.length == 4 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_ONEVENT) && DefaultAppMeasurementEventListenerRegistrar.validateOnEventArgTypes(objArr)) {
                            String str = (String) objArr[0];
                            String str2 = (String) objArr[1];
                            Bundle bundle = (Bundle) objArr[2];
                            if (str != null && !str.equals("crash")) {
                                DefaultAppMeasurementEventListenerRegistrar.writeEventToUserLog(DefaultAppMeasurementEventListenerRegistrar.this.crashlyticsCore, str2, bundle);
                                return null;
                            }
                        }
                        StringBuilder sb = new StringBuilder("Unexpected method invoked on AppMeasurement.EventListener: " + name + "(");
                        for (int i = 0; i < objArr.length; i++) {
                            if (i > 0) {
                                sb.append(", ");
                            }
                            sb.append(objArr[0].getClass().getName());
                        }
                        sb.append("); returning null");
                        Fabric.getLogger().mo286e(CrashlyticsCore.TAG, sb.toString());
                        return null;
                    }
                });
            }
            obj = this.eventListenerProxy;
        }
        return obj;
    }

    @Override // com.crashlytics.android.core.AppMeasurementEventListenerRegistrar
    public boolean register() {
        Class<?> cls = getClass(ANALYTIC_CLASS);
        if (cls == null) {
            Fabric.getLogger().mo288d(CrashlyticsCore.TAG, "Firebase Analytics is not present; you will not see automatic logging of events before a crash occurs.");
            return false;
        }
        Object instance = getInstance(cls);
        if (instance == null) {
            Fabric.getLogger().mo280w(CrashlyticsCore.TAG, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Could not create an instance of Firebase Analytics.");
            return false;
        }
        Class<?> cls2 = getClass(ANALYTIC_CLASS_ON_EVENT_LISTENER);
        if (cls2 == null) {
            Fabric.getLogger().mo280w(CrashlyticsCore.TAG, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Could not get class com.google.android.gms.measurement.AppMeasurement$OnEventListener");
            return false;
        }
        try {
            cls.getDeclaredMethod(REGISTER_METHOD, cls2).invoke(instance, getOnEventListenerProxy(cls2));
            return true;
        } catch (NoSuchMethodException e) {
            Fabric.getLogger().mo279w(CrashlyticsCore.TAG, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Method registerOnMeasurementEventListener not found.", e);
            return false;
        } catch (Exception e2) {
            Logger logger = Fabric.getLogger();
            logger.mo279w(CrashlyticsCore.TAG, ERROR_PREFIX + e2.getMessage(), e2);
            return true;
        }
    }
}
