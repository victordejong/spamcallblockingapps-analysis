package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.AbstractC9941Ad;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a.class */
    public static final class C9955a {

        /* renamed from: a */
        Method f33133a;

        /* renamed from: b */
        private final InvocationHandler f33134b;

        private C9955a() {
            this.f33134b = new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.a.1
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    if (!"toString".equals(method.getName())) {
                        C9955a.this.f33133a = method;
                        return null;
                    }
                    return null;
                }
            };
        }

        /* renamed from: a */
        public final <T> T m23748a(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.f33134b));
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
        C9955a c9955a = new C9955a();
        DynamicLoader dynamicLoader = (DynamicLoader) c9955a.m23748a(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(c9955a.f33133a);
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(c9955a.f33133a);
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(c9955a.f33133a);
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList5.add(c9955a.f33133a);
        dynamicLoader.createNativeAdApi(null, null);
        final Method method = c9955a.f33133a;
        dynamicLoader.createNativeBannerAdApi(null, null);
        final Method method2 = c9955a.f33133a;
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) c9955a.m23748a(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(c9955a.f33133a);
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(c9955a.f33133a);
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(c9955a.f33133a);
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) c9955a.m23748a(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(c9955a.f33133a);
        interstitialAdApi.loadAd(null);
        arrayList2.add(c9955a.f33133a);
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(c9955a.f33133a);
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) c9955a.m23748a(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(c9955a.f33133a);
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(c9955a.f33133a);
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(c9955a.f33133a);
        AdViewApi adViewApi = (AdViewApi) c9955a.m23748a(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(c9955a.f33133a);
        adViewApi.loadAd(null);
        arrayList2.add(c9955a.f33133a);
        adViewApi.buildLoadAdConfig();
        arrayList4.add(c9955a.f33133a);
        ((AdView.AdViewLoadConfigBuilder) c9955a.m23748a(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c9955a.f33133a);
        ((NativeAdBase.NativeAdLoadConfigBuilder) c9955a.m23748a(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c9955a.f33133a);
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) c9955a.m23748a(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c9955a.f33133a);
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) c9955a.m23748a(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c9955a.f33133a);
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.1
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method3, Object[] objArr) {
                if (method3.getReturnType().isPrimitive()) {
                    if (!method3.getReturnType().equals(Void.TYPE)) {
                        return Array.get(Array.newInstance(method3.getReturnType(), 1), 0);
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext() && (!DynamicLoaderFallback.equalsMethods(method3, (Method) it2.next()) || !DynamicLoaderFallback.reportError(obj, hashMap))) {
                    }
                    for (Method method4 : arrayList2) {
                        if (DynamicLoaderFallback.equalsMethods(method3, method4) && DynamicLoaderFallback.reportError(obj, hashMap)) {
                            return null;
                        }
                    }
                    return null;
                } else if (method3.getReturnType().equals(String.class)) {
                    return "";
                } else {
                    Object newProxyInstance = method3.getReturnType().equals(obj.getClass().getInterfaces()[0]) ? obj : Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method3.getReturnType()}, this);
                    Iterator it3 = arrayList3.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        } else if (DynamicLoaderFallback.equalsMethods(method3, (Method) it3.next())) {
                            DynamicLoaderFallback.sApiProxyToAdListenersMap.put(hashMap2.get(obj), (AdListener) objArr[0]);
                            break;
                        }
                    }
                    for (Method method5 : arrayList4) {
                        if (DynamicLoaderFallback.equalsMethods(method3, method5)) {
                            hashMap2.put(newProxyInstance, obj);
                        }
                    }
                    for (Method method6 : arrayList5) {
                        if (DynamicLoaderFallback.equalsMethods(method3, method6)) {
                            for (Object obj2 : objArr) {
                                if (obj2 instanceof AbstractC9941Ad) {
                                    hashMap.put(newProxyInstance, (AbstractC9941Ad) obj2);
                                }
                            }
                        }
                    }
                    if (DynamicLoaderFallback.equalsMethods(method3, method)) {
                        hashMap.put(objArr[1], (AbstractC9941Ad) objArr[0]);
                    }
                    if (DynamicLoaderFallback.equalsMethods(method3, method2)) {
                        hashMap.put(objArr[1], (AbstractC9941Ad) objArr[0]);
                    }
                    return newProxyInstance;
                }
            }
        });
    }

    public static boolean reportError(Object obj, Map<Object, AbstractC9941Ad> map) {
        if (obj == null) {
            return false;
        }
        final AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        final AbstractC9941Ad abstractC9941Ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.2
            @Override // java.lang.Runnable
            public final void run() {
                adListener.onError(abstractC9941Ad, new AdError(-1, "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder."));
            }
        }, 500L);
        return true;
    }
}
