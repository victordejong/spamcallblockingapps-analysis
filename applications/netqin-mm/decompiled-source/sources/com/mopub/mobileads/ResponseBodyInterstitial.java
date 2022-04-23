package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/ResponseBodyInterstitial.class */
public abstract class ResponseBodyInterstitial extends CustomEventInterstitial {
    public static final String ADAPTER_NAME = "ResponseBodyInterstitial";

    /* renamed from: b */
    public EventForwardingBroadcastReceiver f34197b;

    /* renamed from: c */
    public Context f34198c;

    /* renamed from: d */
    public AdReport f34199d;

    /* renamed from: e */
    public long f34200e;

    /* renamed from: f */
    public Map<String, Object> f34201f;

    /* renamed from: a */
    public abstract void mo4032a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener);

    /* renamed from: a */
    public abstract void mo4049a(Map<String, String> map);

    /* renamed from: b */
    public final boolean m4299b(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        this.f34198c = context;
        this.f34201f = map;
        if (m4299b(map2)) {
            mo4049a(map2);
            try {
                this.f34199d = (AdReport) map.get(DataKeys.AD_REPORT_KEY);
                Long l = (Long) map.get(DataKeys.BROADCAST_IDENTIFIER_KEY);
                if (l == null) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Broadcast Identifier was not set in localExtras");
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                    customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
                this.f34200e = l.longValue();
                EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = new EventForwardingBroadcastReceiver(customEventInterstitialListener, this.f34200e);
                this.f34197b = eventForwardingBroadcastReceiver;
                eventForwardingBroadcastReceiver.register(eventForwardingBroadcastReceiver, context);
                mo4032a(customEventInterstitialListener);
                MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (ClassCastException e) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "LocalExtras contained an incorrect type.");
                MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        } else {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.NETWORK_INVALID_STATE.getIntCode()), MoPubErrorCode.NETWORK_INVALID_STATE);
            customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f34197b;
        if (eventForwardingBroadcastReceiver != null) {
            eventForwardingBroadcastReceiver.unregister(eventForwardingBroadcastReceiver);
            this.f34197b = null;
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public abstract void showInterstitial();
}
