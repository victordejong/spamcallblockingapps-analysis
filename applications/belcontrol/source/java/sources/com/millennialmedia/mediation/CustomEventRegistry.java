package com.millennialmedia.mediation;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdPlacement;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventRegistry.class */
public class CustomEventRegistry {
    private static final String TAG = "CustomEventRegistry";
    private static Map<CustomEventRegistrationKey, String> customEventRegistrations = new HashMap();

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventRegistry$CustomEventRegistrationKey.class */
    public static class CustomEventRegistrationKey {
        public Class<? extends AdPlacement> adPlacementClass;
        public String mediationId;

        public CustomEventRegistrationKey(String str, Class<? extends AdPlacement> cls) {
            this.mediationId = str;
            this.adPlacementClass = cls;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            CustomEventRegistrationKey customEventRegistrationKey = (CustomEventRegistrationKey) obj;
            if (this.adPlacementClass.equals(customEventRegistrationKey.adPlacementClass)) {
                return this.mediationId.equals(customEventRegistrationKey.mediationId);
            }
            return false;
        }

        public int hashCode() {
            return (this.adPlacementClass.hashCode() * 31) + this.mediationId.hashCode();
        }

        public String toString() {
            return "CustomEventRegistrationKey{adPlacementClass=" + this.adPlacementClass + ", mediationId='" + this.mediationId + "'}";
        }
    }

    public static <T> T getCustomEvent(Class<? extends AdPlacement> cls, String str, Class<T> cls2) {
        CustomEventRegistrationKey customEventRegistrationKey = new CustomEventRegistrationKey(str, cls);
        String str2 = customEventRegistrations.get(customEventRegistrationKey);
        if (str2 == null) {
            MMLog.m4068e(TAG, String.format("No custom event class registered for %s", customEventRegistrationKey));
            return null;
        }
        try {
            T t = (T) Class.forName(str2).newInstance();
            if (cls2.isInstance(t)) {
                return t;
            }
            MMLog.m4068e(TAG, String.format("Expected custom event type %s but found %s.", cls2, t.getClass()));
            return null;
        } catch (Throwable th) {
            MMLog.m4068e(TAG, String.format("Unable to instantiate custom event class %s", str2));
            return null;
        }
    }

    public static void register(String str, Class<? extends AdPlacement> cls, String str2) {
        if (str != null) {
            if (cls == null) {
                throw new IllegalArgumentException("Unable to register custom event, specified placement class must not be null.");
            }
            if (str2 == null) {
                throw new IllegalArgumentException("Unable to register custom event, specified custom event class name must not be null.");
            }
            if (MMLog.isDebugEnabled()) {
                String str3 = TAG;
                MMLog.m4070d(str3, "Registering custom event <" + str2 + "> for mediation id <" + str + "> and ad placement <" + cls + ">");
            }
            customEventRegistrations.put(new CustomEventRegistrationKey(str, cls), str2);
            return;
        }
        throw new IllegalArgumentException("Unable to register custom event, specified mediation ID cannot be null");
    }
}
