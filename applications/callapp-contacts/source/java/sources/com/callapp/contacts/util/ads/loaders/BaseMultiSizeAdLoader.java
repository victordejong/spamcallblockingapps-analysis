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

    /* renamed from: a */
    protected Handler f28055a;

    /* renamed from: e */
    protected boolean f28059e;

    /* renamed from: g */
    protected final Context f28061g;

    /* renamed from: h */
    protected final AdUtils.AdEvents f28062h;

    /* renamed from: i */
    protected final boolean f28063i;

    /* renamed from: j */
    protected final NativeAdParamGetter f28064j;

    /* renamed from: l */
    protected final float f28066l;

    /* renamed from: m */
    private final HandlerThread f28067m;

    /* renamed from: n */
    private BroadcastReceiver f28068n;

    /* renamed from: o */
    private final int f28069o;

    /* renamed from: b */
    protected final String f28056b = getClass().getSimpleName();

    /* renamed from: c */
    protected boolean f28057c = false;

    /* renamed from: d */
    protected int f28058d = 1;

    /* renamed from: f */
    protected boolean f28060f = false;

    /* renamed from: p */
    private Runnable f28070p = new Runnable() { // from class: com.callapp.contacts.util.ads.loaders._$$Lambda$ErLw5PNq00TprhKYWWeSfIM5FHk
        @Override // java.lang.Runnable
        public final void run() {
            BaseMultiSizeAdLoader.this.m27211a();
        }
    };

    /* renamed from: k */
    protected Runnable f28065k = getAdRunnable();

    /* renamed from: q */
    private boolean f28071q = false;

    /* renamed from: r */
    private AtomicBoolean f28072r = new AtomicBoolean(false);

    /* renamed from: s */
    private boolean f28073s = CallAppRemoteConfigManager.get().m28698c("AdRefreshContinueIfNotVisible");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader$MultiSizeAdLoaderBroadcastReceiver.class */
    public static class MultiSizeAdLoaderBroadcastReceiver extends BroadcastReceiver {

        /* renamed from: a */
        private final BaseMultiSizeAdLoader f28074a;

        public MultiSizeAdLoaderBroadcastReceiver(BaseMultiSizeAdLoader baseMultiSizeAdLoader) {
            this.f28074a = baseMultiSizeAdLoader;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            CLog.m27610a(BaseMultiSizeAdLoader.class, "BaseMultiSizeAdLoader.onReceive called with ACTION = [%s],", intent.getAction());
            if ("android.intent.action.USER_PRESENT".equals(action) || "android.intent.action.SCREEN_ON".equals(action)) {
                this.f28074a.setAutoRefreshStatus(true);
            } else if (!"android.intent.action.SCREEN_OFF".equals(action) || PhoneStateManager.get().isAnyCallActive()) {
            } else {
                this.f28074a.setAutoRefreshStatus(false);
            }
        }
    }

    public BaseMultiSizeAdLoader(Context context, AdUtils.AdEvents adEvents, String str, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        HandlerThread handlerThread = new HandlerThread(getClass().toString());
        this.f28067m = handlerThread;
        this.f28061g = context;
        this.f28062h = adEvents;
        this.f28069o = i;
        this.f28063i = z;
        this.f28064j = nativeAdParamGetter;
        this.f28066l = f;
        handlerThread.start();
        AndroidUtils.m27631a(handlerThread.getLooper());
        this.f28055a = new Handler(handlerThread.getLooper());
        mo27195a(str);
    }

    /* renamed from: e */
    private void m27207e() {
        this.f28055a.removeCallbacks(this.f28070p);
    }

    public void setAutoRefreshStatus(boolean z) {
        if (this.f28059e) {
            if (z) {
                m27208d();
            } else if (this.f28073s) {
            } else {
                this.f28072r.set(false);
                m27207e();
            }
        }
    }

    /* renamed from: a */
    public void m27211a() {
        this.f28072r.set(false);
        this.f28058d = 1;
        this.f28055a.post(this.f28065k);
    }

    /* renamed from: a */
    protected abstract void mo27195a(String str);

    /* renamed from: b */
    public void mo27194b() {
        this.f28057c = true;
        try {
            this.f28061g.unregisterReceiver(this.f28068n);
        } catch (Exception e) {
            CLog.m27611a(MultiSizeAdLoader.class, "Failed to unregister screen state broadcast receiver (never registered).");
        }
        m27207e();
        Handler handler = this.f28055a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f28067m.quit();
        }
    }

    /* renamed from: c */
    public final void m27209c() {
        this.f28068n = new MultiSizeAdLoaderBroadcastReceiver(this);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            this.f28061g.registerReceiver(this.f28068n, intentFilter);
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    public final void m27208d() {
        if (!this.f28071q || this.f28072r.getAndSet(true)) {
            return;
        }
        m27207e();
        int i = this.f28069o;
        if (i <= 0) {
            return;
        }
        int m28699b = (int) CallAppRemoteConfigManager.get().m28699b("AdRefreshDelta");
        if (m28699b > 0) {
            Random random = new Random();
            i = this.f28069o + ((random.nextBoolean() ? 1 : -1) * random.nextInt(m28699b + 1));
            if (i <= 0) {
                i = this.f28069o;
            }
            CLog.m27611a(BaseMultiSizeAdLoader.class, "Current refresh interval: ".concat(String.valueOf(i)));
        }
        this.f28055a.postDelayed(this.f28070p, Math.min(600000L, i * 1000 * ((long) Math.pow(1.5d, this.f28058d))));
    }

    protected abstract Runnable getAdRunnable();

    public void setAdVisibility(int i) {
        if (!Visibility.isScreenVisible(i)) {
            setAutoRefreshStatus(false);
            return;
        }
        this.f28071q = true;
        setAutoRefreshStatus(true);
    }
}
