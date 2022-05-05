package com.criteo.controller;

import android.content.Context;
import android.os.AsyncTask;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.C6797f;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/FindDeviceGAID.class */
public class FindDeviceGAID {
    public static final String TAG = "criteo.Stories.FetchBannerAdController";
    public Context mContext;
    public OnFindDeviceGAIDListener mOnFindDeviceGAIDListener;

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/FindDeviceGAID$OnFindDeviceGAIDListener.class */
    public interface OnFindDeviceGAIDListener {
        void onFindDeviceGAIDFailed();

        void onFindDeviceGAIDSuccess(String str);
    }

    public FindDeviceGAID(Context context, OnFindDeviceGAIDListener onFindDeviceGAIDListener) {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "FetchBannerAdController: ");
        this.mContext = context;
        this.mOnFindDeviceGAIDListener = onFindDeviceGAIDListener;
    }

    public void fetchGAID() {
        Tracer.debug("criteo.Stories.FetchBannerAdController", "fetchBannerAd: ");
        String gaid = PreferenceDataUtils.getGAID(this.mContext);
        if (gaid == null || gaid.trim().isEmpty()) {
            new AsyncTask<Void, Void, String>() { // from class: com.criteo.controller.FindDeviceGAID.1
                public String doInBackground(Void... voidArr) {
                    AdvertisingIdClient.Info info;
                    try {
                        try {
                            info = AdvertisingIdClient.getAdvertisingIdInfo(FindDeviceGAID.this.mContext.getApplicationContext());
                        } catch (C6795e e) {
                            e.printStackTrace();
                            info = null;
                            return info.getId();
                        } catch (C6797f e2) {
                            e2.printStackTrace();
                            info = null;
                            return info.getId();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            info = null;
                            return info.getId();
                        }
                        return info.getId();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        return null;
                    }
                }

                public void onPostExecute(String str) {
                    if (FindDeviceGAID.this.mOnFindDeviceGAIDListener == null) {
                        return;
                    }
                    if (str != null) {
                        PreferenceDataUtils.setGAID(FindDeviceGAID.this.mContext, str);
                        FindDeviceGAID.this.mOnFindDeviceGAIDListener.onFindDeviceGAIDSuccess(str);
                        return;
                    }
                    FindDeviceGAID.this.mOnFindDeviceGAIDListener.onFindDeviceGAIDFailed();
                }
            }.execute(new Void[0]);
            return;
        }
        OnFindDeviceGAIDListener onFindDeviceGAIDListener = this.mOnFindDeviceGAIDListener;
        if (onFindDeviceGAIDListener != null) {
            onFindDeviceGAIDListener.onFindDeviceGAIDSuccess(gaid);
        }
    }
}
