package com.facebook.stetho.inspector.console;

import com.facebook.stetho.inspector.helper.ChromePeerManager;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/console/ConsolePeerManager.class */
public class ConsolePeerManager extends ChromePeerManager {
    private static ConsolePeerManager sInstance;

    private ConsolePeerManager() {
    }

    @Nullable
    public static ConsolePeerManager getInstanceOrNull() {
        ConsolePeerManager consolePeerManager;
        synchronized (ConsolePeerManager.class) {
            try {
                consolePeerManager = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return consolePeerManager;
    }

    public static ConsolePeerManager getOrCreateInstance() {
        ConsolePeerManager consolePeerManager;
        synchronized (ConsolePeerManager.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ConsolePeerManager();
                }
                consolePeerManager = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return consolePeerManager;
    }
}
