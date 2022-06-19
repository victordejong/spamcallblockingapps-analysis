package com.verizon.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.verizon.ads.WaterfallProcessingRunnable;
import com.verizon.ads.WaterfallProvider;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequestHandler.class */
public final class AdRequestHandler extends Handler {

    /* renamed from: a */
    private static final Logger f61142a = Logger.getInstance(AdRequestHandler.class);

    /* renamed from: b */
    private static final String f61143b = AdRequestHandler.class.getSimpleName();

    /* renamed from: c */
    private ExecutorService f61144c = Executors.newFixedThreadPool(5);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable.class */
    public static class LoadWaterfallsRunnable implements Runnable {

        /* renamed from: a */
        final AdRequest f61145a;

        /* renamed from: b */
        final Handler f61146b;

        LoadWaterfallsRunnable(AdRequest adRequest, Handler handler) {
            this.f61145a = adRequest;
            this.f61146b = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Logger.isLogLevelEnabled(3)) {
                AdRequestHandler.f61142a.m5567d(String.format("Requesting waterfall: RequestMetadata[%s]", this.f61145a.f61136e));
            }
            WaterfallProvider waterfallProvider = this.f61145a.f61132a;
            WaterfallProvider.WaterfallListener waterfallListener = new WaterfallProvider.WaterfallListener() { // from class: com.verizon.ads.AdRequestHandler.LoadWaterfallsRunnable.1
                @Override // com.verizon.ads.WaterfallProvider.WaterfallListener
                public void onAdSessionsReceived(List<AdSession> list, ErrorInfo errorInfo) {
                    WaterfallResponse waterfallResponse = new WaterfallResponse();
                    waterfallResponse.f61150c = LoadWaterfallsRunnable.this.f61145a;
                    waterfallResponse.f61148a = list;
                    waterfallResponse.f61149b = errorInfo;
                    LoadWaterfallsRunnable.this.f61146b.sendMessage(LoadWaterfallsRunnable.this.f61146b.obtainMessage(2, waterfallResponse));
                }
            };
            if (this.f61145a.f61133b == null) {
                waterfallProvider.load(this.f61145a.f61136e, this.f61145a.f61134c, waterfallListener);
            } else {
                waterfallProvider.load(this.f61145a.f61133b, this.f61145a.f61134c, waterfallListener);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequestHandler$WaterfallResponse.class */
    static class WaterfallResponse {

        /* renamed from: a */
        List<AdSession> f61148a;

        /* renamed from: b */
        ErrorInfo f61149b;

        /* renamed from: c */
        AdRequest f61150c;

        WaterfallResponse() {
        }
    }

    public AdRequestHandler(Looper looper) {
        super(looper);
    }

    /* renamed from: a */
    public final void m5588a(AdRequest adRequest) {
        sendMessageDelayed(obtainMessage(0, adRequest), adRequest.f61134c);
        sendMessage(obtainMessage(1, adRequest));
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            AdRequest adRequest = (AdRequest) message.obj;
            if (adRequest.f61139h) {
                f61142a.m5565e("Received an ad request time out for an ad request that is marked complete.");
                return;
            }
            adRequest.f61138g = true;
            adRequest.f61139h = true;
            removeCallbacksAndMessages(adRequest);
            ErrorInfo errorInfo = new ErrorInfo(f61143b, "Ad request timed out", -2);
            for (WaterfallProcessingRunnable waterfallProcessingRunnable : adRequest.f61141j) {
                waterfallProcessingRunnable.m5515a(errorInfo);
            }
            adRequest.f61135d.onAdReceived(null, new ErrorInfo(AdRequestHandler.class.getName(), "Ad request timeout", -2), true);
        } else if (i == 1) {
            this.f61144c.execute(new LoadWaterfallsRunnable((AdRequest) message.obj, this));
        } else {
            boolean z = false;
            if (i != 2) {
                if (i != 3) {
                    f61142a.m5559w(String.format("Received unexpected msg with what = %d", Integer.valueOf(message.what)));
                    return;
                }
                WaterfallProcessingRunnable.WaterfallProcessingResult waterfallProcessingResult = (WaterfallProcessingRunnable.WaterfallProcessingResult) message.obj;
                AdRequest adRequest2 = waterfallProcessingResult.f61279a;
                if (adRequest2.f61139h) {
                    f61142a.m5565e("Received waterfall processing result for an ad request that is marked complete.");
                    return;
                } else if (adRequest2.f61138g) {
                    f61142a.m5565e("Received waterfall processing result for ad request that has timed out.");
                    return;
                } else {
                    adRequest2.f61141j.remove(waterfallProcessingResult.f61281c);
                    adRequest2.f61139h = adRequest2.f61141j.isEmpty();
                    if (adRequest2.f61139h) {
                        removeCallbacksAndMessages(adRequest2);
                    }
                    ErrorInfo errorInfo2 = waterfallProcessingResult.f61280b.getAdAdapter() == null ? new ErrorInfo(AdRequestHandler.class.getName(), "No fill", -1) : null;
                    if (!adRequest2.f61140i && errorInfo2 == null) {
                        adRequest2.f61140i = true;
                    }
                    waterfallProcessingResult.f61281c.m5515a(errorInfo2);
                    if (errorInfo2 != null && !adRequest2.f61139h) {
                        f61142a.m5565e(String.format("Received waterfall processing error for adRequest that has not yet completed: %s", errorInfo2));
                        return;
                    } else if (errorInfo2 == null || !adRequest2.f61140i) {
                        adRequest2.f61135d.onAdReceived(waterfallProcessingResult.f61280b, errorInfo2, adRequest2.f61139h);
                        return;
                    } else {
                        f61142a.m5565e(String.format("Received waterfall processing error for adRequest that was previously filled: %s", errorInfo2));
                        adRequest2.f61135d.onAdReceived(null, null, adRequest2.f61139h);
                        return;
                    }
                }
            }
            WaterfallResponse waterfallResponse = (WaterfallResponse) message.obj;
            if (waterfallResponse.f61150c.f61139h) {
                f61142a.m5565e("Received waterfall response for an ad request that is marked complete.");
            } else if (waterfallResponse.f61150c.f61138g) {
                f61142a.m5565e("Received waterfall response for ad request that has timed out.");
                waterfallResponse.f61150c.f61139h = true;
            } else {
                if (waterfallResponse.f61149b != null) {
                    f61142a.m5565e(String.format("Error occurred while attempting to load waterfalls: %s", waterfallResponse.f61149b));
                    z = true;
                } else if (waterfallResponse.f61148a == null || waterfallResponse.f61148a.isEmpty()) {
                    f61142a.m5567d("No ad sessions were returned from waterfall provider");
                } else {
                    if (Logger.isLogLevelEnabled(3)) {
                        f61142a.m5567d("Received waterfall response: AdSessions[");
                    }
                    z = true;
                    for (AdSession adSession : waterfallResponse.f61148a) {
                        if (adSession == null) {
                            f61142a.m5559w("Null ad session was returned from waterfall provider");
                            z = false;
                        } else if (Logger.isLogLevelEnabled(3)) {
                            f61142a.m5567d(adSession.toStringLongDescription());
                        }
                    }
                    f61142a.m5567d("]");
                }
                if (waterfallResponse.f61149b != null || !z) {
                    waterfallResponse.f61150c.f61139h = true;
                    waterfallResponse.f61150c.f61135d.onAdReceived(null, waterfallResponse.f61149b, true);
                    return;
                }
                for (AdSession adSession2 : waterfallResponse.f61148a) {
                    if (((Waterfall) adSession2.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null)) == null) {
                        f61142a.m5567d("AdSession does not have an associated waterfall to process");
                    } else {
                        WaterfallProcessingRunnable waterfallProcessingRunnable2 = new WaterfallProcessingRunnable(waterfallResponse.f61150c, adSession2, this);
                        waterfallResponse.f61150c.f61141j.add(waterfallProcessingRunnable2);
                        this.f61144c.execute(waterfallProcessingRunnable2);
                    }
                }
            }
        }
    }
}
