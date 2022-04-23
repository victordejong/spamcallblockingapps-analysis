package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    public static final WeakHashMap<Object, AdListener> sListenersMap = new WeakHashMap<>();

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor.class */
    public static class SimpleMethodCaptor {
        public final InvocationHandler mInvocationHandler;
        public Method mLastInvokedMethod;

        public SimpleMethodCaptor() {
            this.mInvocationHandler = new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.SimpleMethodCaptor.1
                @Override // java.lang.reflect.InvocationHandler
                public Object invoke(Object obj, Method method, Object[] objArr) {
                    if ("toString".equals(method.getName())) {
                        return null;
                    }
                    SimpleMethodCaptor.this.mLastInvokedMethod = method;
                    return null;
                }
            };
        }

        public Method getLastMethod() {
            return this.mLastInvokedMethod;
        }

        public <T> T mock(Class<T> cls) {
            return (T) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.mInvocationHandler);
        }
    }

    public static boolean equalsMethods(Method method, Method method2) {
        return method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName());
    }

    public static DynamicLoader makeFallbackLoader() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final HashMap hashMap = new HashMap();
        SimpleMethodCaptor simpleMethodCaptor = new SimpleMethodCaptor();
        DynamicLoader dynamicLoader = (DynamicLoader) simpleMethodCaptor.mock(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createInstreamVideoAdViewApi(null, null, null, null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList3.add(simpleMethodCaptor.getLastMethod());
        dynamicLoader.createNativeAdApi(null, null);
        final Method lastMethod = simpleMethodCaptor.getLastMethod();
        dynamicLoader.createNativeBannerAdApi(null, null);
        final Method lastMethod2 = simpleMethodCaptor.getLastMethod();
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) simpleMethodCaptor.mock(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        nativeAdBaseApi.loadAd(null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        nativeAdBaseApi.loadAdFromBid(null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        nativeAdBaseApi.loadAdFromBid(null, null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        nativeAdBaseApi.buildLoadAdConfig();
        final Method lastMethod3 = simpleMethodCaptor.getLastMethod();
        nativeAdBaseApi.setAdListener(null, null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) simpleMethodCaptor.mock(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        interstitialAdApi.loadAd(null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        interstitialAdApi.loadAdFromBid(null, null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        interstitialAdApi.setAdListener(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) simpleMethodCaptor.mock(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        rewardedVideoAdApi.loadAd(false);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        rewardedVideoAdApi.loadAdFromBid(null, false);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        rewardedVideoAdApi.setAdListener(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        InstreamVideoAdViewApi instreamVideoAdViewApi = (InstreamVideoAdViewApi) simpleMethodCaptor.mock(InstreamVideoAdViewApi.class);
        instreamVideoAdViewApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        instreamVideoAdViewApi.loadAdFromBid(null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        instreamVideoAdViewApi.setAdListener(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        AdViewApi adViewApi = (AdViewApi) simpleMethodCaptor.mock(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(simpleMethodCaptor.getLastMethod());
        adViewApi.loadAdFromBid(null);
        arrayList.add(simpleMethodCaptor.getLastMethod());
        adViewApi.setAdListener(null);
        arrayList2.add(simpleMethodCaptor.getLastMethod());
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getReturnType().isPrimitive()) {
                    if (method.getReturnType().equals(Boolean.TYPE)) {
                        return false;
                    }
                    if (!method.getReturnType().equals(Integer.TYPE) && !method.getReturnType().equals(Byte.TYPE) && !method.getReturnType().equals(Short.TYPE)) {
                        if (method.getReturnType().equals(Long.TYPE)) {
                            return -1L;
                        }
                        if (method.getReturnType().equals(Double.TYPE)) {
                            return Double.valueOf(0.0d);
                        }
                        if (method.getReturnType().equals(Float.TYPE)) {
                            return Float.valueOf(0.0f);
                        }
                        if (method.getReturnType().equals(Character.TYPE)) {
                            return 0;
                        }
                        if (!method.getReturnType().equals(Void.TYPE)) {
                            return null;
                        }
                        Iterator it = arrayList2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (DynamicLoaderFallback.equalsMethods(method, (Method) it.next())) {
                                    DynamicLoaderFallback.sListenersMap.put(obj, (AdListener) objArr[0]);
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        for (Method method2 : arrayList) {
                            if (DynamicLoaderFallback.equalsMethods(method, method2) && DynamicLoaderFallback.reportError(obj, hashMap)) {
                                return null;
                            }
                        }
                        return null;
                    }
                    return -1;
                } else if (method.getReturnType().equals(String.class)) {
                    return "";
                } else {
                    Object newProxyInstance = Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                    for (Method method3 : arrayList3) {
                        if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                            for (Object obj2 : objArr) {
                                if (obj2 instanceof AbstractC7079Ad) {
                                    hashMap.put(newProxyInstance, (AbstractC7079Ad) obj2);
                                }
                            }
                        }
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, lastMethod)) {
                        hashMap.put(objArr[1], (AbstractC7079Ad) objArr[0]);
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, lastMethod2)) {
                        hashMap.put(objArr[1], (AbstractC7079Ad) objArr[0]);
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, lastMethod3)) {
                        DynamicLoaderFallback.reportError(obj, hashMap);
                    }
                    return newProxyInstance;
                }
            }
        });
    }

    public static boolean reportError(Object obj, Map<Object, AbstractC7079Ad> map) {
        final AdListener adListener = sListenersMap.get(obj);
        final AbstractC7079Ad ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.2
            @Override // java.lang.Runnable
            public void run() {
                AdListener.this.onError(ad, new AdError(-1, DynamicLoaderFactory.DEX_LOADING_ERROR_MESSAGE));
            }
        }, 500L);
        return true;
    }
}
