package com.appnext.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.Appnext;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.C0551g;
import com.appnext.core.SettingsManager;
import com.appnext.nativeads.NativeAdRequest;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/AdLoader.class */
public class AdLoader {
    private int count;

    /* renamed from: fy */
    private NativeAdListener f1923fy;

    /* renamed from: fz */
    private NativeAdRequest f1924fz;
    private NativeAdObject nativeAdObject;

    private AdLoader(Context context, String str) {
        this.nativeAdObject = new NativeAdObject(context, str);
    }

    /* renamed from: a */
    public static /* synthetic */ void m42248a(AdLoader adLoader, String str) {
        try {
            adLoader.nativeAdObject.setCategories(adLoader.f1924fz.getCategories());
            adLoader.nativeAdObject.setSpecificCategories(adLoader.f1924fz.getSpecificCategories());
            adLoader.nativeAdObject.setPostback(adLoader.f1924fz.getPostback());
            if (!TextUtils.isEmpty(str)) {
                adLoader.nativeAdObject.setPackageName(str);
            }
            adLoader.nativeAdObject.setMinVideoLength(adLoader.f1924fz.getMinVideoLength());
            adLoader.nativeAdObject.setMaxVideoLength(adLoader.f1924fz.getMaxVideoLength());
            C0641b m42201be = C0641b.m42201be();
            Context context = adLoader.nativeAdObject.getContext();
            NativeAdObject nativeAdObject = adLoader.nativeAdObject;
            m42201be.m42209a(context, nativeAdObject, nativeAdObject.getPlacementID(), new AbstractC0533d.AbstractC0538a() { // from class: com.appnext.nativeads.AdLoader.2
                @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
                /* renamed from: a */
                public final <T> void mo42109a(T t) {
                    try {
                        if (t == null) {
                            if (AdLoader.this.f1923fy == null) {
                                return;
                            }
                            AdLoader.this.f1923fy.onError(null, new AppnextError(AppnextError.NO_ADS));
                        } else if (AdLoader.this.f1924fz == null) {
                            if (AdLoader.this.f1923fy == null) {
                                return;
                            }
                            AdLoader.this.f1923fy.onError(null, new AppnextError(AppnextError.NO_ADS));
                        } else {
                            if (AdLoader.this.f1924fz.getVideoLength() == NativeAdRequest.VideoLength.DEFAULT) {
                                AdLoader.this.f1924fz.setVideoLength(NativeAdRequest.VideoLength.fromInt(Integer.parseInt(C0640a.m42211bc().m42476y("default_video_length"))));
                            }
                            if (AdLoader.this.f1924fz.getVideoQuality() == NativeAdRequest.VideoQuality.DEFAULT) {
                                AdLoader.this.f1924fz.setVideoQuality(NativeAdRequest.VideoQuality.fromInt(Integer.parseInt(C0640a.m42211bc().m42476y("default_video_quality"))));
                            }
                            ArrayList<AppnextAd> m42204a = C0641b.m42201be().m42204a(AdLoader.this.nativeAdObject.getPlacementID(), AdLoader.this.f1924fz, (ArrayList) t);
                            if (m42204a.size() == 0) {
                                if (AdLoader.this.f1923fy == null) {
                                    return;
                                }
                                AdLoader.this.f1923fy.onError(null, new AppnextError(AppnextError.NO_ADS));
                                return;
                            }
                            for (int i = 0; i < Math.min(m42204a.size(), AdLoader.this.count); i++) {
                                NativeAd nativeAd = new NativeAd(AdLoader.this.nativeAdObject.getContext(), AdLoader.this.nativeAdObject.getPlacementID());
                                AppnextAd appnextAd = m42204a.get(i);
                                nativeAd.setLoadedAd(new NativeAdData(appnextAd), AdLoader.this.f1924fz);
                                nativeAd.setAdListener(AdLoader.this.f1923fy);
                                if (AdLoader.this.f1923fy != null) {
                                    AdLoader.this.f1923fy.onAdLoaded(nativeAd, appnextAd.getCreativeType());
                                }
                            }
                        }
                    } catch (Throwable th) {
                        C0472a.m42577a("AdLoader$load", th);
                    }
                }

                @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
                public final void error(String str2) {
                    if (str2 != null) {
                        try {
                            if (!str2.equals(AppnextError.NO_ADS) && !str2.equals(AppnextError.INTERNAL_ERROR)) {
                                AdLoader.this.f1923fy.onError(null, new AppnextError(str2));
                                AdLoader.m42244e(AdLoader.this);
                            }
                        } catch (Throwable th) {
                            C0472a.m42577a("AdLoader$load", th);
                            return;
                        }
                    }
                    AdLoader.this.f1923fy.onError(null, new AppnextError(AppnextError.NO_ADS));
                    AdLoader.m42244e(AdLoader.this);
                }
            }, adLoader.f1924fz);
        } catch (Throwable th) {
            C0472a.m42577a("AdLoader$load", th);
        }
    }

    /* renamed from: e */
    public static /* synthetic */ void m42244e(AdLoader adLoader) {
        try {
            adLoader.f1923fy = null;
            adLoader.f1924fz = null;
            NativeAdObject nativeAdObject = adLoader.nativeAdObject;
            if (nativeAdObject == null) {
                return;
            }
            nativeAdObject.destroy();
            adLoader.nativeAdObject = null;
        } catch (Throwable th) {
            C0472a.m42577a("AdLoader$load", th);
        }
    }

    public static void getAdsByPackage(Context context, String str, final String str2, NativeAdRequest nativeAdRequest, NativeAdListener nativeAdListener, int i) {
        try {
            if (!C0551g.m42368k(context)) {
                if (nativeAdListener == null) {
                    return;
                }
                nativeAdListener.onError(null, new AppnextError(AppnextError.CONNECTION_ERROR));
                return;
            }
            Appnext.init(context);
            if (nativeAdRequest == null || nativeAdListener == null || i <= 0) {
                return;
            }
            AdLoader adLoader = new AdLoader(context, str);
            adLoader.f1924fz = new NativeAdRequest(nativeAdRequest);
            adLoader.count = i;
            adLoader.f1923fy = nativeAdListener;
            C0640a.m42211bc().m42483a(context, str, new SettingsManager.ConfigCallback() { // from class: com.appnext.nativeads.AdLoader.1
                @Override // com.appnext.core.SettingsManager.ConfigCallback
                public final void error(String str3) {
                    try {
                        AdLoader.m42248a(AdLoader.this, str2);
                    } catch (Throwable th) {
                    }
                }

                @Override // com.appnext.core.SettingsManager.ConfigCallback
                public final void loaded(HashMap<String, Object> hashMap) {
                    try {
                        AdLoader.m42248a(AdLoader.this, str2);
                    } catch (Throwable th) {
                    }
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("AdLoader$getAdsByPackage", th);
        }
    }

    public static void load(Context context, String str, NativeAdRequest nativeAdRequest, NativeAdListener nativeAdListener, int i) {
        try {
            getAdsByPackage(context, str, null, nativeAdRequest, nativeAdListener, i);
        } catch (Throwable th) {
            C0472a.m42577a("AdLoader$load", th);
        }
    }
}
