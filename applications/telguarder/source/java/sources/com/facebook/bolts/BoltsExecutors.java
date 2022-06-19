package com.facebook.bolts;

import com.facebook.appevents.codeless.internal.Constants;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/BoltsExecutors.class */
final class BoltsExecutors {
    private static final BoltsExecutors INSTANCE = new BoltsExecutors();
    private final ExecutorService background;
    private final Executor immediate;
    private final ScheduledExecutorService scheduled;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/bolts/BoltsExecutors$ImmediateExecutor.class */
    public static class ImmediateExecutor implements Executor {
        private static final int MAX_DEPTH = 15;
        private ThreadLocal<Integer> executionDepth;

        private ImmediateExecutor() {
            this.executionDepth = new ThreadLocal<>();
        }

        private int decrementDepth() {
            Integer num = this.executionDepth.get();
            Integer num2 = num;
            if (num == null) {
                num2 = 0;
            }
            int intValue = num2.intValue() - 1;
            if (intValue == 0) {
                this.executionDepth.remove();
            } else {
                this.executionDepth.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        private int incrementDepth() {
            Integer num = this.executionDepth.get();
            Integer num2 = num;
            if (num == null) {
                num2 = 0;
            }
            int intValue = num2.intValue() + 1;
            this.executionDepth.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (incrementDepth() <= 15) {
                    runnable.run();
                } else {
                    BoltsExecutors.background().execute(runnable);
                }
            } finally {
                decrementDepth();
            }
        }
    }

    private BoltsExecutors() {
        this.background = !isAndroidRuntime() ? Executors.newCachedThreadPool() : AndroidExecutors.newCachedThreadPool();
        this.scheduled = Executors.newSingleThreadScheduledExecutor();
        this.immediate = new ImmediateExecutor();
    }

    public static ExecutorService background() {
        return INSTANCE.background;
    }

    public static Executor immediate() {
        return INSTANCE.immediate;
    }

    private static boolean isAndroidRuntime() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains(Constants.PLATFORM);
    }

    public static ScheduledExecutorService scheduled() {
        return INSTANCE.scheduled;
    }
}
