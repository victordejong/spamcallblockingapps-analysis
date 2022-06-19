package com.verizon.ads.inlineplacement;

import android.os.Handler;
import android.os.Looper;
import com.verizon.ads.Logger;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdViewRefresher.class */
public class InlineAdViewRefresher implements Runnable {

    /* renamed from: b */
    private static final Logger f61397b = Logger.getInstance(InlineAdViewRefresher.class);

    /* renamed from: c */
    private static Handler f61398c = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    WeakReference<InlineAdView> f61399a;

    /* renamed from: d */
    private boolean f61400d;

    /* renamed from: e */
    private InlineAdFactory f61401e;

    public InlineAdViewRefresher(InlineAdFactory inlineAdFactory) {
        this.f61401e = inlineAdFactory;
    }

    /* renamed from: a */
    public final void m5465a() {
        synchronized (this) {
            this.f61400d = false;
            f61398c.removeCallbacks(this);
        }
    }

    /* renamed from: a */
    public final void m5464a(InlineAdView inlineAdView) {
        synchronized (this) {
            if (inlineAdView.m5480a()) {
                f61397b.m5567d("InlineAdView instance was null or destroyed, cannot start refresh.");
            } else if (this.f61400d) {
                f61397b.m5567d("Refreshing already started.");
            } else {
                this.f61399a = new WeakReference<>(inlineAdView);
                this.f61400d = true;
                f61398c.postDelayed(this, inlineAdView.getRefreshInterval().intValue());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f6  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.inlineplacement.InlineAdViewRefresher.run():void");
    }
}
