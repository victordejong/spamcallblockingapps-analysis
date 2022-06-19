package com.facebook.internal;

import android.content.Intent;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/AppCall.class */
public class AppCall {
    private static AppCall currentPendingCall;
    private UUID callId;
    private int requestCode;
    private Intent requestIntent;

    public AppCall(int i) {
        this(i, UUID.randomUUID());
    }

    public AppCall(int i, UUID uuid) {
        this.callId = uuid;
        this.requestCode = i;
    }

    public static AppCall finishPendingCall(UUID uuid, int i) {
        synchronized (AppCall.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(AppCall.class)) {
                    return null;
                }
                AppCall currentPendingCall2 = getCurrentPendingCall();
                if (currentPendingCall2 != null && currentPendingCall2.getCallId().equals(uuid) && currentPendingCall2.getRequestCode() == i) {
                    setCurrentPendingCall(null);
                    return currentPendingCall2;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static AppCall getCurrentPendingCall() {
        if (CrashShieldHandler.isObjectCrashing(AppCall.class)) {
            return null;
        }
        try {
            return currentPendingCall;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppCall.class);
            return null;
        }
    }

    private static boolean setCurrentPendingCall(AppCall appCall) {
        synchronized (AppCall.class) {
            try {
                boolean z = false;
                if (CrashShieldHandler.isObjectCrashing(AppCall.class)) {
                    return false;
                }
                AppCall currentPendingCall2 = getCurrentPendingCall();
                currentPendingCall = appCall;
                if (currentPendingCall2 != null) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public UUID getCallId() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.callId;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public int getRequestCode() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return this.requestCode;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    public Intent getRequestIntent() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.requestIntent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public boolean setPending() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return setCurrentPendingCall(this);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public void setRequestCode(int i) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.requestCode = i;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void setRequestIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.requestIntent = intent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
