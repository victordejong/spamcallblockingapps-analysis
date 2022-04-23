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

    /* renamed from: a  reason: collision with root package name */
    public CallData f14920a;

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f14921b;

    /* renamed from: c  reason: collision with root package name */
    private AudioModeChanged f14922c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ProximityManager$AudioModeChanged.class */
    public interface AudioModeChanged {
        void a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0079, code lost:
        if (com.callapp.contacts.manager.phone.PhoneManager.get().getConnectingOrActiveCall() != null) goto L_0x007c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.callapp.contacts.model.call.CallData r8, java.lang.Boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.ProximityManager.a(com.callapp.contacts.model.call.CallData, java.lang.Boolean, boolean):void");
    }

    public static ProximityManager get() {
        return Singletons.get().getProximityManager();
    }

    private boolean isProximitySensorModeEnabled() {
        return this.f14921b != null;
    }

    public final void a() {
        if (isProximitySensorModeEnabled()) {
            synchronized (this.f14921b) {
                if (this.f14921b.isHeld()) {
                    CLog.a(getClass(), "releaseProximityLock: releasing...");
                    this.f14921b.release();
                } else {
                    CLog.a(getClass(), "releaseProximityLock: lock already released.");
                }
            }
        }
    }

    public final void b() {
        CallData callData = this.f14920a;
        if (callData != null) {
            a(callData, Boolean.valueOf(PhoneManager.get().isHeadsetConnected()), PhoneManager.get().isUsingBT());
            AudioModeChanged audioModeChanged = this.f14922c;
            if (audioModeChanged != null) {
                audioModeChanged.a();
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        a();
        PhoneStateManager.get().removeListener(this);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        try {
            this.f14921b = ((PowerManager) Singletons.a("power")).newWakeLock(32, "ProximityManager.proximityWakeLock");
        } catch (Exception e) {
            CLog.a(ProximityManager.class, "ignoring exception for newWakeLock: ", e);
            this.f14921b = null;
        }
        PhoneStateManager.get().addListener(this);
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (callData != null) {
            this.f14920a = callData;
            if ((!PhoneManager.get().isDefaultPhoneApp() && Prefs.bm.get().booleanValue()) || callData.getState().isTalking() || callData.getState().isPostCall()) {
                b();
            }
        }
    }

    public void setAudioModeChangedListener(AudioModeChanged audioModeChanged) {
        this.f14922c = audioModeChanged;
    }
}
