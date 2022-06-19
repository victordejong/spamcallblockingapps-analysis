package com.appnext.nativeads;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.C0551g;
import com.appnext.core.C0555i;
import com.appnext.core.C0557j;
import com.appnext.core.C0564o;
import com.appnext.core.C0566q;
import com.appnext.core.SettingsManager;
import com.appnext.core.adswatched.C0524a;
import com.appnext.core.p017a.C0522a;
import com.appnext.core.result.AbstractC0599a;
import com.appnext.core.result.AbstractC0601c;
import com.appnext.core.result.C0602d;
import com.appnext.core.result.ResultPageActivity;
import com.appnext.nativeads.MediaView;
import com.appnext.nativeads.NativeAdRequest;
import com.appnext.nativeads.NativeAdView;
import com.appnext.p005a.C0468a;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAd.class */
public class NativeAd {
    private NativeAdListener adListener;
    private NativeAdRequest.CreativeType creativeType;
    private String language;
    private NativeAdData loadedAd;
    private MediaView mediaView;
    private NativeAdObject nativeAdObject;
    private NativeAdView nativeAdView;
    private C0566q userAction;
    private boolean reportedImpression = false;
    private boolean reportedVTA = false;
    private int privacyPolicyPosition = 1;
    private int privacyPolicyColor = 0;
    private int privacyPolicyVisibility = 0;
    private boolean clicked = false;
    private List<View> clicksListView = new ArrayList();
    private NativeAdView.AbstractC0634a adViewActions = new NativeAdView.AbstractC0634a() { // from class: com.appnext.nativeads.NativeAd.1
        @Override // com.appnext.nativeads.NativeAdView.AbstractC0634a
        /* renamed from: d */
        public final void mo42212d(int i) {
            try {
                new StringBuilder("percent ").append(i);
                if (!NativeAd.this.reportedImpression && i >= Integer.parseInt(C0640a.m42211bc().m42476y("min_imp_precentage"))) {
                    int parseInt = Integer.parseInt(C0640a.m42211bc().m42476y("postpone_impression_sec"));
                    if (!Boolean.parseBoolean(C0640a.m42211bc().m42476y("repeat_viewable_criteria")) || parseInt <= 0) {
                        if (!NativeAd.this.reportedImpression) {
                            NativeAd.this.reportedImpression = true;
                            NativeAd.this.impression();
                        }
                    } else if (NativeAd.this.handler != null) {
                        NativeAd.this.handler.postDelayed(new Runnable() { // from class: com.appnext.nativeads.NativeAd.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    if (NativeAd.this.nativeAdView == null || NativeAd.this.reportedImpression || NativeAd.this.nativeAdView.getVisiblePercent(NativeAd.this.nativeAdView) < Integer.parseInt(C0640a.m42211bc().m42476y("min_imp_precentage"))) {
                                        return;
                                    }
                                    NativeAd.this.impression();
                                    NativeAd.this.reportedImpression = true;
                                } catch (Throwable th) {
                                    C0472a.m42577a("NativeAd$NativeAd", th);
                                }
                            }
                        }, parseInt * 1000);
                    }
                }
                if (NativeAd.this.reportedVTA || i < Integer.parseInt(C0640a.m42211bc().m42476y("min_vta_precentage"))) {
                    return;
                }
                int parseInt2 = Integer.parseInt(C0640a.m42211bc().m42476y("postpone_vta_sec"));
                if (Boolean.parseBoolean(C0640a.m42211bc().m42476y("repeat_vta_viewable_criteria")) && parseInt2 > 0) {
                    if (NativeAd.this.handler == null) {
                        return;
                    }
                    NativeAd.this.handler.postDelayed(new Runnable() { // from class: com.appnext.nativeads.NativeAd.1.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                if (NativeAd.this.nativeAdView == null || NativeAd.this.reportedVTA || NativeAd.this.loadedAd == null || NativeAd.this.nativeAdView.getVisiblePercent(NativeAd.this.nativeAdView) < Integer.parseInt(C0640a.m42211bc().m42476y("min_vta_precentage"))) {
                                    return;
                                }
                                NativeAd.this.userAction.m42340a(NativeAd.this.loadedAd, NativeAd.this.loadedAd.getImpressionURL(), null);
                                NativeAd.this.reportedVTA = true;
                            } catch (Throwable th) {
                                C0472a.m42577a("NativeAd$NativeAd", th);
                            }
                        }
                    }, parseInt2 * 1000);
                } else if (NativeAd.this.reportedVTA || NativeAd.this.loadedAd == null) {
                } else {
                    NativeAd.this.reportedVTA = true;
                    NativeAd.this.userAction.m42340a(NativeAd.this.loadedAd, NativeAd.this.loadedAd.getImpressionURL(), null);
                }
            } catch (Throwable th) {
                C0472a.m42577a("NativeAd$NativeAd", th);
            }
        }
    };
    private Handler handler = new Handler();

    /* renamed from: com.appnext.nativeads.NativeAd$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAd$a.class */
    public final class View$OnClickListenerC0631a implements View.OnClickListener {
        private View$OnClickListenerC0631a() {
            NativeAd.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                if (NativeAd.this.loadedAd == null) {
                    return;
                }
                NativeAd.this.report("click_event");
                if (!NativeAd.this.reportedImpression) {
                    NativeAd.this.impression();
                }
                if (!NativeAd.this.loadedAd.getWebview().equals(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                    NativeAd.this.click();
                    return;
                }
                boolean z = true;
                if (!NativeAd.this.loadedAd.getRevenueType().equals("cpi")) {
                    String lowerCase = C0640a.m42211bc().m42476y("cpcActiveFlow").toLowerCase();
                    new StringBuilder("cpcActiveFlow ").append(lowerCase);
                    int hashCode = lowerCase.hashCode();
                    if (hashCode != 97) {
                        if (hashCode == 98 && lowerCase.equals(C22021b.f61237c)) {
                            z = true;
                        }
                    } else if (lowerCase.equals("a")) {
                        z = false;
                    }
                    if (z) {
                        NativeAd.this.click();
                        return;
                    }
                    NativeAd.this.clicked = true;
                    NativeAd.this.click();
                    return;
                }
                String lowerCase2 = C0640a.m42211bc().m42476y("cpiActiveFlow").toLowerCase();
                new StringBuilder("cpiActiveFlow ").append(lowerCase2);
                switch (lowerCase2.hashCode()) {
                    case 97:
                        if (lowerCase2.equals("a")) {
                            z = false;
                            break;
                        }
                        break;
                    case 98:
                        if (lowerCase2.equals(C22021b.f61237c)) {
                            z = true;
                            break;
                        }
                        break;
                    case 99:
                        if (lowerCase2.equals(AbstractC2405c.f7629a)) {
                            z = true;
                            break;
                        }
                        break;
                    case 100:
                        if (lowerCase2.equals("d")) {
                            z = true;
                            break;
                        }
                        break;
                }
                if (!z) {
                    NativeAd.this.openResultPage(true);
                    return;
                }
                if (z) {
                    NativeAd.this.clicked = true;
                } else if (z) {
                    NativeAd.this.openResultPage(false);
                    return;
                }
                NativeAd.this.click();
            } catch (Throwable th) {
                C0472a.m42577a("NativeAd$destroy", th);
            }
        }
    }

    public NativeAd(Context context, String str) {
        this.nativeAdObject = createAd(context, str);
        C0640a.m42211bc().m42479h("tid", this.nativeAdObject.getTID());
        C0640a.m42211bc().m42483a(context, str, null);
        this.userAction = new C0566q(context, new C0566q.AbstractC0570a() { // from class: com.appnext.nativeads.NativeAd.2
            @Override // com.appnext.core.C0566q.AbstractC0570a
            /* renamed from: c */
            public final AbstractC0501Ad mo42126c() {
                return NativeAd.this.nativeAdObject;
            }

            @Override // com.appnext.core.C0566q.AbstractC0570a
            /* renamed from: d */
            public final AppnextAd mo42125d() {
                return NativeAd.this.loadedAd;
            }

            @Override // com.appnext.core.C0566q.AbstractC0570a
            /* renamed from: e */
            public final SettingsManager mo42124e() {
                return C0640a.m42211bc();
            }

            @Override // com.appnext.core.C0566q.AbstractC0570a
            public final void report(String str2) {
            }
        });
    }

    public MediaView.MediaType creativeToMediaType(NativeAdRequest.CreativeType creativeType) {
        return creativeType == NativeAdRequest.CreativeType.STATIC_ONLY ? MediaView.MediaType.STATIC : MediaView.MediaType.VIDEO;
    }

    private void fillListWithSubviews(ArrayList<View> arrayList, View view) {
        try {
            if ((view instanceof PrivacyIcon) || (view instanceof C0468a)) {
                return;
            }
            arrayList.add(view);
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                fillListWithSubviews(arrayList, viewGroup.getChildAt(i));
            }
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$fillListWithSubviews", th);
        }
    }

    public void impression() {
        try {
            if (this.loadedAd == null) {
                return;
            }
            this.reportedImpression = true;
            report("impression_event");
            this.userAction.m42331d(this.loadedAd);
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.nativeads.NativeAd.5
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (NativeAd.this.getNativeAdView() == null) {
                            return;
                        }
                        C0524a.m42455o(NativeAd.this.getNativeAdView().getContext()).m42457k(NativeAd.this.loadedAd.getBannerID(), NativeAd.this.nativeAdObject.getAUID());
                    } catch (Throwable th) {
                    }
                }
            });
            NativeAdListener nativeAdListener = this.adListener;
            if (nativeAdListener == null) {
                return;
            }
            nativeAdListener.adImpression(this);
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$impression", th);
        }
    }

    public void load(final NativeAdRequest nativeAdRequest) {
        C0641b m42201be = C0641b.m42201be();
        Context context = this.nativeAdObject.getContext();
        NativeAdObject nativeAdObject = this.nativeAdObject;
        m42201be.m42209a(context, nativeAdObject, nativeAdObject.getPlacementID(), new AbstractC0533d.AbstractC0538a() { // from class: com.appnext.nativeads.NativeAd.4
            @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
            /* renamed from: a */
            public final <T> void mo42109a(T t) {
                try {
                    if (NativeAd.this.handler == null) {
                        return;
                    }
                    NativeAd.this.reportedImpression = false;
                    NativeAd.this.reportedVTA = false;
                    if (nativeAdRequest.getVideoLength() == NativeAdRequest.VideoLength.DEFAULT) {
                        nativeAdRequest.setVideoLength(NativeAdRequest.VideoLength.fromInt(Integer.parseInt(C0640a.m42211bc().m42476y("default_video_length"))));
                    }
                    if (nativeAdRequest.getVideoQuality() == NativeAdRequest.VideoQuality.DEFAULT) {
                        nativeAdRequest.setVideoQuality(NativeAdRequest.VideoQuality.fromInt(Integer.parseInt(C0640a.m42211bc().m42476y("default_video_quality"))));
                    }
                    AppnextAd m42210a = C0641b.m42201be().m42210a(NativeAd.this.nativeAdObject.getContext(), NativeAd.this.nativeAdObject, nativeAdRequest);
                    if (m42210a == null) {
                        if (NativeAd.this.adListener == null) {
                            return;
                        }
                        NativeAd.this.report("error_no_ads");
                        NativeAd.this.adListener.onError(NativeAd.this, new AppnextError(AppnextError.NO_ADS));
                        return;
                    }
                    NativeAd.this.setLoadedAd(m42210a, nativeAdRequest);
                    if (NativeAd.this.mediaView != null) {
                        MediaView mediaView = NativeAd.this.mediaView;
                        NativeAd nativeAd = NativeAd.this;
                        NativeAdData nativeAdData = nativeAd.loadedAd;
                        NativeAd nativeAd2 = NativeAd.this;
                        mediaView.m42239a(nativeAd, nativeAdData, nativeAd2.creativeToMediaType(nativeAd2.creativeType));
                    }
                    if (NativeAd.this.nativeAdView != null) {
                        NativeAdView nativeAdView = NativeAd.this.nativeAdView;
                        NativeAd nativeAd3 = NativeAd.this;
                        nativeAdView.m42218a(nativeAd3, nativeAd3.loadedAd, NativeAd.this.adViewActions);
                    }
                    if (NativeAd.this.adListener == null) {
                        return;
                    }
                    NativeAd.this.adListener.onAdLoaded(NativeAd.this, m42210a.getCreativeType());
                } catch (Throwable th) {
                    C0472a.m42577a("NativeAd$load", th);
                    NativeAd.this.onError(AppnextError.INTERNAL_ERROR);
                }
            }

            @Override // com.appnext.core.AbstractC0533d.AbstractC0538a
            public final void error(String str) {
                NativeAd.this.onError(str);
            }
        }, nativeAdRequest);
    }

    public void onError(String str) {
        try {
            if (this.adListener == null) {
                return;
            }
            if (str != null && !str.equals(AppnextError.NO_ADS) && !str.equals(AppnextError.INTERNAL_ERROR)) {
                report("error_" + str.toLowerCase().replace(StringConstant.SPACE, AnalyticsConstants.DELIMITER_MAIN));
                this.adListener.onError(this, new AppnextError(str));
                return;
            }
            report("error_no_ads");
            this.adListener.onError(this, new AppnextError(AppnextError.NO_ADS));
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$load", th);
        }
    }

    public void openResultPage(boolean z) {
        C0602d.m42267aX().m42268a(new AbstractC0601c() { // from class: com.appnext.nativeads.NativeAd.6
            public final String getButtonText(AppnextAd appnextAd) {
                try {
                    String buttonText = new NativeAdData(appnextAd).getButtonText();
                    String str = buttonText;
                    if (appnextAd != null) {
                        str = buttonText;
                        if (buttonText.equals("")) {
                            str = C0551g.m42381b(NativeAd.this.nativeAdObject.getContext(), appnextAd.getAdPackage()) ? C0640a.m42211bc().m42476y("existing_button_text") : C0640a.m42211bc().m42476y("new_button_text");
                        }
                    }
                    return str;
                } catch (Throwable th) {
                    C0472a.m42577a("NativeAd$getButtonText", th);
                    return "";
                }
            }

            @Override // com.appnext.core.result.AbstractC0601c
            public final JSONObject getConfigParams() throws JSONException {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("vid", NativeAdObject.VID);
                jSONObject.put("tid", NativeAd.this.nativeAdObject == null ? "" : NativeAd.this.nativeAdObject.getTID());
                jSONObject.put("auid", NativeAd.this.nativeAdObject == null ? "" : NativeAd.this.nativeAdObject.getAUID());
                jSONObject.put("osid", "100");
                jSONObject.put("tem_id", NativeAd.this.nativeAdObject.getTemId(NativeAd.this.loadedAd));
                jSONObject.put("id", getPlacementId());
                jSONObject.put("b_title", getButtonText(NativeAd.this.loadedAd));
                jSONObject.put("cat", NativeAd.this.loadedAd.getCategories());
                jSONObject.put("lockcat", NativeAd.this.loadedAd.getSpecificCategories());
                jSONObject.put("pview", C0640a.m42211bc().m42476y("pview"));
                jSONObject.put("devn", C0551g.m42383au());
                jSONObject.put("dosv", Build.VERSION.SDK_INT);
                jSONObject.put("dds", DtbConstants.NETWORK_TYPE_UNKNOWN);
                jSONObject.put("ads_type", "banner");
                jSONObject.put(ImpressionData.COUNTRY, NativeAd.this.loadedAd.getCountry());
                jSONObject.put("gdpr", C0555i.m42363a((AppnextAd) NativeAd.this.loadedAd, (SettingsManager) C0640a.m42211bc()));
                return jSONObject;
            }

            @Override // com.appnext.core.result.AbstractC0601c
            public final String getPlacementId() {
                return NativeAd.this.nativeAdObject.getPlacementID();
            }

            @Override // com.appnext.core.result.AbstractC0601c
            public final AppnextAd getSelectedAd() {
                return NativeAd.this.loadedAd;
            }

            @Override // com.appnext.core.result.AbstractC0601c
            /* renamed from: t */
            public final String mo42224t() {
                return NativeAd.this.nativeAdObject.getTemId(NativeAd.this.loadedAd);
            }

            @Override // com.appnext.core.result.AbstractC0601c
            /* renamed from: u */
            public final String mo42223u() {
                return C0641b.m42201be().m42423k(NativeAd.this.nativeAdObject);
            }

            @Override // com.appnext.core.result.AbstractC0601c
            /* renamed from: v */
            public final String mo42222v() {
                try {
                    ArrayList<AppnextAd> m42200e = C0641b.m42201be().m42200e(NativeAd.this.nativeAdObject);
                    JSONArray jSONArray = new JSONArray();
                    Iterator<AppnextAd> it = m42200e.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(new JSONObject(AbstractC0533d.m42428c(it.next())));
                    }
                    return new JSONObject().put("apps", jSONArray).toString();
                } catch (Throwable th) {
                    C0472a.m42577a("NativeAd$getFilteredAds", th);
                    return "";
                }
            }

            @Override // com.appnext.core.result.AbstractC0601c
            /* renamed from: w */
            public final SettingsManager mo42221w() {
                return C0640a.m42211bc();
            }

            @Override // com.appnext.core.result.AbstractC0601c
            /* renamed from: x */
            public final AbstractC0501Ad mo42220x() {
                return NativeAd.this.nativeAdObject;
            }

            @Override // com.appnext.core.result.AbstractC0601c
            /* renamed from: y */
            public final AbstractC0599a mo42219y() {
                return null;
            }
        });
        Intent intent = new Intent(this.nativeAdObject.getContext(), ResultPageActivity.class);
        intent.putExtra("shouldClose", z);
        intent.setFlags(65536);
        this.nativeAdObject.getContext().startActivity(intent);
    }

    public void report(String str) {
        try {
            Context context = this.nativeAdObject.getContext();
            String tid = this.nativeAdObject.getTID();
            String vid = this.nativeAdObject.getVID();
            String auid = this.nativeAdObject.getAUID();
            String placementID = this.nativeAdObject.getPlacementID();
            String sessionId = this.nativeAdObject.getSessionId();
            NativeAdData nativeAdData = this.loadedAd;
            String bannerID = nativeAdData != null ? nativeAdData.getBannerID() : "";
            NativeAdData nativeAdData2 = this.loadedAd;
            C0551g.m42393a(context, tid, vid, auid, placementID, sessionId, str, "pub_control", bannerID, nativeAdData2 != null ? nativeAdData2.getCampaignID() : "");
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$onWindowVisibilityChanged", th);
        }
    }

    public void click() {
        try {
            C0566q c0566q = this.userAction;
            NativeAdData nativeAdData = this.loadedAd;
            c0566q.m42339a(nativeAdData, nativeAdData.getAppURL(), this.nativeAdObject.getPlacementID(), null);
            NativeAdListener nativeAdListener = this.adListener;
            if (nativeAdListener == null) {
                return;
            }
            nativeAdListener.onAdClicked(this);
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$click", th);
        }
    }

    public NativeAdObject createAd(Context context, String str) {
        return new NativeAdObject(context, str);
    }

    public void destroy() {
        try {
            Handler handler = this.handler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            for (View view : this.clicksListView) {
                view.setOnClickListener(null);
            }
            List<View> list = this.clicksListView;
            if (list != null) {
                list.clear();
            }
            C0566q c0566q = this.userAction;
            if (c0566q != null) {
                c0566q.destroy();
            }
            NativeAdObject nativeAdObject = this.nativeAdObject;
            if (nativeAdObject != null) {
                nativeAdObject.destroy();
            }
            MediaView mediaView = this.mediaView;
            if (mediaView != null) {
                mediaView.destroy();
            }
            this.handler = null;
            this.adViewActions = null;
            this.mediaView = null;
            this.adListener = null;
            this.loadedAd = null;
            this.nativeAdView = null;
        } catch (Exception e) {
            C0472a.m42577a("NativeAd$destroy", e);
        }
    }

    public void downloadAndDisplayImage(Context context, ImageView imageView, String str) {
        C0557j.m42359ax().m42360a(context, imageView, str, null);
    }

    public void getAdByPackage(NativeAdRequest nativeAdRequest, String str) {
        try {
            if (!C0551g.m42368k(this.nativeAdObject.getContext())) {
                NativeAdListener nativeAdListener = this.adListener;
                if (nativeAdListener == null) {
                    return;
                }
                nativeAdListener.onError(this, new AppnextError(AppnextError.CONNECTION_ERROR));
            } else if (this.handler == null) {
            } else {
                final NativeAdRequest nativeAdRequest2 = new NativeAdRequest(nativeAdRequest);
                this.nativeAdObject.setPackageName(str);
                this.nativeAdObject.setCategories(nativeAdRequest2.getCategories());
                this.nativeAdObject.setSpecificCategories(nativeAdRequest2.getSpecificCategories());
                this.nativeAdObject.setPostback(nativeAdRequest2.getPostback());
                this.nativeAdObject.setMinVideoLength(nativeAdRequest2.getMinVideoLength());
                this.nativeAdObject.setMaxVideoLength(nativeAdRequest2.getMaxVideoLength());
                this.creativeType = nativeAdRequest2.getCreativeType();
                report("caching_" + nativeAdRequest2.getCachingPolicy());
                C0640a.m42211bc().m42483a(this.nativeAdObject.getContext(), this.nativeAdObject.getPlacementID(), new SettingsManager.ConfigCallback() { // from class: com.appnext.nativeads.NativeAd.3
                    @Override // com.appnext.core.SettingsManager.ConfigCallback
                    public final void error(String str2) {
                        try {
                            NativeAd.this.load(nativeAdRequest2);
                        } catch (Throwable th) {
                            C0472a.m42577a("NativeAd$getAdByPackage", th);
                        }
                    }

                    @Override // com.appnext.core.SettingsManager.ConfigCallback
                    public final void loaded(HashMap<String, Object> hashMap) {
                        try {
                            NativeAd.this.load(nativeAdRequest2);
                        } catch (Throwable th) {
                            C0472a.m42577a("NativeAd$getAdByPackage", th);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$getAdByPackage", th);
        }
    }

    public String getAdDescription() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getAdDescription();
    }

    public String getAdTitle() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getAdTitle();
    }

    public String getAppPackageName() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getAdPackage();
    }

    public String getAppSize() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getAppSize();
    }

    public String getBannerID() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getBannerID();
    }

    public String getCTAText() {
        try {
            if (this.loadedAd == null) {
                return null;
            }
            boolean m42381b = C0551g.m42381b(this.nativeAdObject.getContext(), this.loadedAd.getAdPackage());
            String str = "existing";
            if (this.loadedAd.getButtonText().equals("")) {
                return m42381b ? C0522a.m42459q(this.nativeAdObject.getContext()).m42462a(getLanguage(), "existing", C0640a.m42211bc().m42476y("existing_button_text")) : C0522a.m42459q(this.nativeAdObject.getContext()).m42462a(getLanguage(), "new", C0640a.m42211bc().m42476y("new_button_text"));
            }
            C0522a m42459q = C0522a.m42459q(this.nativeAdObject.getContext());
            String language = getLanguage();
            if (!m42381b) {
                str = "new";
            }
            return m42459q.m42462a(language, str, this.loadedAd.getButtonText());
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$getCTAText", th);
            return "";
        }
    }

    public String getCategories() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getCategories();
    }

    public String getCountry() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getCountry();
    }

    public float getECPM() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return 0.0f;
        }
        return nativeAdData.getECPM();
    }

    public String getIconURL() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getImageURL();
    }

    public String getLanguage() {
        return this.language;
    }

    public MediaView getMediaView() {
        return this.mediaView;
    }

    public NativeAdView getNativeAdView() {
        return this.nativeAdView;
    }

    public float getPPR() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return 0.0f;
        }
        return nativeAdData.getPPR();
    }

    public String getPPU() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return C0551g.m42375e(nativeAdData);
    }

    public int getPrivacyPolicyColor() {
        return this.privacyPolicyColor;
    }

    public int getPrivacyPolicyPosition() {
        return this.privacyPolicyPosition;
    }

    public int getPrivacyPolicyVisibility() {
        return this.privacyPolicyVisibility;
    }

    public String getSpecificCategories() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getSpecificCategories();
    }

    public String getStoreDownloads() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getStoreDownloads();
    }

    public String getStoreRating() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getStoreRating();
    }

    public String getSupportedVersion() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getSupportedVersion();
    }

    public String getVideoUrl() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getSelectedVideo();
    }

    public String getWideImageURL() {
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null) {
            return null;
        }
        return nativeAdData.getWideImageURL();
    }

    /* renamed from: i */
    public void m42225i() {
        if ((Thread.currentThread().getStackTrace()[3].getClassName() + Thread.currentThread().getStackTrace()[3].getMethodName()).hashCode() != -133704518 || this.reportedImpression) {
            return;
        }
        impression();
    }

    public boolean isGPRD() {
        NativeAdData nativeAdData = this.loadedAd;
        return nativeAdData != null && nativeAdData.isGdpr();
    }

    public boolean isLoaded() {
        NativeAdObject nativeAdObject;
        return (this.loadedAd == null || (nativeAdObject = this.nativeAdObject) == null || !nativeAdObject.isAdLoaded()) ? false : true;
    }

    public void loadAd(NativeAdRequest nativeAdRequest) {
        getAdByPackage(nativeAdRequest, null);
    }

    public void onWindowVisibilityChanged(int i) {
        if (i == 0) {
            try {
                if (!this.clicked) {
                    return;
                }
                this.clicked = false;
                openResultPage(false);
            } catch (Throwable th) {
                C0472a.m42577a("NativeAd$onWindowVisibilityChanged", th);
            }
        }
    }

    public void registerClickableViews(View view) {
        try {
            ArrayList<View> arrayList = new ArrayList<>();
            fillListWithSubviews(arrayList, view);
            registerClickableViews(arrayList);
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$registerClickableViews", th);
        }
    }

    public void registerClickableViews(List<View> list) {
        try {
            if (list == null) {
                throw new IllegalArgumentException("List cannot be null");
            }
            if (list.size() == 0) {
                throw new IllegalArgumentException("List cannot be empty");
            }
            View$OnClickListenerC0631a view$OnClickListenerC0631a = new View$OnClickListenerC0631a();
            for (View view : list) {
                if (!(view instanceof PrivacyIcon) && !(view instanceof C0468a) && !(view instanceof MediaView.C0622a)) {
                    this.clicksListView.add(view);
                    view.setOnClickListener(view$OnClickListenerC0631a);
                }
            }
        } catch (Throwable th) {
            C0472a.m42577a("NativeAd$registerClickableViews", th);
        }
    }

    public void setAdListener(NativeAdListener nativeAdListener) {
        if (nativeAdListener == null) {
            return;
        }
        this.adListener = nativeAdListener;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLoadedAd(AppnextAd appnextAd, NativeAdRequest nativeAdRequest) {
        try {
            NativeAdData nativeAdData = new NativeAdData(appnextAd);
            this.loadedAd = nativeAdData;
            nativeAdData.setAppURL(this.loadedAd.getAppURL() + "&tem_id=" + this.nativeAdObject.getTemId(this.loadedAd));
            NativeAdData nativeAdData2 = this.loadedAd;
            nativeAdData2.setImpressionURL(this.loadedAd.getImpressionURL() + "&tem_id=" + this.nativeAdObject.getTemId(this.loadedAd));
            try {
                C0641b.m42201be();
                String m42205a = C0641b.m42205a(nativeAdRequest, (AppnextAd) this.loadedAd);
                if (m42205a.equals("")) {
                    return;
                }
                this.loadedAd.J(m42205a);
            } catch (Throwable th) {
            }
        } catch (Throwable th2) {
            C0472a.m42577a("NativeAd$setLoadedAd", th2);
        }
    }

    public void setMediaView(MediaView mediaView) {
        this.mediaView = mediaView;
        NativeAdData nativeAdData = this.loadedAd;
        if (nativeAdData == null || mediaView == null) {
            return;
        }
        mediaView.m42239a(this, nativeAdData, creativeToMediaType(this.creativeType));
    }

    public void setNativeAdView(NativeAdView nativeAdView) {
        NativeAdData nativeAdData;
        NativeAdView nativeAdView2 = this.nativeAdView;
        if (nativeAdView2 != null) {
            nativeAdView2.m42214bd();
        }
        this.nativeAdView = nativeAdView;
        if (nativeAdView == null || (nativeAdData = this.loadedAd) == null) {
            return;
        }
        nativeAdView.m42218a(this, nativeAdData, this.adViewActions);
    }

    public void setParams(String str, String str2) {
        C0640a.m42211bc().m42477j(str, str2);
    }

    public void setPrivacyPolicyColor(int i) {
        this.privacyPolicyColor = i;
    }

    public void setPrivacyPolicyPosition(int i) {
        this.privacyPolicyPosition = i;
    }

    public void setPrivacyPolicyVisibility(int i) {
        this.privacyPolicyVisibility = i;
    }
}
