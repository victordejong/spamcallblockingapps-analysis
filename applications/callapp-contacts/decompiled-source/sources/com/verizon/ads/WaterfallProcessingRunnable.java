package com.verizon.ads;

import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallProcessingRunnable.class */
public final class WaterfallProcessingRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35345a = Logger.getInstance(WaterfallProcessingRunnable.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35346b = WaterfallProcessingRunnable.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private final AdRequest f35347c;

    /* renamed from: d  reason: collision with root package name */
    private final AdSession f35348d;
    private final Waterfall e;
    private final Handler f;
    private final WaterfallResult g;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult.class */
    static final class WaterfallProcessingResult {

        /* renamed from: a  reason: collision with root package name */
        final AdRequest f35349a;

        /* renamed from: b  reason: collision with root package name */
        final AdSession f35350b;

        /* renamed from: c  reason: collision with root package name */
        final WaterfallProcessingRunnable f35351c;

        WaterfallProcessingResult(AdRequest adRequest, AdSession adSession, WaterfallProcessingRunnable waterfallProcessingRunnable) {
            this.f35349a = adRequest;
            this.f35350b = adSession;
            this.f35351c = waterfallProcessingRunnable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WaterfallProcessingRunnable(AdRequest adRequest, AdSession adSession, Handler handler) {
        this.f35347c = adRequest;
        this.f35348d = adSession;
        Waterfall waterfall = (Waterfall) adSession.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null);
        this.e = waterfall;
        this.f = handler;
        this.g = new WaterfallResult(waterfall, adRequest.f35251b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ErrorInfo errorInfo) {
        this.g.setResult(errorInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c3  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.WaterfallProcessingRunnable.run():void");
    }
}
