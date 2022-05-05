package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/ResponseBodyInterstitial.class */
public abstract class ResponseBodyInterstitial extends CustomEventInterstitial {

    /* renamed from: a */
    public EventForwardingBroadcastReceiver f8520a;

    /* renamed from: b */
    public Context f8521b;

    /* renamed from: c */
    public AdReport f8522c;

    /* renamed from: d */
    public long f8523d;

    /* renamed from: a */
    public abstract void mo30254a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener);

    /* renamed from: a */
    public abstract void mo30253a(Map<String, String> map);

    /* renamed from: b */
    public final boolean m30497b(Map<String, String> map) {
        return map.containsKey("Html-Response-Body");
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        this.f8521b = context;
        if (m30497b(map2)) {
            mo30253a(map2);
            try {
                this.f8522c = (AdReport) map.get(DataKeys.AD_REPORT_KEY);
                Long l = (Long) map.get(DataKeys.BROADCAST_IDENTIFIER_KEY);
                if (l == null) {
                    MoPubLog.m30731e("Broadcast Identifier was not set in localExtras");
                    customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
                this.f8523d = l.longValue();
                this.f8520a = new EventForwardingBroadcastReceiver(customEventInterstitialListener, this.f8523d);
                EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f8520a;
                eventForwardingBroadcastReceiver.register(eventForwardingBroadcastReceiver, context);
                mo30254a(customEventInterstitialListener);
            } catch (ClassCastException e) {
                MoPubLog.m30731e("LocalExtras contained an incorrect type.");
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        } else {
            customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f8520a;
        if (eventForwardingBroadcastReceiver != null) {
            eventForwardingBroadcastReceiver.unregister(eventForwardingBroadcastReceiver);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public abstract void showInterstitial();
}
