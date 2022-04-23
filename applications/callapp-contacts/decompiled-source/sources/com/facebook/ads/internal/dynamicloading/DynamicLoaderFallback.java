package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.Ad;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Method f19411a;

        /* renamed from: b  reason: collision with root package name */
        private final InvocationHandler f19412b;

        private a() {
            this.f19412b = new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.a.1
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method, Object[] objArr) {
                    if ("toString".equals(method.getName())) {
                        return null;
                    }
                    a.this.f19411a = method;
                    return null;
                }
            };
        }

        public final <T> T a(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.f19412b));
        }
    }

    DynamicLoaderFallback() {
    }

    private static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean equalsMethods(Method method, Method method2) {
        return method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DynamicLoader makeFallbackLoader() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        final ArrayList arrayList5 = new ArrayList();
        final HashMap hashMap = new HashMap();
        final HashMap hashMap2 = new HashMap();
        a aVar = new a();
        DynamicLoader dynamicLoader = (DynamicLoader) aVar.a(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(aVar.f19411a);
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(aVar.f19411a);
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(aVar.f19411a);
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList5.add(aVar.f19411a);
        dynamicLoader.createNativeAdApi(null, null);
        final Method method = aVar.f19411a;
        dynamicLoader.createNativeBannerAdApi(null, null);
        final Method method2 = aVar.f19411a;
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) aVar.a(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(aVar.f19411a);
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(aVar.f19411a);
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(aVar.f19411a);
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) aVar.a(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(aVar.f19411a);
        interstitialAdApi.loadAd(null);
        arrayList2.add(aVar.f19411a);
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(aVar.f19411a);
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) aVar.a(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(aVar.f19411a);
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(aVar.f19411a);
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(aVar.f19411a);
        AdViewApi adViewApi = (AdViewApi) aVar.a(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(aVar.f19411a);
        adViewApi.loadAd(null);
        arrayList2.add(aVar.f19411a);
        adViewApi.buildLoadAdConfig();
        arrayList4.add(aVar.f19411a);
        ((AdView.AdViewLoadConfigBuilder) aVar.a(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(aVar.f19411a);
        ((NativeAdBase.NativeAdLoadConfigBuilder) aVar.a(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(aVar.f19411a);
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) aVar.a(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(aVar.f19411a);
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) aVar.a(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(aVar.f19411a);
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
                        if (it3.hasNext()) {
                            if (DynamicLoaderFallback.equalsMethods(method3, (Method) it3.next())) {
                                DynamicLoaderFallback.sApiProxyToAdListenersMap.put(hashMap2.get(obj), (AdListener) objArr[0]);
                                break;
                            }
                        } else {
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
                                if (obj2 instanceof Ad) {
                                    hashMap.put(newProxyInstance, (Ad) obj2);
                                }
                            }
                        }
                    }
                    if (DynamicLoaderFallback.equalsMethods(method3, method)) {
                        hashMap.put(objArr[1], (Ad) objArr[0]);
                    }
                    if (DynamicLoaderFallback.equalsMethods(method3, method2)) {
                        hashMap.put(objArr[1], (Ad) objArr[0]);
                    }
                    return newProxyInstance;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean reportError(Object obj, Map<Object, Ad> map) {
        if (obj == null) {
            return false;
        }
        final AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        final Ad ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.2
            @Override // java.lang.Runnable
            public final void run() {
                AdListener.this.onError(ad, new AdError(-1, "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder."));
            }
        }, 500L);
        return true;
    }
}
