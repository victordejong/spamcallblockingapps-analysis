package com.appnext.nativeads.designed_native_ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.nativeads.C0641b;
import com.appnext.nativeads.NativeAdRequest;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appnext.nativeads.designed_native_ads.a */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/a.class */
public final class C0643a {

    /* renamed from: ge */
    private WeakReference<AbstractC0646a> f1989ge;

    /* renamed from: gf */
    private List<DesignNativeAd> f1990gf;

    /* renamed from: com.appnext.nativeads.designed_native_ads.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/a$a.class */
    public interface AbstractC0646a {
        /* renamed from: e */
        void mo42156e(List<DesignNativeAd> list);

        void onError(AppnextError appnextError);
    }

    /* renamed from: a */
    public final void m42199a(Context context, String str, DesignNativeAdsRequest designNativeAdsRequest, final int i) {
        final AbstractC0501Ad designNativeAdObject = new DesignNativeAdObject(context, str);
        if (designNativeAdsRequest != null) {
            designNativeAdObject.setCategories(designNativeAdsRequest.getCategories());
            designNativeAdObject.setSpecificCategories(designNativeAdsRequest.getSpecificCategories());
            designNativeAdObject.setPostback(designNativeAdsRequest.getPostBack());
        }
        b bf = b.bf();
        AbstractC0533d.AbstractC0538a abstractC0538a = new AbstractC0533d.AbstractC0538a() { // from class: com.appnext.nativeads.designed_native_ads.a.1
            @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
            /* renamed from: a */
            public final <T> void mo42109a(T t) {
                AbstractC0646a abstractC0646a;
                try {
                    if (C0643a.this.f1989ge == null || (abstractC0646a = (AbstractC0646a) C0643a.this.f1989ge.get()) == null) {
                        return;
                    }
                    if (t == null) {
                        abstractC0646a.onError(new AppnextError(AppnextError.NO_ADS));
                        return;
                    }
                    ArrayList<AppnextAd> m42204a = C0641b.m42201be().m42204a(designNativeAdObject.getPlacementID(), new NativeAdRequest(), (ArrayList) t);
                    if (m42204a.size() == 0) {
                        abstractC0646a.onError(new AppnextError(AppnextError.NO_ADS));
                        return;
                    }
                    int size = m42204a.size();
                    int i2 = i;
                    if (size > i2) {
                        m42204a.subList(i2, m42204a.size()).clear();
                    }
                    C0643a.this.f1990gf = new ArrayList();
                    for (AppnextAd appnextAd : m42204a) {
                        String imageURL = appnextAd.getImageURL();
                        if (!TextUtils.isEmpty(imageURL)) {
                            C0643a.this.f1990gf.add(new DesignNativeAd(appnextAd, imageURL));
                        }
                    }
                    new StringBuilder("Designed - ads count with icon = ").append(C0643a.this.f1990gf.size());
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.nativeads.designed_native_ads.a.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC0646a abstractC0646a2;
                            if (C0643a.this.f1989ge == null || (abstractC0646a2 = (AbstractC0646a) C0643a.this.f1989ge.get()) == null) {
                                return;
                            }
                            abstractC0646a2.mo42156e(C0643a.this.f1990gf);
                        }
                    });
                } catch (Throwable th) {
                    C0472a.m42577a("DesignNativeAdsController$loadAds", th);
                }
            }

            @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
            public final void error(String str2) {
                AbstractC0646a abstractC0646a;
                try {
                    if (C0643a.this.f1989ge == null || (abstractC0646a = (AbstractC0646a) C0643a.this.f1989ge.get()) == null) {
                        return;
                    }
                    if (str2 != null && !str2.equals(AppnextError.NO_ADS) && !str2.equals(AppnextError.INTERNAL_ERROR)) {
                        abstractC0646a.onError(new AppnextError(str2));
                        return;
                    }
                    abstractC0646a.onError(new AppnextError(AppnextError.NO_ADS));
                } catch (Throwable th) {
                    C0472a.m42577a("DesignNativeAdsController$loadAds", th);
                }
            }
        };
        NativeAdRequest nativeAdRequest = new NativeAdRequest();
        if (designNativeAdsRequest != null) {
            nativeAdRequest.setCategories(designNativeAdsRequest.getCategories());
            nativeAdRequest.setSpecificCategories(designNativeAdsRequest.getSpecificCategories());
            nativeAdRequest.setPostback(designNativeAdsRequest.getPostBack());
        }
        bf.m42209a(context, designNativeAdObject, str, abstractC0538a, nativeAdRequest);
    }

    /* renamed from: a */
    public final void m42198a(AbstractC0646a abstractC0646a) {
        this.f1989ge = new WeakReference<>(abstractC0646a);
    }
}
