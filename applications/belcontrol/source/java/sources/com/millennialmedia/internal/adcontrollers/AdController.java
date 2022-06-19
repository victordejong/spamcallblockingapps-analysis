package com.millennialmedia.internal.adcontrollers;

import com.millennialmedia.MMLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/AdController.class */
public abstract class AdController {
    private static final String TAG = "AdController";
    private static List<AdController> registeredControllers = new ArrayList();

    public static Class<?> getControllerClassForContent(String str) {
        Class<?> cls;
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Attempting to get controller class for ad content.\n" + str);
        }
        Iterator<AdController> it = registeredControllers.iterator();
        while (true) {
            cls = null;
            if (!it.hasNext()) {
                break;
            }
            AdController next = it.next();
            if (next.canHandleContent(str)) {
                Class<?> cls2 = next.getClass();
                cls = cls2;
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "Found controller class <" + cls2.getName() + "> for ad content");
                    cls = cls2;
                }
            }
        }
        if (cls == null) {
            MMLog.m4068e(TAG, "Unable to find AdController for content <" + str + ">");
        }
        return cls;
    }

    public static void registerController(AdController adController) {
        if (adController != null) {
            if (registeredControllers.contains(adController)) {
                String str = TAG;
                MMLog.m4062w(str, "Ad controller <" + adController.getClass() + "> already registered");
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str2 = TAG;
                MMLog.m4070d(str2, "Registering ad controller <" + adController.getClass() + ">");
            }
            registeredControllers.add(adController);
            return;
        }
        throw new IllegalArgumentException("Unable to register ad controller, specified controller cannot be null");
    }

    public static void registerPackagedControllers() {
        registerController(new LightboxController());
        registerController(new VASTVideoController());
        registerController(new NativeController());
        registerController(new WebController());
    }

    public abstract boolean canHandleContent(String str);

    public abstract void close();

    public abstract void release();
}
