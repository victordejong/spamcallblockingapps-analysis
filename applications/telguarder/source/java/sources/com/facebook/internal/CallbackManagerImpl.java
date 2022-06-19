package com.facebook.internal;

import android.content.Intent;
import com.facebook.CallbackManager;
import com.facebook.FacebookSdk;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/CallbackManagerImpl.class */
public final class CallbackManagerImpl implements CallbackManager {
    private static final String TAG = "CallbackManagerImpl";
    private static Map<Integer, Callback> staticCallbacks = new HashMap();
    private Map<Integer, Callback> callbacks = new HashMap();

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CallbackManagerImpl$Callback.class */
    public interface Callback {
        boolean onActivityResult(int i, Intent intent);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/CallbackManagerImpl$RequestCodeOffset.class */
    public enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        GamingFriendFinder(9),
        GamingGroupIntegration(10),
        Referral(11);
        
        private final int offset;

        RequestCodeOffset(int i) {
            this.offset = i;
        }

        public int toRequestCode() {
            return FacebookSdk.getCallbackRequestCodeOffset() + this.offset;
        }
    }

    private static Callback getStaticCallback(Integer num) {
        Callback callback;
        synchronized (CallbackManagerImpl.class) {
            try {
                callback = staticCallbacks.get(num);
            } catch (Throwable th) {
                throw th;
            }
        }
        return callback;
    }

    public static void registerStaticCallback(int i, Callback callback) {
        synchronized (CallbackManagerImpl.class) {
            try {
                Validate.notNull(callback, "callback");
                if (staticCallbacks.containsKey(Integer.valueOf(i))) {
                    return;
                }
                staticCallbacks.put(Integer.valueOf(i), callback);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean runStaticCallback(int i, int i2, Intent intent) {
        Callback staticCallback = getStaticCallback(Integer.valueOf(i));
        if (staticCallback != null) {
            return staticCallback.onActivityResult(i2, intent);
        }
        return false;
    }

    @Override // com.facebook.CallbackManager
    public boolean onActivityResult(int i, int i2, Intent intent) {
        Callback callback = this.callbacks.get(Integer.valueOf(i));
        return callback != null ? callback.onActivityResult(i2, intent) : runStaticCallback(i, i2, intent);
    }

    public void registerCallback(int i, Callback callback) {
        Validate.notNull(callback, "callback");
        this.callbacks.put(Integer.valueOf(i), callback);
    }

    public void unregisterCallback(int i) {
        this.callbacks.remove(Integer.valueOf(i));
    }
}
