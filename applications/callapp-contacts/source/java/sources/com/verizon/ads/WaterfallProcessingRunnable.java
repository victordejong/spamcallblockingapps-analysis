package com.verizon.ads;

import android.os.Handler;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallProcessingRunnable.class */
public final class WaterfallProcessingRunnable implements Runnable {

    /* renamed from: a */
    private static final Logger f61272a = Logger.getInstance(WaterfallProcessingRunnable.class);

    /* renamed from: b */
    private static final String f61273b = WaterfallProcessingRunnable.class.getSimpleName();

    /* renamed from: c */
    private final AdRequest f61274c;

    /* renamed from: d */
    private final AdSession f61275d;

    /* renamed from: e */
    private final Waterfall f61276e;

    /* renamed from: f */
    private final Handler f61277f;

    /* renamed from: g */
    private final WaterfallResult f61278g;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallProcessingRunnable$WaterfallProcessingResult.class */
    static final class WaterfallProcessingResult {

        /* renamed from: a */
        final AdRequest f61279a;

        /* renamed from: b */
        final AdSession f61280b;

        /* renamed from: c */
        final WaterfallProcessingRunnable f61281c;

        WaterfallProcessingResult(AdRequest adRequest, AdSession adSession, WaterfallProcessingRunnable waterfallProcessingRunnable) {
            this.f61279a = adRequest;
            this.f61280b = adSession;
            this.f61281c = waterfallProcessingRunnable;
        }
    }

    public WaterfallProcessingRunnable(AdRequest adRequest, AdSession adSession, Handler handler) {
        this.f61274c = adRequest;
        this.f61275d = adSession;
        Waterfall waterfall = (Waterfall) adSession.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null);
        this.f61276e = waterfall;
        this.f61277f = handler;
        this.f61278g = new WaterfallResult(waterfall, adRequest.f61133b);
    }

    /* renamed from: a */
    public final void m5515a(ErrorInfo errorInfo) {
        this.f61278g.setResult(errorInfo);
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
