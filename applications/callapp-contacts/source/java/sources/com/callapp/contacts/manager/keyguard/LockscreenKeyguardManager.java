package com.callapp.contacts.manager.keyguard;

import android.app.KeyguardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/keyguard/LockscreenKeyguardManager.class */
public class LockscreenKeyguardManager implements ManagedLifecycle {

    /* renamed from: a */
    private KeyguardManager.KeyguardLock f26025a;

    /* renamed from: c */
    public static boolean m28269c() {
        return ((KeyguardManager) Singletons.m28493a("keyguard")).inKeyguardRestrictedInputMode();
    }

    public static LockscreenKeyguardManager get() {
        return Singletons.get().getLockscreenKeyguardManager();
    }

    /* renamed from: a */
    public final void m28271a() {
        synchronized (this) {
            try {
                if (this.f26025a != null) {
                    return;
                }
                KeyguardManager keyguardManager = (KeyguardManager) Singletons.m28493a("keyguard");
                CLog.m27611a(getClass(), "Lock: Disabling keyguard...");
                KeyguardManager.KeyguardLock newKeyguardLock = keyguardManager.newKeyguardLock(Constants.APP_NAME);
                this.f26025a = newKeyguardLock;
                newKeyguardLock.disableKeyguard();
                CLog.m27611a(getClass(), "Lock: keyguard disabled...");
            } catch (SecurityException e) {
                CLog.m27609a(getClass(), e);
            }
        }
    }

    /* renamed from: b */
    public final void m28270b() {
        synchronized (this) {
            try {
                if (this.f26025a != null) {
                    CLog.m27611a(getClass(), "Lock: Re-enabling keyguard...");
                    this.f26025a.reenableKeyguard();
                    CLog.m27611a(getClass(), " keyguard enabled...");
                    this.f26025a = null;
                }
            } catch (Exception e) {
                CLog.m27609a(getClass(), e);
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
