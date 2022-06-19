package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC1609Ad;
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
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a.class */
    public class C1621a implements InvocationHandler {

        /* renamed from: a */
        public final /* synthetic */ List f5999a;

        /* renamed from: b */
        public final /* synthetic */ Map f6000b;

        /* renamed from: c */
        public final /* synthetic */ List f6001c;

        /* renamed from: d */
        public final /* synthetic */ List f6002d;

        /* renamed from: e */
        public final /* synthetic */ Map f6003e;

        /* renamed from: f */
        public final /* synthetic */ List f6004f;

        /* renamed from: g */
        public final /* synthetic */ List f6005g;

        /* renamed from: h */
        public final /* synthetic */ Method f6006h;

        /* renamed from: i */
        public final /* synthetic */ Method f6007i;

        public C1621a(List list, Map map, List list2, List list3, Map map2, List list4, List list5, Method method, Method method2) {
            this.f5999a = list;
            this.f6000b = map;
            this.f6001c = list2;
            this.f6002d = list3;
            this.f6003e = map2;
            this.f6004f = list4;
            this.f6005g = list5;
            this.f6006h = method;
            this.f6007i = method2;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getReturnType().isPrimitive()) {
                if (!method.getReturnType().equals(Void.TYPE)) {
                    return Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                }
                Iterator it2 = this.f5999a.iterator();
                while (it2.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it2.next()) || !DynamicLoaderFallback.reportError(obj, this.f6000b))) {
                }
                for (Method method2 : this.f6001c) {
                    if (DynamicLoaderFallback.equalsMethods(method, method2) && DynamicLoaderFallback.reportError(obj, this.f6000b)) {
                        return null;
                    }
                }
                return null;
            } else if (method.getReturnType().equals(String.class)) {
                return "";
            } else {
                Object newProxyInstance = method.getReturnType().equals(obj.getClass().getInterfaces()[0]) ? obj : Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                Iterator it3 = this.f6002d.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    } else if (DynamicLoaderFallback.equalsMethods(method, (Method) it3.next())) {
                        DynamicLoaderFallback.sApiProxyToAdListenersMap.put(this.f6003e.get(obj), (AdListener) objArr[0]);
                        break;
                    }
                }
                for (Method method3 : this.f6004f) {
                    if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                        this.f6003e.put(newProxyInstance, obj);
                    }
                }
                for (Method method4 : this.f6005g) {
                    if (DynamicLoaderFallback.equalsMethods(method, method4)) {
                        for (Object obj2 : objArr) {
                            if (obj2 instanceof AbstractC1609Ad) {
                                this.f6000b.put(newProxyInstance, (AbstractC1609Ad) obj2);
                            }
                        }
                    }
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.f6006h)) {
                    this.f6000b.put(objArr[1], (AbstractC1609Ad) objArr[0]);
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.f6007i)) {
                    this.f6000b.put(objArr[1], (AbstractC1609Ad) objArr[0]);
                }
                return newProxyInstance;
            }
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$b.class */
    public class RunnableC1622b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdListener f6008a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC1609Ad f6009b;

        public RunnableC1622b(AdListener adListener, AbstractC1609Ad abstractC1609Ad) {
            this.f6008a = adListener;
            this.f6009b = abstractC1609Ad;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6008a.onError(this.f6009b, new AdError(-1, DynamicLoaderFactory.DEX_LOADING_ERROR_MESSAGE));
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$c.class */
    public static class C1623c {

        /* renamed from: a */
        public Method f6010a;

        /* renamed from: b */
        public final InvocationHandler f6011b = new C1624a();

        /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$c$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$c$a.class */
        public class C1624a implements InvocationHandler {
            public C1624a() {
                C1623c.this = r4;
            }

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (!"toString".equals(method.getName())) {
                    C1623c.this.f6010a = method;
                    return null;
                }
                return null;
            }
        }

        public C1623c(C1621a c1621a) {
        }

        /* renamed from: a */
        public <T> T m4849a(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.f6011b));
        }
    }

    private static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    public static boolean equalsMethods(Method method, Method method2) {
        return method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2);
    }

    @SuppressLint({"Parameter Not Nullable", "CatchGeneralException"})
    public static DynamicLoader makeFallbackLoader() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        C1623c c1623c = new C1623c(null);
        DynamicLoader dynamicLoader = (DynamicLoader) c1623c.m4849a(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(c1623c.f6010a);
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(c1623c.f6010a);
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(c1623c.f6010a);
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList5.add(c1623c.f6010a);
        dynamicLoader.createNativeAdApi(null, null);
        Method method = c1623c.f6010a;
        dynamicLoader.createNativeBannerAdApi(null, null);
        Method method2 = c1623c.f6010a;
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) c1623c.m4849a(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(c1623c.f6010a);
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(c1623c.f6010a);
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(c1623c.f6010a);
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) c1623c.m4849a(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(c1623c.f6010a);
        interstitialAdApi.loadAd(null);
        arrayList2.add(c1623c.f6010a);
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(c1623c.f6010a);
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) c1623c.m4849a(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(c1623c.f6010a);
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(c1623c.f6010a);
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(c1623c.f6010a);
        AdViewApi adViewApi = (AdViewApi) c1623c.m4849a(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(c1623c.f6010a);
        adViewApi.loadAd(null);
        arrayList2.add(c1623c.f6010a);
        adViewApi.buildLoadAdConfig();
        arrayList4.add(c1623c.f6010a);
        ((AdView.AdViewLoadConfigBuilder) c1623c.m4849a(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c1623c.f6010a);
        ((NativeAdBase.NativeAdLoadConfigBuilder) c1623c.m4849a(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c1623c.f6010a);
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) c1623c.m4849a(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c1623c.f6010a);
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) c1623c.m4849a(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(c1623c.f6010a);
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new C1621a(arrayList, hashMap, arrayList2, arrayList3, hashMap2, arrayList4, arrayList5, method, method2));
    }

    public static boolean reportError(Object obj, Map<Object, AbstractC1609Ad> map) {
        if (obj == null) {
            return false;
        }
        AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        AbstractC1609Ad abstractC1609Ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC1622b(adListener, abstractC1609Ad), 500L);
        return true;
    }
}
