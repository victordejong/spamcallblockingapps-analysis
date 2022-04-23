package com.callapp.contacts.manager.keyguard;

import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.CLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/keyguard/KeyguardActivityStateManager.class */
public class KeyguardActivityStateManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    HashMap<String, ActivityState> f15081a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/keyguard/KeyguardActivityStateManager$ActivityState.class */
    public class ActivityState {

        /* renamed from: b  reason: collision with root package name */
        private boolean f15083b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f15084c;

        private ActivityState(boolean z, boolean z2) {
            this.f15083b = z;
            this.f15084c = z2;
        }

        static /* synthetic */ boolean a(ActivityState activityState) {
            return activityState.f15083b && !activityState.f15084c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHasFocus(boolean z) {
            this.f15084c = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIsPaused(boolean z) {
            this.f15083b = z;
        }
    }

    public static boolean b() {
        LockscreenKeyguardManager.get();
        return LockscreenKeyguardManager.c();
    }

    private boolean c() {
        if (this.f15081a.size() == 0) {
            return true;
        }
        for (Map.Entry<String, ActivityState> entry : this.f15081a.entrySet()) {
            if (!ActivityState.a(entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    private ActivityState e(String str) {
        ActivityState activityState = this.f15081a.get(str);
        if (activityState == null) {
            CLog.a(getClass(), "no one is registered with this key: ".concat(String.valueOf(str)));
        }
        return activityState;
    }

    public static KeyguardActivityStateManager get() {
        return Singletons.get().getKeyguardActivityStateManager();
    }

    public final void a() {
        if (c()) {
            LockscreenKeyguardManager.get().b();
        }
    }

    public final void a(String str) {
        synchronized (this) {
            this.f15081a.put(str, new ActivityState(false, false));
        }
    }

    public final void a(String str, boolean z) {
        synchronized (this) {
            ActivityState e = e(str);
            if (e != null) {
                e.setHasFocus(z);
                a();
            }
        }
    }

    public final void b(String str) {
        synchronized (this) {
            if (this.f15081a.remove(str) != null) {
                a();
            }
        }
    }

    public final void c(String str) {
        synchronized (this) {
            ActivityState e = e(str);
            if (e != null) {
                e.setIsPaused(false);
                a();
            }
        }
    }

    public final void d(String str) {
        synchronized (this) {
            ActivityState e = e(str);
            if (e != null) {
                e.setIsPaused(true);
                a();
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f15081a.clear();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
