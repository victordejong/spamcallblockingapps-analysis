package com.verizon.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.verizon.ads.WaterfallProcessingRunnable;
import com.verizon.ads.WaterfallProvider;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequestHandler.class */
public final class AdRequestHandler extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35254a = Logger.getInstance(AdRequestHandler.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35255b = AdRequestHandler.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private ExecutorService f35256c = Executors.newFixedThreadPool(5);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequestHandler$LoadWaterfallsRunnable.class */
    static class LoadWaterfallsRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final AdRequest f35257a;

        /* renamed from: b  reason: collision with root package name */
        final Handler f35258b;

        LoadWaterfallsRunnable(AdRequest adRequest, Handler handler) {
            this.f35257a = adRequest;
            this.f35258b = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Logger.isLogLevelEnabled(3)) {
                AdRequestHandler.f35254a.d(String.format("Requesting waterfall: RequestMetadata[%s]", this.f35257a.e));
            }
            WaterfallProvider waterfallProvider = this.f35257a.f35250a;
            WaterfallProvider.WaterfallListener waterfallListener = new WaterfallProvider.WaterfallListener() { // from class: com.verizon.ads.AdRequestHandler.LoadWaterfallsRunnable.1
                @Override // com.verizon.ads.WaterfallProvider.WaterfallListener
                public void onAdSessionsReceived(List<AdSession> list, ErrorInfo errorInfo) {
                    WaterfallResponse waterfallResponse = new WaterfallResponse();
                    waterfallResponse.f35262c = LoadWaterfallsRunnable.this.f35257a;
                    waterfallResponse.f35260a = list;
                    waterfallResponse.f35261b = errorInfo;
                    LoadWaterfallsRunnable.this.f35258b.sendMessage(LoadWaterfallsRunnable.this.f35258b.obtainMessage(2, waterfallResponse));
                }
            };
            if (this.f35257a.f35251b == null) {
                waterfallProvider.load(this.f35257a.e, this.f35257a.f35252c, waterfallListener);
            } else {
                waterfallProvider.load(this.f35257a.f35251b, this.f35257a.f35252c, waterfallListener);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdRequestHandler$WaterfallResponse.class */
    static class WaterfallResponse {

        /* renamed from: a  reason: collision with root package name */
        List<AdSession> f35260a;

        /* renamed from: b  reason: collision with root package name */
        ErrorInfo f35261b;

        /* renamed from: c  reason: collision with root package name */
        AdRequest f35262c;

        WaterfallResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdRequestHandler(Looper looper) {
        super(looper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AdRequest adRequest) {
        sendMessageDelayed(obtainMessage(0, adRequest), adRequest.f35252c);
        sendMessage(obtainMessage(1, adRequest));
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            AdRequest adRequest = (AdRequest) message.obj;
            if (adRequest.h) {
                f35254a.e("Received an ad request time out for an ad request that is marked complete.");
                return;
            }
            adRequest.g = true;
            adRequest.h = true;
            removeCallbacksAndMessages(adRequest);
            ErrorInfo errorInfo = new ErrorInfo(f35255b, "Ad request timed out", -2);
            for (WaterfallProcessingRunnable waterfallProcessingRunnable : adRequest.j) {
                waterfallProcessingRunnable.a(errorInfo);
            }
            adRequest.f35253d.onAdReceived(null, new ErrorInfo(AdRequestHandler.class.getName(), "Ad request timeout", -2), true);
        } else if (i != 1) {
            boolean z = false;
            if (i == 2) {
                WaterfallResponse waterfallResponse = (WaterfallResponse) message.obj;
                if (waterfallResponse.f35262c.h) {
                    f35254a.e("Received waterfall response for an ad request that is marked complete.");
                } else if (waterfallResponse.f35262c.g) {
                    f35254a.e("Received waterfall response for ad request that has timed out.");
                    waterfallResponse.f35262c.h = true;
                } else {
                    if (waterfallResponse.f35261b != null) {
                        f35254a.e(String.format("Error occurred while attempting to load waterfalls: %s", waterfallResponse.f35261b));
                        z = true;
                    } else if (waterfallResponse.f35260a == null || waterfallResponse.f35260a.isEmpty()) {
                        f35254a.d("No ad sessions were returned from waterfall provider");
                    } else {
                        if (Logger.isLogLevelEnabled(3)) {
                            f35254a.d("Received waterfall response: AdSessions[");
                        }
                        z = true;
                        for (AdSession adSession : waterfallResponse.f35260a) {
                            if (adSession == null) {
                                f35254a.w("Null ad session was returned from waterfall provider");
                                z = false;
                            } else if (Logger.isLogLevelEnabled(3)) {
                                f35254a.d(adSession.toStringLongDescription());
                            }
                        }
                        f35254a.d("]");
                    }
                    if (waterfallResponse.f35261b != null || !z) {
                        waterfallResponse.f35262c.h = true;
                        waterfallResponse.f35262c.f35253d.onAdReceived(null, waterfallResponse.f35261b, true);
                        return;
                    }
                    for (AdSession adSession2 : waterfallResponse.f35260a) {
                        if (((Waterfall) adSession2.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null)) == null) {
                            f35254a.d("AdSession does not have an associated waterfall to process");
                        } else {
                            WaterfallProcessingRunnable waterfallProcessingRunnable2 = new WaterfallProcessingRunnable(waterfallResponse.f35262c, adSession2, this);
                            waterfallResponse.f35262c.j.add(waterfallProcessingRunnable2);
                            this.f35256c.execute(waterfallProcessingRunnable2);
                        }
                    }
                }
            } else if (i != 3) {
                f35254a.w(String.format("Received unexpected msg with what = %d", Integer.valueOf(message.what)));
            } else {
                WaterfallProcessingRunnable.WaterfallProcessingResult waterfallProcessingResult = (WaterfallProcessingRunnable.WaterfallProcessingResult) message.obj;
                AdRequest adRequest2 = waterfallProcessingResult.f35349a;
                if (adRequest2.h) {
                    f35254a.e("Received waterfall processing result for an ad request that is marked complete.");
                } else if (adRequest2.g) {
                    f35254a.e("Received waterfall processing result for ad request that has timed out.");
                } else {
                    adRequest2.j.remove(waterfallProcessingResult.f35351c);
                    adRequest2.h = adRequest2.j.isEmpty();
                    if (adRequest2.h) {
                        removeCallbacksAndMessages(adRequest2);
                    }
                    ErrorInfo errorInfo2 = waterfallProcessingResult.f35350b.getAdAdapter() == null ? new ErrorInfo(AdRequestHandler.class.getName(), "No fill", -1) : null;
                    if (!adRequest2.i && errorInfo2 == null) {
                        adRequest2.i = true;
                    }
                    waterfallProcessingResult.f35351c.a(errorInfo2);
                    if (errorInfo2 != null && !adRequest2.h) {
                        f35254a.e(String.format("Received waterfall processing error for adRequest that has not yet completed: %s", errorInfo2));
                    } else if (errorInfo2 == null || !adRequest2.i) {
                        adRequest2.f35253d.onAdReceived(waterfallProcessingResult.f35350b, errorInfo2, adRequest2.h);
                    } else {
                        f35254a.e(String.format("Received waterfall processing error for adRequest that was previously filled: %s", errorInfo2));
                        adRequest2.f35253d.onAdReceived(null, null, adRequest2.h);
                    }
                }
            }
        } else {
            this.f35256c.execute(new LoadWaterfallsRunnable((AdRequest) message.obj, this));
        }
    }
}
