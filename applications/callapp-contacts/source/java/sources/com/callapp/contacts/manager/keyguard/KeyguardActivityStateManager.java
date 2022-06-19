package com.callapp.contacts.manager.keyguard;

import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.CLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/keyguard/KeyguardActivityStateManager.class */
public class KeyguardActivityStateManager implements ManagedLifecycle {

    /* renamed from: a */
    HashMap<String, ActivityState> f26021a = new HashMap<>();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState.class */
    public class ActivityState {

        /* renamed from: b */
        private boolean f26023b;

        /* renamed from: c */
        private boolean f26024c;

        private ActivityState(boolean z, boolean z2) {
            KeyguardActivityStateManager.this = r4;
            this.f26023b = z;
            this.f26024c = z2;
        }

        /* renamed from: a */
        static /* synthetic */ boolean m28274a(ActivityState activityState) {
            return activityState.f26023b && !activityState.f26024c;
        }

        public void setHasFocus(boolean z) {
            this.f26024c = z;
        }

        public void setIsPaused(boolean z) {
            this.f26023b = z;
        }
    }

    /* renamed from: b */
    public static boolean m28280b() {
        LockscreenKeyguardManager.get();
        return LockscreenKeyguardManager.m28269c();
    }

    /* renamed from: c */
    private boolean m28278c() {
        if (this.f26021a.size() == 0) {
            return true;
        }
        for (Map.Entry<String, ActivityState> entry : this.f26021a.entrySet()) {
            if (!ActivityState.m28274a(entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    private ActivityState m28275e(String str) {
        ActivityState activityState = this.f26021a.get(str);
        if (activityState == null) {
            CLog.m27611a(getClass(), "no one is registered with this key: ".concat(String.valueOf(str)));
        }
        return activityState;
    }

    public static KeyguardActivityStateManager get() {
        return Singletons.get().getKeyguardActivityStateManager();
    }

    /* renamed from: a */
    public final void m28283a() {
        if (m28278c()) {
            LockscreenKeyguardManager.get().m28270b();
        }
    }

    /* renamed from: a */
    public final void m28282a(String str) {
        synchronized (this) {
            this.f26021a.put(str, new ActivityState(false, false));
        }
    }

    /* renamed from: a */
    public final void m28281a(String str, boolean z) {
        synchronized (this) {
            ActivityState m28275e = m28275e(str);
            if (m28275e != null) {
                m28275e.setHasFocus(z);
                m28283a();
            }
        }
    }

    /* renamed from: b */
    public final void m28279b(String str) {
        synchronized (this) {
            if (this.f26021a.remove(str) != null) {
                m28283a();
            }
        }
    }

    /* renamed from: c */
    public final void m28277c(String str) {
        synchronized (this) {
            ActivityState m28275e = m28275e(str);
            if (m28275e != null) {
                m28275e.setIsPaused(false);
                m28283a();
            }
        }
    }

    /* renamed from: d */
    public final void m28276d(String str) {
        synchronized (this) {
            ActivityState m28275e = m28275e(str);
            if (m28275e != null) {
                m28275e.setIsPaused(true);
                m28283a();
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f26021a.clear();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
