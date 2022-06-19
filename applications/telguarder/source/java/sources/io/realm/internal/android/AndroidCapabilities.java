package io.realm.internal.android;

import android.os.Looper;
import io.realm.internal.Capabilities;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/android/AndroidCapabilities.class */
public class AndroidCapabilities implements Capabilities {
    public static boolean EMULATE_MAIN_THREAD = false;
    private final Looper looper = Looper.myLooper();
    private final boolean isIntentServiceThread = isIntentServiceThread();

    private boolean hasLooper() {
        return this.looper != null;
    }

    private static boolean isIntentServiceThread() {
        String name = Thread.currentThread().getName();
        return name != null && name.startsWith("IntentService[");
    }

    @Override // io.realm.internal.Capabilities
    public boolean canDeliverNotification() {
        return hasLooper() && !this.isIntentServiceThread;
    }

    @Override // io.realm.internal.Capabilities
    public void checkCanDeliverNotification(@Nullable String str) {
        String str2 = "";
        if (!hasLooper()) {
            if (str != null) {
                str2 = str + " Realm cannot be automatically updated on a thread without a looper.";
            }
            throw new IllegalStateException(str2);
        } else if (!this.isIntentServiceThread) {
        } else {
            if (str != null) {
                str2 = str + " Realm cannot be automatically updated on an IntentService thread.";
            }
            throw new IllegalStateException(str2);
        }
    }

    @Override // io.realm.internal.Capabilities
    public boolean isMainThread() {
        Looper looper = this.looper;
        return looper != null && (EMULATE_MAIN_THREAD || looper == Looper.getMainLooper());
    }
}
