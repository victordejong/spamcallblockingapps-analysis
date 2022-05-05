package com.apptentive.android.sdk.util;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/WeakReferenceHandler.class */
public class WeakReferenceHandler {

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/WeakReferenceHandler$WeakReferenceHandlerCallback.class */
    private static class WeakReferenceHandlerCallback implements Handler.Callback {
        private final WeakReference<Handler.Callback> callbackRef;

        public WeakReferenceHandlerCallback(Handler.Callback callback) {
            this.callbackRef = new WeakReference<>(callback);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            Handler.Callback callback = this.callbackRef.get();
            return callback != null ? callback.handleMessage(message) : true;
        }
    }

    private WeakReferenceHandler() {
    }

    public static Handler create(Handler.Callback callback) {
        return new Handler(new WeakReferenceHandlerCallback(callback));
    }
}
