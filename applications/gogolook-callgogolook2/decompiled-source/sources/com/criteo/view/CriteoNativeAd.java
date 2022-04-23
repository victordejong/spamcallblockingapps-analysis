package com.criteo.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.criteo.Criteo;
import com.criteo.Gdpr;
import com.criteo.controller.FetchNativeAdController;
import com.criteo.controller.FindDeviceLMT;
import com.criteo.controller.imagecontroller.DownLoadImageTask;
import com.criteo.info.AppConfigInfo;
import com.criteo.info.NativeAdInfo;
import com.criteo.network.NetworkRequest;
import com.criteo.parser.JsonParser;
import com.criteo.render.ViewBinder;
import com.criteo.sync.sdk.CriteoSync;
import com.criteo.sync.sdk.CriteoSyncOptions;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.criteo.utils.Utils;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/criteo/view/CriteoNativeAd.class */
public class CriteoNativeAd implements FetchNativeAdController.OnFetchNativeAdController, FindDeviceLMT.OnFindDeviceLMTListener {
    public static final String TAG = "criteo.Stories.CriteoBanner";
    public Context mContext;
    public String mGetCache;
    public String mImpressionUrl;
    public NativeAdInfo mNativeAdInfo;
    public Criteo.OnCriteoAdListener mOnCriteoAdListener;
    public boolean mTestMode;
    public ViewBinder mViewBinder;
    public String mZoneId;
    public HashMap<Integer, FrameLayout> mHashMap = new HashMap<>();
    public HashMap<Integer, Criteo.OnCriteoAdListener> mHashMapListener = new HashMap<>();
    public Integer mSlot = 0;
    public Integer mViewIndex = Integer.valueOf(this.mSlot.intValue());

