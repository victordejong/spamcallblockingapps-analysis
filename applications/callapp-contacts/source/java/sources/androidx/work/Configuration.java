package androidx.work;

import android.os.Build;
import androidx.work.impl.C3002a;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:androidx/work/Configuration.class */
public final class Configuration {
    public static final int MIN_SCHEDULER_LIMIT = 20;
    final String mDefaultProcessName;
    final AbstractC2997h mExceptionHandler;
    final Executor mExecutor;
    final AbstractC3143j mInputMergerFactory;
    private final boolean mIsUsingDefaultTaskExecutor;
    final int mLoggingLevel;
    final int mMaxJobSchedulerId;
    final int mMaxSchedulerLimit;
    final int mMinJobSchedulerId;
    final AbstractC3161r mRunnableScheduler;
    final Executor mTaskExecutor;
    final AbstractC3168w mWorkerFactory;

    /* loaded from: classes-dex2jar.jar:androidx/work/Configuration$Builder.class */
    public static final class Builder {
        String mDefaultProcessName;
        AbstractC2997h mExceptionHandler;
        Executor mExecutor;
        AbstractC3143j mInputMergerFactory;
        int mLoggingLevel;
        int mMaxJobSchedulerId;
        int mMaxSchedulerLimit;
        int mMinJobSchedulerId;
        AbstractC3161r mRunnableScheduler;
        Executor mTaskExecutor;
        AbstractC3168w mWorkerFactory;

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

        public final Builder setInitializationExceptionHandler(AbstractC2997h abstractC2997h) {
            this.mExceptionHandler = abstractC2997h;
            return this;
        }

        public final Builder setInputMergerFactory(AbstractC3143j abstractC3143j) {
            this.mInputMergerFactory = abstractC3143j;
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

        public final Builder setRunnableScheduler(AbstractC3161r abstractC3161r) {
            this.mRunnableScheduler = abstractC3161r;
            return this;
        }

        public final Builder setTaskExecutor(Executor executor) {
            this.mTaskExecutor = executor;
            return this;
        }

        public final Builder setWorkerFactory(AbstractC3168w abstractC3168w) {
            this.mWorkerFactory = abstractC3168w;
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
            this.mWorkerFactory = AbstractC3168w.m39253a();
        } else {
            this.mWorkerFactory = builder.mWorkerFactory;
        }
        if (builder.mInputMergerFactory == null) {
            this.mInputMergerFactory = new AbstractC3143j() { // from class: androidx.work.j.1
            };
        } else {
            this.mInputMergerFactory = builder.mInputMergerFactory;
        }
        if (builder.mRunnableScheduler == null) {
            this.mRunnableScheduler = new C3002a();
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

    public final AbstractC2997h getExceptionHandler() {
        return this.mExceptionHandler;
    }

    public final Executor getExecutor() {
        return this.mExecutor;
    }

    public final AbstractC3143j getInputMergerFactory() {
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

    public final AbstractC3161r getRunnableScheduler() {
        return this.mRunnableScheduler;
    }

    public final Executor getTaskExecutor() {
        return this.mTaskExecutor;
    }

    public final AbstractC3168w getWorkerFactory() {
        return this.mWorkerFactory;
    }

    public final boolean isUsingDefaultTaskExecutor() {
        return this.mIsUsingDefaultTaskExecutor;
    }
}
