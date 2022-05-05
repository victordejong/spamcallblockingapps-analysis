package com.mixpanel.android.mpmetrics;

import android.os.Process;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/ExceptionHandler.class */
public class ExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final int SLEEP_TIMEOUT_MS = 400;
    private static final String TAG = "MixpanelAPI.Exception";
    private static ExceptionHandler sInstance;
    private final Thread.UncaughtExceptionHandler mDefaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();

    public ExceptionHandler() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static void init() {
        if (sInstance == null) {
            synchronized (ExceptionHandler.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new ExceptionHandler();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void killProcessAndExit() {
        try {
            Thread.sleep(400L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        MixpanelAPI.allInstances(new MixpanelAPI.InstanceProcessor() { // from class: com.mixpanel.android.mpmetrics.ExceptionHandler.1
            @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.InstanceProcessor
            public void process(MixpanelAPI mixpanelAPI) {
                mixpanelAPI.flushNoDecideCheck();
            }
        });
        if (this.mDefaultExceptionHandler != null) {
            this.mDefaultExceptionHandler.uncaughtException(thread, th);
        } else {
            killProcessAndExit();
        }
    }
}
