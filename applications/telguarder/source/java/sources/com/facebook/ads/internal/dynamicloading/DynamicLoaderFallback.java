package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor.class */
    public static class SimpleMethodCaptor {
        private final InvocationHandler mInvocationHandler;
        private Method mLastInvokedMethod;

        private SimpleMethodCaptor() {
            this.mInvocationHandler = new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.SimpleMethodCaptor.1
                @Override // java.lang.reflect.InvocationHandler
                public Object invoke(Object obj, Method method, Object[] objArr) {
                    if (!"toString".equals(method.getName())) {
                        SimpleMethodCaptor.this.mLastInvokedMethod = method;
                        return null;
                    }
                    return null;
                }
            };
        }

        Method getLastMethod() {
            return this.mLastInvokedMethod;
        }

        public <T> T mock(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.mInvocationHandler));
        }
    }

    DynamicLoaderFallback() {
    }

    private static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    public static boolean equalsMethods(Method method, Method method2) {
        return method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2);
    }

    public static DynamicLoader makeFallbackLoader() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        final ArrayList arrayList5 = new ArrayList();
        final HashMap hashMap = new HashMap();
        final HashMap hashMap2 = new HashMap();
        SimpleMethodCaptor simpleMethodCaptor = new SimpleMethodCaptor();
        DynamicLoader dynamicLoader = (DynamicLoader) simpleMethodCaptor.mock(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(simpleMethodCaptor.getLastMethod());
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList5.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createNativeAdApi(null, null);
        final Method lastMethod = simpleMethodCaptor.getLastMethod();
        dynamicLoader.createNativeBannerAdApi(null, null);
        final Method lastMethod2 = simpleMethodCaptor.getLastMethod();
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) simpleMethodCaptor.mock(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(simpleMethodCaptor.getLastMethod());
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) simpleMethodCaptor.mock(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        interstitialAdApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(simpleMethodCaptor.getLastMethod());
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) simpleMethodCaptor.mock(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(simpleMethodCaptor.getLastMethod());
        AdViewApi adViewApi = (AdViewApi) simpleMethodCaptor.mock(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        adViewApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        adViewApi.buildLoadAdConfig();
        arrayList4.add(simpleMethodCaptor.getLastMethod());
        ((AdView.AdViewLoadConfigBuilder) simpleMethodCaptor.mock(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        ((NativeAdBase.NativeAdLoadConfigBuilder) simpleMethodCaptor.mock(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) simpleMethodCaptor.mock(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) simpleMethodCaptor.mock(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getReturnType().isPrimitive()) {
                    if (!method.getReturnType().equals(Void.TYPE)) {
                        return Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it.next()) || !DynamicLoaderFallback.reportError(obj, hashMap))) {
                    }
                    for (Method method2 : arrayList2) {
                        if (DynamicLoaderFallback.equalsMethods(method, method2) && DynamicLoaderFallback.reportError(obj, hashMap)) {
                            return null;
                        }
                    }
                    return null;
                } else if (method.getReturnType().equals(String.class)) {
                    return "";
                } else {
                    Object newProxyInstance = method.getReturnType().equals(obj.getClass().getInterfaces()[0]) ? obj : Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                    Iterator it2 = arrayList3.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        } else if (DynamicLoaderFallback.equalsMethods(method, (Method) it2.next())) {
                            DynamicLoaderFallback.sApiProxyToAdListenersMap.put(hashMap2.get(obj), (AdListener) objArr[0]);
                            break;
                        }
                    }
                    for (Method method3 : arrayList4) {
                        if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                            hashMap2.put(newProxyInstance, obj);
                        }
                    }
                    for (Method method4 : arrayList5) {
                        if (DynamicLoaderFallback.equalsMethods(method, method4)) {
                            for (Object obj2 : objArr) {
                                if (obj2 instanceof AbstractC0845Ad) {
                                    hashMap.put(newProxyInstance, (AbstractC0845Ad) obj2);
                                }
                            }
                        }
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, lastMethod)) {
                        hashMap.put(objArr[1], (AbstractC0845Ad) objArr[0]);
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, lastMethod2)) {
                        hashMap.put(objArr[1], (AbstractC0845Ad) objArr[0]);
                    }
                    return newProxyInstance;
                }
            }
        });
    }

    public static boolean reportError(Object obj, Map<Object, AbstractC0845Ad> map) {
        if (obj == null) {
            return false;
        }
        final AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        final AbstractC0845Ad abstractC0845Ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.2
            @Override // java.lang.Runnable
            public void run() {
                adListener.onError(abstractC0845Ad, new AdError(-1, "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder."));
            }
        }, 500L);
        return true;
    }
}
