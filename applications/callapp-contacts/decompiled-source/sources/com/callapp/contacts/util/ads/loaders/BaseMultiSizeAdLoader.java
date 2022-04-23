package com.callapp.contacts.util.ads.loaders;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.mopub.common.util.Visibility;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader.class */
public abstract class BaseMultiSizeAdLoader {

    /* renamed from: a  reason: collision with root package name */
    protected Handler f16102a;
    protected boolean e;
    protected final Context g;
    protected final AdUtils.AdEvents h;
    protected final boolean i;
    protected final NativeAdParamGetter j;
    protected final float l;
    private final HandlerThread m;
    private BroadcastReceiver n;
    private final int o;

    /* renamed from: b  reason: collision with root package name */
    protected final String f16103b = getClass().getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    protected boolean f16104c = false;

    /* renamed from: d  reason: collision with root package name */
    protected int f16105d = 1;
    protected boolean f = false;
    private Runnable p = new Runnable() { // from class: com.callapp.contacts.util.ads.loaders._$$Lambda$ErLw5PNq00TprhKYWWeSfIM5FHk
        @Override // java.lang.Runnable
        public final void run() {
            BaseMultiSizeAdLoader.this.a();
        }
    };
    protected Runnable k = getAdRunnable();
    private boolean q = false;
    private AtomicBoolean r = new AtomicBoolean(false);
    private boolean s = CallAppRemoteConfigManager.get().c("AdRefreshContinueIfNotVisible");

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver.class */
    static class MultiSizeAdLoaderBroadcastReceiver extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final BaseMultiSizeAdLoader f16106a;

        public MultiSizeAdLoaderBroadcastReceiver(BaseMultiSizeAdLoader baseMultiSizeAdLoader) {
            this.f16106a = baseMultiSizeAdLoader;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            CLog.a(BaseMultiSizeAdLoader.class, "BaseMultiSizeAdLoader.onReceive called with ACTION = [%s],", intent.getAction());
            if ("android.intent.action.USER_PRESENT".equals(action) || "android.intent.action.SCREEN_ON".equals(action)) {
                this.f16106a.setAutoRefreshStatus(true);
            } else if ("android.intent.action.SCREEN_OFF".equals(action) && !PhoneStateManager.get().isAnyCallActive()) {
                this.f16106a.setAutoRefreshStatus(false);
            }
        }
    }

    public BaseMultiSizeAdLoader(Context context, AdUtils.AdEvents adEvents, String str, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        HandlerThread handlerThread = new HandlerThread(getClass().toString());
        this.m = handlerThread;
        this.g = context;
        this.h = adEvents;
        this.o = i;
        this.i = z;
        this.j = nativeAdParamGetter;
        this.l = f;
        handlerThread.start();
        AndroidUtils.a(handlerThread.getLooper());
        this.f16102a = new Handler(handlerThread.getLooper());
        a(str);
    }

    private void e() {
        this.f16102a.removeCallbacks(this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoRefreshStatus(boolean z) {
        if (!this.e) {
            return;
        }
        if (z) {
            d();
        } else if (!this.s) {
            this.r.set(false);
            e();
        }
    }

    public void a() {
        this.r.set(false);
        this.f16105d = 1;
        this.f16102a.post(this.k);
    }

    protected abstract void a(String str);

    public void b() {
        this.f16104c = true;
        try {
            this.g.unregisterReceiver(this.n);
        } catch (Exception e) {
            CLog.a(MultiSizeAdLoader.class, "Failed to unregister screen state broadcast receiver (never registered).");
        }
        e();
        Handler handler = this.f16102a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.m.quit();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        this.n = new MultiSizeAdLoaderBroadcastReceiver(this);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            this.g.registerReceiver(this.n, intentFilter);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        if (this.q && !this.r.getAndSet(true)) {
            e();
            int i = this.o;
            if (i > 0) {
                int b2 = (int) CallAppRemoteConfigManager.get().b("AdRefreshDelta");
                if (b2 > 0) {
                    Random random = new Random();
                    i = this.o + ((random.nextBoolean() ? 1 : -1) * random.nextInt(b2 + 1));
                    if (i <= 0) {
                        i = this.o;
                    }
                    CLog.a(BaseMultiSizeAdLoader.class, "Current refresh interval: ".concat(String.valueOf(i)));
                }
                this.f16102a.postDelayed(this.p, Math.min(600000L, i * 1000 * ((long) Math.pow(1.5d, this.f16105d))));
            }
        }
    }

    protected abstract Runnable getAdRunnable();

    public void setAdVisibility(int i) {
        if (Visibility.isScreenVisible(i)) {
            this.q = true;
            setAutoRefreshStatus(true);
            return;
        }
        setAutoRefreshStatus(false);
    }
}
