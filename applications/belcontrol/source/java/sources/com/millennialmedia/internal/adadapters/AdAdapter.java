package com.millennialmedia.internal.adadapters;

import com.millennialmedia.CreativeInfo;
import com.millennialmedia.InlineAd;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.NativeAd;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.adcontrollers.AdController;
import com.millennialmedia.internal.adcontrollers.LightboxController;
import com.millennialmedia.internal.adcontrollers.NativeController;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
import com.millennialmedia.internal.adcontrollers.WebController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/AdAdapter.class */
public abstract class AdAdapter {
    public static final int DEFAULT_MIN_IMPRESSION_DELAY = 1000;
    public static final int DEFAULT_MIN_IMPRESSION_VIEWABILITY_PERCENTAGE = 50;
    public static final int NO_IMPRESSION_DELAY = 0;
    public static final int NO_MIN_IMPRESSION_VIEWABILITY_PERCENTAGE = -1;
    private static final String TAG = "AdAdapter";
    private static List<AdapterRegistration> registeredAdapters = new ArrayList();
    private static Map<Class<? extends AdPlacement>, Class<? extends MediatedAdAdapter>> registeredMediatedAdAdapters = new HashMap();
    public String adContent;
    private CreativeInfo creativeInfo;
    public AdMetadata adMetadata = new AdMetadata();
    public int requestTimeout = 0;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration.class */
    public static class AdapterRegistration {
        public Class<?> adAdapterClass;
        public Class<?> adControllerClass;
        public Class<?> adPlacementClass;

        public AdapterRegistration(Class<?> cls, Class<?> cls2, Class<?> cls3) {
            this.adPlacementClass = cls;
            this.adAdapterClass = cls2;
            this.adControllerClass = cls3;
        }
    }

    public static AdAdapter getAdapterInstance(Class<?> cls, Class<?> cls2) {
        Class<?> cls3;
        AdAdapter adAdapter;
        Iterator<AdapterRegistration> it = registeredAdapters.iterator();
        while (true) {
            if (!it.hasNext()) {
                cls3 = null;
                break;
            }
            AdapterRegistration next = it.next();
            boolean equals = next.adPlacementClass.equals(cls);
            boolean equals2 = next.adControllerClass.equals(cls2);
            if (equals && equals2) {
                cls3 = next.adAdapterClass;
                break;
            }
        }
        try {
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Unable to create ad adapter instance for the placement type <" + cls + "> and ad controller type <" + cls2 + ">", e);
            adAdapter = null;
        }
        if (cls3 != null) {
            adAdapter = (AdAdapter) cls3.getConstructor(new Class[0]).newInstance(new Object[0]);
            return adAdapter;
        }
        throw new Exception("Unable to find adapter class");
    }

    public static MediatedAdAdapter getMediatedAdapterInstance(Class<? extends AdPlacement> cls) {
        if (cls == null) {
            MMLog.m4068e(TAG, "Ad placement class cannot be null.");
            return null;
        }
        Class<? extends MediatedAdAdapter> cls2 = registeredMediatedAdAdapters.get(cls);
        if (cls2 == null) {
            MMLog.m4068e(TAG, String.format("No mediated ad adapters registered for placement type: %s", cls));
            return null;
        }
        try {
            return cls2.newInstance();
        } catch (Throwable th) {
            MMLog.m4067e(TAG, String.format("Unable to instantiate mediated ad adapter class %s for placement %s.", cls2, cls), th);
            return null;
        }
    }

    public static void registerAdapter(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        if (AdPlacement.class.isAssignableFrom(cls)) {
            if (!AdAdapter.class.isAssignableFrom(cls2)) {
                throw new IllegalArgumentException("Unable to register ad adapter, specified adapter class is not an instance of AdAdapter");
            }
            if (!AdController.class.isAssignableFrom(cls3)) {
                throw new IllegalArgumentException("Unable to register ad adapter, specified controller class is not an instance of AdController");
            }
            if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4070d(str, "Registering ad adapter <" + cls2 + "> for ad placement <" + cls + "> and ad controller <" + cls3 + ">");
            }
            Iterator<AdapterRegistration> it = registeredAdapters.iterator();
            while (it.hasNext()) {
                AdapterRegistration next = it.next();
                if (next.adPlacementClass == cls && next.adAdapterClass == cls2 && next.adControllerClass == cls3) {
                    it.remove();
                }
            }
            registeredAdapters.add(new AdapterRegistration(cls, cls2, cls3));
            return;
        }
        throw new IllegalArgumentException("Unable to register ad adapter, specified placement class is not an instance of AdPlacement");
    }

    public static void registerMediatedAdAdapter(Class<? extends AdPlacement> cls, Class<? extends MediatedAdAdapter> cls2) {
        if (cls != null) {
            if (cls2 == null) {
                throw new IllegalArgumentException("Unable to register mediated ad adapter, specified mediated ad adapter class must not be null.");
            }
            if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4070d(str, "Registering mediated ad adapter <" + cls2 + "> for ad placement <" + cls + ">");
            }
            registeredMediatedAdAdapters.put(cls, cls2);
            return;
        }
        throw new IllegalArgumentException("Unable to register mediated ad adapter, specified placement class must not be null.");
    }

    public static void registerPackagedAdapters() {
        registerAdapter(InlineAd.class, InlineLightboxAdapter.class, LightboxController.class);
        registerAdapter(InterstitialAd.class, InterstitialVASTVideoAdapter.class, VASTVideoController.class);
        registerAdapter(InlineAd.class, InlineWebAdapter.class, WebController.class);
        registerAdapter(InterstitialAd.class, InterstitialWebAdapter.class, WebController.class);
        registerAdapter(NativeAd.class, NativeNativeAdapter.class, NativeController.class);
    }

    public CreativeInfo getCreativeInfo() {
        return this.creativeInfo;
    }

    public long getImpressionDelay() {
        return 1000L;
    }

    public int getMinImpressionViewabilityPercentage() {
        return 50;
    }

    public abstract void release();

    public void setAdMetadata(AdMetadata adMetadata) {
        this.adMetadata.addAll(adMetadata);
    }

    public void setContent(String str) {
        this.adContent = str;
    }

    public void setCreativeInfo(CreativeInfo creativeInfo) {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "CreativeInfo " + creativeInfo);
        }
        this.creativeInfo = creativeInfo;
    }
}
