package com.verizon.ads.inlineplacement;

import android.os.Handler;
import android.os.Looper;
import com.verizon.ads.Logger;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdViewRefresher.class */
public class InlineAdViewRefresher implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35436b = Logger.getInstance(InlineAdViewRefresher.class);

    /* renamed from: c  reason: collision with root package name */
    private static Handler f35437c = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    WeakReference<InlineAdView> f35438a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f35439d;
    private InlineAdFactory e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InlineAdViewRefresher(InlineAdFactory inlineAdFactory) {
        this.e = inlineAdFactory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        synchronized (this) {
            this.f35439d = false;
            f35437c.removeCallbacks(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(InlineAdView inlineAdView) {
        synchronized (this) {
            if (inlineAdView.a()) {
                f35436b.d("InlineAdView instance was null or destroyed, cannot start refresh.");
            } else if (this.f35439d) {
                f35436b.d("Refreshing already started.");
            } else {
                this.f35438a = new WeakReference<>(inlineAdView);
                this.f35439d = true;
                f35437c.postDelayed(this, inlineAdView.getRefreshInterval().intValue());
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
