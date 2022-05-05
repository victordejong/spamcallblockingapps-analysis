package com.criteo.controller;

import android.content.Context;
import android.os.AsyncTask;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.C6797f;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/FindDeviceLMT.class */
public class FindDeviceLMT {
    public static final String TAG = "criteo.Stories.FetchBannerAdController";
    public Context mContext;
    public OnFindDeviceLMTListener mOnFindDeviceLMTListener;

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/FindDeviceLMT$OnFindDeviceLMTListener.class */
    public interface OnFindDeviceLMTListener {
        void onFindDeviceLMTFailed();

        void onFindDeviceLMTSuccess(String str);
    }

    public FindDeviceLMT(Context context, OnFindDeviceLMTListener onFindDeviceLMTListener) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "FetchBannerAdController: ");
        this.mContext = context;
        this.mOnFindDeviceLMTListener = onFindDeviceLMTListener;
    }

    public void fetchLMT() {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "fetchBannerAd: ");
        String lmt = PreferenceDataUtils.getLMT(this.mContext);
        if (lmt == null || lmt.trim().isEmpty()) {
            new AsyncTask<Void, Void, Boolean>() { // from class: com.criteo.controller.FindDeviceLMT.1
                public Boolean doInBackground(Void... voidArr) {
                    AdvertisingIdClient.Info info;
                    try {
                        try {
                            info = AdvertisingIdClient.getAdvertisingIdInfo(FindDeviceLMT.this.mContext);
                        } catch (C6795e e) {
                            e.printStackTrace();
                            info = null;
                            return Boolean.valueOf(info.isLimitAdTrackingEnabled());
                        } catch (C6797f e2) {
                            e2.printStackTrace();
                            info = null;
                            return Boolean.valueOf(info.isLimitAdTrackingEnabled());
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            info = null;
                            return Boolean.valueOf(info.isLimitAdTrackingEnabled());
                        }
                        return Boolean.valueOf(info.isLimitAdTrackingEnabled());
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return null;
                    }
                }

                public void onPostExecute(Boolean bool) {
                    if (bool == null) {
                        return;
                    }
                    if (!bool.booleanValue()) {
                        PreferenceDataUtils.setLMT(FindDeviceLMT.this.mContext, "0");
                        FindDeviceLMT.this.mOnFindDeviceLMTListener.onFindDeviceLMTSuccess("0");
                    } else if (bool.booleanValue()) {
                        PreferenceDataUtils.setLMT(FindDeviceLMT.this.mContext, "1");
                        FindDeviceLMT.this.mOnFindDeviceLMTListener.onFindDeviceLMTSuccess("1");
                    } else {
                        FindDeviceLMT.this.mOnFindDeviceLMTListener.onFindDeviceLMTFailed();
                    }
                }
            }.execute(new Void[0]);
            return;
        }
        OnFindDeviceLMTListener onFindDeviceLMTListener = this.mOnFindDeviceLMTListener;
        if (onFindDeviceLMTListener != null) {
            onFindDeviceLMTListener.onFindDeviceLMTSuccess(lmt);
        }
    }
}
