package androidx.work;

import android.os.Build;
import androidx.work.impl.a;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:androidx/work/Configuration.class */
public final class Configuration {
    public static final int MIN_SCHEDULER_LIMIT = 20;
    final String mDefaultProcessName;
    final h mExceptionHandler;
    final Executor mExecutor;
    final j mInputMergerFactory;
    private final boolean mIsUsingDefaultTaskExecutor;
    final int mLoggingLevel;
    final int mMaxJobSchedulerId;
    final int mMaxSchedulerLimit;
    final int mMinJobSchedulerId;
    final r mRunnableScheduler;
    final Executor mTaskExecutor;
    final w mWorkerFactory;

    /* loaded from: classes-dex2jar.jar:androidx/work/Configuration$Builder.class */
    public static final class Builder {
        String mDefaultProcessName;
        h mExceptionHandler;
        Executor mExecutor;
        j mInputMergerFactory;
        int mLoggingLevel;
        int mMaxJobSchedulerId;
        int mMaxSchedulerLimit;
        int mMinJobSchedulerId;
        r mRunnableScheduler;
        Executor mTaskExecutor;
        w mWorkerFactory;

        public Builder() {
            this.mLoggingLevel = 4;
            this.mMinJobSchedulerId = 0;
            this.mMaxJobSchedulerId = Integer.MAX_VALUE;
            this.mMaxSchedulerLimit = 20;
        }

        public Builder(Configuration configuration) {
            this.mExecutor = configuration.mExecutor;
            this.mWorkerFactory = configuration.mWorkerFactory;
            this.mInputMergerFactory = configuration.mInputMergerFactory;
            this.mTaskExecutor = configuration.mTaskExecutor;
            this.mLoggingLevel = configuration.mLoggingLevel;
            this.mMinJobSchedulerId = configuration.mMinJobSchedulerId;
            this.mMaxJobSchedulerId = configuration.mMaxJobSchedulerId;
            this.mMaxSchedulerLimit = configuration.mMaxSchedulerLimit;
            this.mRunnableScheduler = configuration.mRunnableScheduler;
            this.mExceptionHandler = configuration.mExceptionHandler;
            this.mDefaultProcessName = configuration.mDefaultProcessName;
        }

        public final Configuration build() {
            return new Configuration(this);
        }

        public final Builder setDefaultProcessName(String str) {
            this.mDefaultProcessName = str;
            return this;
        }

        public final Builder setExecutor(Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        public final Builder setInitializationExceptionHandler(h hVar) {
            this.mExceptionHandler = hVar;
            return this;
        }

        public final Builder setInputMergerFactory(j jVar) {
            this.mInputMergerFactory = jVar;
            return this;
        }

        public final Builder setJobSchedulerJobIdRange(int i, int i2) {
            if (i2 - i >= 1000) {
                this.mMinJobSchedulerId = i;
                this.mMaxJobSchedulerId = i2;
                return this;
            }
            throw new IllegalArgumentException("WorkManager needs a range of at least 1000 job ids.");
        }

        public final Builder setMaxSchedulerLimit(int i) {
            if (i >= 20) {
                this.mMaxSchedulerLimit = Math.min(i, 50);
                return this;
            }
            throw new IllegalArgumentException("WorkManager needs to be able to schedule at least 20 jobs in JobScheduler.");
        }

        public final Builder setMinimumLoggingLevel(int i) {
            this.mLoggingLevel = i;
            return this;
        }

        public final Builder setRunnableScheduler(r rVar) {
            this.mRunnableScheduler = rVar;
            return this;
        }

        public final Builder setTaskExecutor(Executor executor) {
            this.mTaskExecutor = executor;
            return this;
        }

        public final Builder setWorkerFactory(w wVar) {
            this.mWorkerFactory = wVar;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/Configuration$Provider.class */
    public interface Provider {
        Configuration getWorkManagerConfiguration();
    }

    Configuration(Builder builder) {
        if (builder.mExecutor == null) {
            this.mExecutor = createDefaultExecutor();
        } else {
            this.mExecutor = builder.mExecutor;
        }
        if (builder.mTaskExecutor == null) {
            this.mIsUsingDefaultTaskExecutor = true;
            this.mTaskExecutor = createDefaultExecutor();
        } else {
            this.mIsUsingDefaultTaskExecutor = false;
            this.mTaskExecutor = builder.mTaskExecutor;
        }
        if (builder.mWorkerFactory == null) {
            this.mWorkerFactory = w.a();
        } else {
            this.mWorkerFactory = builder.mWorkerFactory;
        }
        if (builder.mInputMergerFactory == null) {
            this.mInputMergerFactory = new j() { // from class: androidx.work.j.1
            };
        } else {
            this.mInputMergerFactory = builder.mInputMergerFactory;
        }
        if (builder.mRunnableScheduler == null) {
            this.mRunnableScheduler = new a();
        } else {
            this.mRunnableScheduler = builder.mRunnableScheduler;
        }
        this.mLoggingLevel = builder.mLoggingLevel;
        this.mMinJobSchedulerId = builder.mMinJobSchedulerId;
        this.mMaxJobSchedulerId = builder.mMaxJobSchedulerId;
        this.mMaxSchedulerLimit = builder.mMaxSchedulerLimit;
        this.mExceptionHandler = builder.mExceptionHandler;
        this.mDefaultProcessName = builder.mDefaultProcessName;
    }

    private Executor createDefaultExecutor() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    public final String getDefaultProcessName() {
        return this.mDefaultProcessName;
    }

    public final h getExceptionHandler() {
        return this.mExceptionHandler;
    }

    public final Executor getExecutor() {
        return this.mExecutor;
    }

    public final j getInputMergerFactory() {
        return this.mInputMergerFactory;
    }

    public final int getMaxJobSchedulerId() {
        return this.mMaxJobSchedulerId;
    }

    public final int getMaxSchedulerLimit() {
        return Build.VERSION.SDK_INT == 23 ? this.mMaxSchedulerLimit / 2 : this.mMaxSchedulerLimit;
    }

    public final int getMinJobSchedulerId() {
        return this.mMinJobSchedulerId;
    }

    public final int getMinimumLoggingLevel() {
        return this.mLoggingLevel;
    }

    public final r getRunnableScheduler() {
        return this.mRunnableScheduler;
    }

    public final Executor getTaskExecutor() {
        return this.mTaskExecutor;
    }

    public final w getWorkerFactory() {
        return this.mWorkerFactory;
    }

    public final boolean isUsingDefaultTaskExecutor() {
        return this.mIsUsingDefaultTaskExecutor;
    }
}
