package com.integralads.avid.library.mopub;

import android.app.Activity;
import android.content.Context;
import com.integralads.avid.library.mopub.AvidLoader;
import com.integralads.avid.library.mopub.AvidStateWatcher;
import com.integralads.avid.library.mopub.activity.AvidActivityStack;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistryListener;
import com.integralads.avid.library.mopub.session.AbstractAvidAdSession;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidManager.class */
public class AvidManager implements AvidLoader.AvidLoaderListener, AvidStateWatcher.AvidStateWatcherListener, AvidAdSessionRegistryListener {

    /* renamed from: a */
    public static AvidManager f33019a = new AvidManager();

    /* renamed from: b */
    public static Context f33020b;

    public static AvidManager getInstance() {
        return f33019a;
    }

    /* renamed from: a */
    public final boolean m5424a() {
        return !AvidAdSessionRegistry.getInstance().isEmpty();
    }

    /* renamed from: b */
    public final void m5423b() {
        AvidAdSessionRegistry.getInstance().setListener(null);
        for (InternalAvidAdSession internalAvidAdSession : AvidAdSessionRegistry.getInstance().getInternalAvidAdSessions()) {
            internalAvidAdSession.getAvidBridgeManager().onAvidJsReady();
        }
        AvidAdSessionRegistry.getInstance().setListener(this);
    }

    /* renamed from: c */
    public final void m5422c() {
        AvidStateWatcher.getInstance().setStateWatcherListener(this);
        AvidStateWatcher.getInstance().start();
        if (AvidStateWatcher.getInstance().isActive()) {
            AvidTreeWalker.getInstance().start();
        }
    }

    /* renamed from: d */
    public final void m5421d() {
        AvidActivityStack.getInstance().cleanup();
        AvidTreeWalker.getInstance().stop();
        AvidStateWatcher.getInstance().stop();
        AvidLoader.getInstance().unregisterAvidLoader();
        f33020b = null;
    }

    public AbstractAvidAdSession findAvidAdSessionById(String str) {
        return AvidAdSessionRegistry.getInstance().findAvidAdSessionById(str);
    }

    public InternalAvidAdSession findInternalAvidAdSessionById(String str) {
        return AvidAdSessionRegistry.getInstance().findInternalAvidAdSessionById(str);
    }

    public void init(Context context) {
        if (f33020b == null) {
            f33020b = context.getApplicationContext();
            AvidStateWatcher.getInstance().init(f33020b);
            AvidAdSessionRegistry.getInstance().setListener(this);
            AvidJSONUtil.init(f33020b);
        }
    }

    @Override // com.integralads.avid.library.mopub.AvidStateWatcher.AvidStateWatcherListener
    public void onAppStateChanged(boolean z) {
        if (z) {
            AvidTreeWalker.getInstance().start();
        } else {
            AvidTreeWalker.getInstance().pause();
        }
    }

    @Override // com.integralads.avid.library.mopub.AvidLoader.AvidLoaderListener
    public void onAvidLoaded() {
        if (m5424a()) {
            m5423b();
            if (AvidAdSessionRegistry.getInstance().hasActiveSessions()) {
                m5422c();
            }
        }
    }

    public void registerActivity(Activity activity) {
        AvidActivityStack.getInstance().addActivity(activity);
    }

    public void registerAvidAdSession(AbstractAvidAdSession abstractAvidAdSession, InternalAvidAdSession internalAvidAdSession) {
        AvidAdSessionRegistry.getInstance().registerAvidAdSession(abstractAvidAdSession, internalAvidAdSession);
    }

    @Override // com.integralads.avid.library.mopub.registration.AvidAdSessionRegistryListener
    public void registryHasActiveSessionsChanged(AvidAdSessionRegistry avidAdSessionRegistry) {
        if (!avidAdSessionRegistry.hasActiveSessions() || !AvidBridge.isAvidJsReady()) {
            m5421d();
        } else {
            m5422c();
        }
    }

    @Override // com.integralads.avid.library.mopub.registration.AvidAdSessionRegistryListener
    public void registryHasSessionsChanged(AvidAdSessionRegistry avidAdSessionRegistry) {
        if (!avidAdSessionRegistry.isEmpty() && !AvidBridge.isAvidJsReady()) {
            AvidLoader.getInstance().setListener(this);
            AvidLoader.getInstance().registerAvidLoader(f33020b);
        }
    }
}
