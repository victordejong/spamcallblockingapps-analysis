package com.integralads.avid.library.mopub;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidStateWatcher.class */
public class AvidStateWatcher {
    public static final String CONTEXT_AVID_AD_SESSION_ID = "avidAdSessionId";
    public static final String CONTEXT_AVID_LIBRARY_VERSION = "avidLibraryVersion";
    public static final String CONTEXT_BUNDLE_IDENTIFIER = "bundleIdentifier";
    public static final String CONTEXT_PARTNER = "partner";
    public static final String CONTEXT_PARTNER_VERSION = "partnerVersion";

    /* renamed from: f */
    public static AvidStateWatcher f33021f = new AvidStateWatcher();

    /* renamed from: a */
    public Context f33022a;

    /* renamed from: b */
    public BroadcastReceiver f33023b;

    /* renamed from: c */
    public boolean f33024c;

    /* renamed from: d */
    public boolean f33025d;

    /* renamed from: e */
    public AvidStateWatcherListener f33026e;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener.class */
    public interface AvidStateWatcherListener {
        void onAppStateChanged(boolean z);
    }

    /* renamed from: com.integralads.avid.library.mopub.AvidStateWatcher$a */
    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidStateWatcher$a.class */
    public class C8502a extends BroadcastReceiver {
        public C8502a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyguardManager keyguardManager;
            if (intent != null) {
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    AvidStateWatcher.this.m5418a(true);
                } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    AvidStateWatcher.this.m5418a(false);
                } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null && !keyguardManager.inKeyguardRestrictedInputMode()) {
                    AvidStateWatcher.this.m5418a(false);
                }
            }
        }
    }

    public static AvidStateWatcher getInstance() {
        return f33021f;
    }

    /* renamed from: a */
    public final void m5420a() {
        boolean z = this.f33025d;
        for (InternalAvidAdSession internalAvidAdSession : AvidAdSessionRegistry.getInstance().getInternalAvidAdSessions()) {
            internalAvidAdSession.setScreenMode(!z);
        }
    }

    /* renamed from: a */
    public final void m5418a(boolean z) {
        if (this.f33025d != z) {
            this.f33025d = z;
            if (this.f33024c) {
                m5420a();
                AvidStateWatcherListener avidStateWatcherListener = this.f33026e;
                if (avidStateWatcherListener != null) {
                    avidStateWatcherListener.onAppStateChanged(isActive());
                }
            }
        }
    }

    /* renamed from: b */
    public final void m5417b() {
        this.f33023b = new C8502a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f33022a.registerReceiver(this.f33023b, intentFilter);
    }

    /* renamed from: c */
    public final void m5416c() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f33022a;
        if (context != null && (broadcastReceiver = this.f33023b) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.f33023b = null;
        }
    }

    public AvidStateWatcherListener getStateWatcherListener() {
        return this.f33026e;
    }

    public void init(Context context) {
        m5416c();
        this.f33022a = context;
        m5417b();
    }

    public boolean isActive() {
        return !this.f33025d;
    }

    public void setStateWatcherListener(AvidStateWatcherListener avidStateWatcherListener) {
        this.f33026e = avidStateWatcherListener;
    }

    public void start() {
        this.f33024c = true;
        m5420a();
    }

    public void stop() {
        m5416c();
        this.f33022a = null;
        this.f33024c = false;
        this.f33025d = false;
        this.f33026e = null;
    }
}