    public CriteoNativeAd(Context context, int i) {
        Tracer.debug("criteo.Stories.CriteoBanner", "CriteoNativeAd: ");
        this.mContext = context;
        this.mZoneId = String.valueOf(i);
        this.mHashMapListener.put(this.mViewIndex, this.mOnCriteoAdListener);
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId("PublisherSDK"));
        } else if (appConfigInfo.isSync_enabled() && JsonParser.appConfigInfo.getIntegrationid() != null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId(JsonParser.appConfigInfo.getIntegrationid()));
        }
    }

    public CriteoNativeAd(Context context, int i, Criteo.OnCriteoAdListener onCriteoAdListener) {
        Tracer.debug("criteo.Stories.CriteoBanner", "CriteoNativeAd: ");
        this.mContext = context;
        this.mOnCriteoAdListener = onCriteoAdListener;
        this.mZoneId = String.valueOf(i);
        this.mHashMapListener.put(this.mViewIndex, this.mOnCriteoAdListener);
        AppConfigInfo appConfigInfo = JsonParser.appConfigInfo;
        if (appConfigInfo == null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId("PublisherSDK"));
        } else if (appConfigInfo.isSync_enabled() && JsonParser.appConfigInfo.getIntegrationid() != null) {
            CriteoSync.init(context, new CriteoSyncOptions().withLoggingEnabled(false).withIntegrationId(JsonParser.appConfigInfo.getIntegrationid()));
        }
    }

    private View getNativeAd(ViewBinder viewBinder, boolean z) {
        View view;
        Tracer.debug("criteo.Stories.CriteoBanner", "getNativeAd: ");
        try {
            if (!this.mHashMap.containsKey(this.mViewIndex)) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                FrameLayout frameLayout = new FrameLayout(this.mContext);
                frameLayout.setLayoutParams(layoutParams);
                this.mHashMap.put(this.mViewIndex, frameLayout);
            }
            if (!z) {
                this.mGetCache = CriteoCacheHelper.retrieveNative(this.mContext, Utils.CACHE_KEY_NATIVE, Criteo.ADType.NATIVE, this.mZoneId);
            } else if (z) {
                this.mGetCache = Utils.loadJSONFromAsset(this.mContext);
            }
            try {
                JSONObject jSONObject = new JSONObject(this.mGetCache).getJSONArray("slots").getJSONObject(0).getJSONObject("native");
                JSONArray jSONArray = new JSONArray(String.valueOf(jSONObject.getJSONArray(IapPlanRealmObject.PRODUCTS)));
                JSONObject jSONObject2 = new JSONObject(String.valueOf(jSONObject.getJSONObject("privacy")));
                JSONArray jSONArray2 = new JSONArray(String.valueOf(jSONObject.getJSONArray("impression_pixels")));
                String string = jSONArray.getJSONObject(0).getString("title");
                String string2 = jSONArray.getJSONObject(0).getString("description");
                String string3 = jSONArray.getJSONObject(0).getString("price");
                String string4 = jSONArray.getJSONObject(0).getString("click_url");
                String string5 = jSONArray.getJSONObject(0).getString("call_to_action");
                String string6 = jSONArray.getJSONObject(0).getJSONObject(TtmlNode.TAG_IMAGE).getString("url");
                this.mImpressionUrl = jSONArray2.getJSONObject(0).getString("url");
                String string7 = jSONObject2.getString("optout_image_url");
                String string8 = jSONObject2.getString("optout_click_url");
                JSONObject jSONObject3 = new JSONObject(String.valueOf(jSONObject.getJSONObject("advertiser")));
                String optString = jSONObject3.optString("description");
                String optString2 = jSONObject3.optString("domain");
                String optString3 = jSONObject3.optString("logo");
                this.mNativeAdInfo = new NativeAdInfo(this.mSlot.toString(), string4, string6, string, string2, string5, string7, string8, string3, optString, optString2, optString3 != null ? new JSONObject(optString3).optString("url") : null, jSONObject3.optString("legal_text"), jSONObject3.optString("logo_click_url"));
            } catch (JSONException e) {
                Tracer.error("criteo.Stories.CriteoBanner", "mGetCache: " + e.getMessage());
            }
            if (this.mNativeAdInfo == null || viewBinder.privacyInformationIconImageId == 0) {
                this.mHashMap.get(this.mViewIndex).removeAllViews();
                if (this.mHashMapListener.get(this.mViewIndex) != null) {
                    this.mHashMapListener.get(this.mViewIndex).onAdDisplayNoAd(Criteo.ADType.NATIVE);
                }
            } else {
                if (this.mHashMap.get(this.mViewIndex).getChildCount() > 0) {
                    view = this.mHashMap.get(this.mViewIndex).getChildAt(0);
                } else {
                    view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(viewBinder.layoutId, (ViewGroup) null);
                    this.mHashMap.get(this.mViewIndex).addView(view, new FrameLayout.LayoutParams(-1, -1));
                }
                new DownLoadImageTask((ImageView) view.findViewById(viewBinder.mainImageId)).execute(this.mNativeAdInfo.getImageUrl());
                ImageView imageView = (ImageView) view.findViewById(viewBinder.privacyInformationIconImageId);
                new DownLoadImageTask(imageView).execute(this.mNativeAdInfo.getmPrivacyUrl());
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Tracer.debug("criteo.Stories.CriteoBanner", "onClickPrivacyIcon:");
                        Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getmPrivacyClickUrl());
                    }
                });
                if (viewBinder.titleId != 0) {
                    ((TextView) view.findViewById(viewBinder.titleId)).setText(this.mNativeAdInfo.getTitle());
                }
                if (viewBinder.discriptionId != 0) {
                    ((TextView) view.findViewById(viewBinder.discriptionId)).setText(this.mNativeAdInfo.getDescription());
                }
                if (viewBinder.callToActionId != 0) {
                    ((TextView) view.findViewById(viewBinder.callToActionId)).setText(this.mNativeAdInfo.getCallToAction());
                    ((TextView) view.findViewById(viewBinder.callToActionId)).setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex) != null) {
                                ((Criteo.OnCriteoAdListener) CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex)).onAdClicked(Criteo.ADType.NATIVE);
                            }
                            Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getClickInfo());
                        }
                    });
                }
                if (viewBinder.priceId != 0) {
                    ((TextView) view.findViewById(viewBinder.priceId)).setText(this.mNativeAdInfo.getPrice());
                }
                view.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex) != null) {
                            ((Criteo.OnCriteoAdListener) CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex)).onAdClicked(Criteo.ADType.NATIVE);
                        }
                        Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getClickInfo());
                    }
                });
                if (viewBinder.advertiserImageId != 0) {
                    ImageView imageView2 = (ImageView) view.findViewById(viewBinder.advertiserImageId);
                    new DownLoadImageTask(imageView2).execute(this.mNativeAdInfo.getAdvertiserImageId());
                    imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex) != null) {
                                ((Criteo.OnCriteoAdListener) CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex)).onAdClicked(Criteo.ADType.NATIVE);
                            }
                            Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getAdvertizeClickUrl());
                        }
                    });
                }
                if (viewBinder.advertiserDescriptionId != 0) {
                    TextView textView = (TextView) view.findViewById(viewBinder.advertiserDescriptionId);
                    textView.setText(this.mNativeAdInfo.getAdvertiserDescriptionId());
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex) != null) {
                                ((Criteo.OnCriteoAdListener) CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex)).onAdClicked(Criteo.ADType.NATIVE);
                            }
                            Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getAdvertizeClickUrl());
                        }
                    });
                }
                if (viewBinder.advertiserLegalTextId != 0) {
                    TextView textView2 = (TextView) view.findViewById(viewBinder.advertiserLegalTextId);
                    textView2.setText(this.mNativeAdInfo.getAdvertiserLegalTextId());
                    textView2.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex) != null) {
                                ((Criteo.OnCriteoAdListener) CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex)).onAdClicked(Criteo.ADType.NATIVE);
                            }
                            Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getAdvertizeClickUrl());
                        }
                    });
                }
                if (viewBinder.advertiserDomainId != 0) {
                    TextView textView3 = (TextView) view.findViewById(viewBinder.advertiserDomainId);
                    textView3.setText(this.mNativeAdInfo.getAdvertiserDomainId());
                    textView3.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.CriteoNativeAd.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex) != null) {
                                ((Criteo.OnCriteoAdListener) CriteoNativeAd.this.mHashMapListener.get(CriteoNativeAd.this.mViewIndex)).onAdClicked(Criteo.ADType.NATIVE);
                            }
                            Utils.openUrl(CriteoNativeAd.this.mContext, CriteoNativeAd.this.mNativeAdInfo.getAdvertizeClickUrl());
                        }
                    });
                }
                if (this.mImpressionUrl != null) {
                    NetworkRequest.sendGetRequest(this.mImpressionUrl);
                }
                Context context = this.mContext;
                CriteoCacheHelper.CleanCache(context, Criteo.ADType.NATIVE + this.mZoneId);
                requestAd();
                if (this.mHashMapListener.get(this.mViewIndex) != null) {
                    this.mHashMapListener.get(this.mViewIndex).onAdDisplayed(Criteo.ADType.NATIVE);
                }
            }
        } catch (Exception e2) {
            Tracer.error("criteo.Stories.CriteoBanner", "getNativeAd: " + e2.getMessage());
        }
        return this.mHashMap.get(this.mViewIndex);
    }

    public void displayAd(FrameLayout frameLayout, View view) {
        frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
    }

    public View getNativeAd(ViewBinder viewBinder) {
        Tracer.debug("criteo.Stories.CriteoBanner", "getNativeAd: ");
        this.mViewBinder = viewBinder;
        return getNativeAd(this.mViewBinder, this.mTestMode);
    }

    public void isTestMode(boolean z) {
        this.mTestMode = z;
    }

    @Override // com.criteo.controller.FetchNativeAdController.OnFetchNativeAdController
    public void onFetchNativeAdFailed(int i, String str, String str2, int i2) {
        if (this.mHashMapListener.get(this.mViewIndex) != null) {
            this.mHashMapListener.get(this.mSlot).onAdRequestFailed(Criteo.ADType.NATIVE);
        }
    }

    @Override // com.criteo.controller.FetchNativeAdController.OnFetchNativeAdController
    public void onFetchNativeAdSuccess() {
        if (this.mHashMapListener.get(this.mViewIndex) != null) {
            this.mHashMapListener.get(this.mSlot).onAdFetched(Criteo.ADType.NATIVE);
        }
    }

    @Override // com.criteo.controller.FindDeviceLMT.OnFindDeviceLMTListener
    public void onFindDeviceLMTFailed() {
        Tracer.debug("criteo.Stories.CriteoBanner", "onFindDeviceLMTFailed: mUserLmt no found");
    }

    @Override // com.criteo.controller.FindDeviceLMT.OnFindDeviceLMTListener
    public void onFindDeviceLMTSuccess(String str) {
        new FetchNativeAdController(this.mContext.getApplicationContext(), this.mSlot, this, this.mZoneId, this.mOnCriteoAdListener).fetchNativeAd();
    }

    public void requestAd() {
        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.LMT);
        PreferenceDataUtils.clearStoreByKey(this.mContext, PreferenceDataUtils.GAID);
        new Gdpr().getGdprCompliance(this.mContext);
        boolean z = this.mTestMode;
        if (!z) {
            String lmt = PreferenceDataUtils.getLMT(this.mContext);
            this.mGetCache = CriteoCacheHelper.retrieveNative(this.mContext, Utils.CACHE_KEY_NATIVE, Criteo.ADType.NATIVE, this.mZoneId);
            if (this.mHashMapListener.get(this.mViewIndex) != null) {
                this.mHashMapListener.get(this.mViewIndex).onAdRequest(Criteo.ADType.NATIVE);
            }
            if (lmt == null || lmt.trim().isEmpty()) {
                if (JsonParser.appConfigInfo != null) {
                    String str = this.mGetCache;
                    if (str == null || str.toString().equals("")) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    } else if (!JsonParser.appConfigInfo.isEnabled()) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    } else if (this.mHashMapListener.get(this.mViewIndex) != null) {
                        this.mHashMapListener.get(this.mSlot).onAdFetched(Criteo.ADType.NATIVE);
                    }
                } else {
                    String str2 = this.mGetCache;
                    if (str2 == null || str2.toString().equals("")) {
                        new FindDeviceLMT(this.mContext, this).fetchLMT();
                    } else if (this.mHashMapListener.get(this.mViewIndex) != null) {
                        this.mHashMapListener.get(this.mSlot).onAdFetched(Criteo.ADType.NATIVE);
                    }
                }
            } else if (JsonParser.appConfigInfo != null) {
                String str3 = this.mGetCache;
                if (str3 == null || str3.toString().equals("")) {
                    new FetchNativeAdController(this.mContext.getApplicationContext(), this.mSlot, this, this.mZoneId, this.mOnCriteoAdListener).fetchNativeAd();
                } else if (!JsonParser.appConfigInfo.isEnabled()) {
                    new FetchNativeAdController(this.mContext.getApplicationContext(), this.mSlot, this, this.mZoneId, this.mOnCriteoAdListener).fetchNativeAd();
                } else if (this.mHashMapListener.get(this.mViewIndex) != null) {
                    this.mHashMapListener.get(this.mSlot).onAdFetched(Criteo.ADType.NATIVE);
                }
            } else {
                String str4 = this.mGetCache;
                if (str4 == null || str4.toString().equals("")) {
                    new FetchNativeAdController(this.mContext.getApplicationContext(), this.mSlot, this, this.mZoneId, this.mOnCriteoAdListener).fetchNativeAd();
                } else if (this.mHashMapListener.get(this.mViewIndex) != null) {
                    this.mHashMapListener.get(this.mSlot).onAdFetched(Criteo.ADType.NATIVE);
                }
            }
        } else if (z) {
            if (this.mHashMapListener.get(this.mViewIndex) != null) {
                this.mHashMapListener.get(this.mViewIndex).onAdRequest(Criteo.ADType.NATIVE);
            }
            if (this.mHashMapListener.get(this.mViewIndex) != null) {
                this.mHashMapListener.get(this.mSlot).onAdFetched(Criteo.ADType.NATIVE);
            }
        }
    }
}
