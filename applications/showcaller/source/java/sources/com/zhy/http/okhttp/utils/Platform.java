package com.zhy.http.okhttp.utils;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/utils/Platform.class */
public class Platform {
    private static final Platform PLATFORM = findPlatform();

    /* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/utils/Platform$Android.class */
    public static class Android extends Platform {

        /* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/utils/Platform$Android$MainThreadExecutor.class */
        static class MainThreadExecutor implements Executor {
            private final Handler handler = new Handler(Looper.getMainLooper());

            MainThreadExecutor() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.handler.post(runnable);
            }
        }

        Android() {
        }

        @Override // com.zhy.http.okhttp.utils.Platform
        public Executor defaultCallbackExecutor() {
            return new MainThreadExecutor();
        }
    }

    private static Platform findPlatform() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new Android();
            }
        } catch (ClassNotFoundException e) {
        }
        return new Platform();
    }

    public static Platform get() {
        Platform platform = PLATFORM;
        C9456L.m550e(platform.getClass().toString());
        return platform;
    }

    public Executor defaultCallbackExecutor() {
        return Executors.newCachedThreadPool();
    }

    public void execute(Runnable runnable) {
        defaultCallbackExecutor().execute(runnable);
    }
}
