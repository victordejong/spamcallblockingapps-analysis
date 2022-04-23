package com.callapp.contacts.manager.keyguard;

import android.app.KeyguardManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/keyguard/LockscreenKeyguardManager.class */
public class LockscreenKeyguardManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private KeyguardManager.KeyguardLock f15085a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return ((KeyguardManager) Singletons.a("keyguard")).inKeyguardRestrictedInputMode();
    }

    public static LockscreenKeyguardManager get() {
        return Singletons.get().getLockscreenKeyguardManager();
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.f15085a == null) {
                    KeyguardManager keyguardManager = (KeyguardManager) Singletons.a("keyguard");
                    CLog.a(getClass(), "Lock: Disabling keyguard...");
                    KeyguardManager.KeyguardLock newKeyguardLock = keyguardManager.newKeyguardLock(Constants.APP_NAME);
                    this.f15085a = newKeyguardLock;
                    newKeyguardLock.disableKeyguard();
                    CLog.a(getClass(), "Lock: keyguard disabled...");
                }
            } catch (SecurityException e) {
                CLog.a(getClass(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        synchronized (this) {
            try {
                if (this.f15085a != null) {
                    CLog.a(getClass(), "Lock: Re-enabling keyguard...");
                    this.f15085a.reenableKeyguard();
                    CLog.a(getClass(), " keyguard enabled...");
                    this.f15085a = null;
                }
            } catch (Exception e) {
                CLog.a(getClass(), e);
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
