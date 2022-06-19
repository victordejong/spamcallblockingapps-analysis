package com.callapp.contacts.manager;

import android.os.PowerManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ProximityManager.class */
public class ProximityManager implements ManagedLifecycle, CallStateListener {

    /* renamed from: a */
    public CallData f25761a;

    /* renamed from: b */
    private PowerManager.WakeLock f25762b;

    /* renamed from: c */
    private AudioModeChanged f25763c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ProximityManager$AudioModeChanged.class */
    public interface AudioModeChanged {
        /* renamed from: a */
        void mo28508a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0079, code lost:
        if (com.callapp.contacts.manager.phone.PhoneManager.get().getConnectingOrActiveCall() != null) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m28510a(com.callapp.contacts.model.call.CallData r8, java.lang.Boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.ProximityManager.m28510a(com.callapp.contacts.model.call.CallData, java.lang.Boolean, boolean):void");
    }

    public static ProximityManager get() {
        return Singletons.get().getProximityManager();
    }

    private boolean isProximitySensorModeEnabled() {
        return this.f25762b != null;
    }

    /* renamed from: a */
    public final void m28511a() {
        if (isProximitySensorModeEnabled()) {
            synchronized (this.f25762b) {
                if (this.f25762b.isHeld()) {
                    CLog.m27611a(getClass(), "releaseProximityLock: releasing...");
                    this.f25762b.release();
                } else {
                    CLog.m27611a(getClass(), "releaseProximityLock: lock already released.");
                }
            }
        }
    }

    /* renamed from: b */
    public final void m28509b() {
        CallData callData = this.f25761a;
        if (callData != null) {
            m28510a(callData, Boolean.valueOf(PhoneManager.get().isHeadsetConnected()), PhoneManager.get().isUsingBT());
            AudioModeChanged audioModeChanged = this.f25763c;
            if (audioModeChanged == null) {
                return;
            }
            audioModeChanged.mo28508a();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        m28511a();
        PhoneStateManager.get().removeListener(this);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        try {
            this.f25762b = ((PowerManager) Singletons.m28493a("power")).newWakeLock(32, "ProximityManager.proximityWakeLock");
        } catch (Exception e) {
            CLog.m27610a(ProximityManager.class, "ignoring exception for newWakeLock: ", e);
            this.f25762b = null;
        }
        PhoneStateManager.get().addListener(this);
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (callData != null) {
            this.f25761a = callData;
            if ((PhoneManager.get().isDefaultPhoneApp() || !Prefs.f26315bm.get().booleanValue()) && !callData.getState().isTalking() && !callData.getState().isPostCall()) {
                return;
            }
            m28509b();
        }
    }

    public void setAudioModeChangedListener(AudioModeChanged audioModeChanged) {
        this.f25763c = audioModeChanged;
    }
}
