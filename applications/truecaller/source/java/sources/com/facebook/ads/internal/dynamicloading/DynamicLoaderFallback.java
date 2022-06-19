package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC0929Ad;
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
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a.class */
    public class C0941a implements InvocationHandler {

        /* renamed from: a */
        public final /* synthetic */ List f2594a;

        /* renamed from: b */
        public final /* synthetic */ Map f2595b;

        /* renamed from: c */
        public final /* synthetic */ List f2596c;

        /* renamed from: d */
        public final /* synthetic */ List f2597d;

        /* renamed from: e */
        public final /* synthetic */ Map f2598e;

        /* renamed from: f */
        public final /* synthetic */ List f2599f;

        /* renamed from: g */
        public final /* synthetic */ List f2600g;

        /* renamed from: h */
        public final /* synthetic */ Method f2601h;

        /* renamed from: i */
        public final /* synthetic */ Method f2602i;

        public C0941a(List list, Map map, List list2, List list3, Map map2, List list4, List list5, Method method, Method method2) {
            this.f2594a = list;
            this.f2595b = map;
            this.f2596c = list2;
            this.f2597d = list3;
            this.f2598e = map2;
            this.f2599f = list4;
            this.f2600g = list5;
            this.f2601h = method;
            this.f2602i = method2;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getReturnType().isPrimitive()) {
                if (!method.getReturnType().equals(Void.TYPE)) {
                    return Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                }
                Iterator it = this.f2594a.iterator();
                while (it.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it.next()) || !DynamicLoaderFallback.reportError(obj, this.f2595b))) {
                }
                for (Method method2 : this.f2596c) {
                    if (DynamicLoaderFallback.equalsMethods(method, method2) && DynamicLoaderFallback.reportError(obj, this.f2595b)) {
                        return null;
                    }
                }
                return null;
            } else if (method.getReturnType().equals(String.class)) {
                return "";
            } else {
                Object newProxyInstance = method.getReturnType().equals(obj.getClass().getInterfaces()[0]) ? obj : Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                Iterator it2 = this.f2597d.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (DynamicLoaderFallback.equalsMethods(method, (Method) it2.next())) {
                        DynamicLoaderFallback.sApiProxyToAdListenersMap.put(this.f2598e.get(obj), (AdListener) objArr[0]);
                        break;
                    }
                }
                for (Method method3 : this.f2599f) {
                    if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                        this.f2598e.put(newProxyInstance, obj);
                    }
                }
                for (Method method4 : this.f2600g) {
                    if (DynamicLoaderFallback.equalsMethods(method, method4)) {
                        for (Object obj2 : objArr) {
                            if (obj2 instanceof AbstractC0929Ad) {
                                this.f2595b.put(newProxyInstance, (AbstractC0929Ad) obj2);
                            }
                        }
                    }
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.f2601h)) {
                    this.f2595b.put(objArr[1], (AbstractC0929Ad) objArr[0]);
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.f2602i)) {
                    this.f2595b.put(objArr[1], (AbstractC0929Ad) objArr[0]);
                }
                return newProxyInstance;
            }
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$b.class */
    public class RunnableC0942b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdListener f2603a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC0929Ad f2604b;

        public RunnableC0942b(AdListener adListener, AbstractC0929Ad abstractC0929Ad) {
            this.f2603a = adListener;
            this.f2604b = abstractC0929Ad;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2603a.onError(this.f2604b, new AdError(-1, DynamicLoaderFactory.DEX_LOADING_ERROR_MESSAGE));
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$c.class */
    public static class C0943c {

        /* renamed from: a */
        public Method f2605a;

        /* renamed from: b */
        public final InvocationHandler f2606b = new C0944a();

        /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$c$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$c$a.class */
        public class C0944a implements InvocationHandler {
            public C0944a() {
                C0943c.this = r4;
            }

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (!"toString".equals(method.getName())) {
                    C0943c.this.f2605a = method;
                    return null;
                }
                return null;
            }
        }

        public C0943c(C0941a c0941a) {
        }

        /* renamed from: a */
        public <T> T m41979a(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.f2606b));
        }
    }

    private static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    public static boolean equalsMethods(Method method, Method method2) {
        return method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2);
    }

    public static DynamicLoader makeFallbackLoader() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        C0943c c0943c = new C0943c(null);
        DynamicLoader dynamicLoader = (DynamicLoader) c0943c.m41979a(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(c0943c.f2605a);
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(c0943c.f2605a);
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(c0943c.f2605a);
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList5.add(c0943c.f2605a);
        dynamicLoader.createNativeAdApi(null, null);
        Method method = c0943c.f2605a;
        dynamicLoader.createNativeBannerAdApi(null, null);
        Method method2 = c0943c.f2605a;
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) c0943c.m41979a(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(c0943c.f2605a);
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(c0943c.f2605a);
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(c0943c.f2605a);
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) c0943c.m41979a(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(c0943c.f2605a);
        interstitialAdApi.loadAd(null);
        arrayList2.add(c0943c.f2605a);
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(c0943c.f2605a);
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) c0943c.m41979a(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(c0943c.f2605a);
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(c0943c.f2605a);
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(c0943c.f2605a);
        AdViewApi adViewApi = (AdViewApi) c0943c.m41979a(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(c0943c.f2605a);
        adViewApi.loadAd(null);
        arrayList2.add(c0943c.f2605a);
        adViewApi.buildLoadAdConfig();
        arrayList4.add(c0943c.f2605a);
        ((AdView.AdViewLoadConfigBuilder) c0943c.m41979a(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c0943c.f2605a);
        ((NativeAdBase.NativeAdLoadConfigBuilder) c0943c.m41979a(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c0943c.f2605a);
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) c0943c.m41979a(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c0943c.f2605a);
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) c0943c.m41979a(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c0943c.f2605a);
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new C0941a(arrayList, hashMap, arrayList2, arrayList3, hashMap2, arrayList4, arrayList5, method, method2));
    }

    public static boolean reportError(Object obj, Map<Object, AbstractC0929Ad> map) {
        if (obj == null) {
            return false;
        }
        AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        AbstractC0929Ad abstractC0929Ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0942b(adListener, abstractC0929Ad), 500L);
        return true;
    }
}
