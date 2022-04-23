package android.support.p001v4.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import com.privacystar.core.util.DateUtil;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: android.support.v4.app.JobIntentService */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService.class */
public abstract class JobIntentService extends Service {
    static final boolean DEBUG = false;
    static final String TAG = "JobIntentService";
    final ArrayList<CompatWorkItem> mCompatQueue;
    WorkEnqueuer mCompatWorkEnqueuer;
    CommandProcessor mCurProcessor;
    CompatJobEngine mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentName, WorkEnqueuer> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.JobIntentService$CommandProcessor */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$CommandProcessor.class */
    public final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        CommandProcessor() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                GenericWorkItem dequeueWork = JobIntentService.this.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                JobIntentService.this.onHandleWork(dequeueWork.getIntent());
                dequeueWork.complete();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onCancelled(Void r3) {
            JobIntentService.this.processorFinished();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r3) {
            JobIntentService.this.processorFinished();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.JobIntentService$CompatJobEngine */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$CompatJobEngine.class */
    public interface CompatJobEngine {
        IBinder compatGetBinder();

        GenericWorkItem dequeueWork();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.JobIntentService$CompatWorkEnqueuer */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$CompatWorkEnqueuer.class */
    public static final class CompatWorkEnqueuer extends WorkEnqueuer {
        private final Context mContext;
        private final PowerManager.WakeLock mLaunchWakeLock;
        boolean mLaunchingService;
        private final PowerManager.WakeLock mRunWakeLock;
        boolean mServiceProcessing;

        CompatWorkEnqueuer(Context context, ComponentName componentName) {
            super(context, componentName);
            this.mContext = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            this.mLaunchWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.mLaunchWakeLock.setReferenceCounted(false);
            this.mRunWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.mRunWakeLock.setReferenceCounted(false);
        }

        @Override // android.support.p001v4.app.JobIntentService.WorkEnqueuer
        void enqueueWork(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.mComponentName);
            if (this.mContext.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.mLaunchingService) {
                        this.mLaunchingService = true;
                        if (!this.mServiceProcessing) {
                            this.mLaunchWakeLock.acquire(DateUtil.MINUTE_IN_MILLIS);
                        }
                    }
                }
            }
        }

        @Override // android.support.p001v4.app.JobIntentService.WorkEnqueuer
        public void serviceProcessingFinished() {
            synchronized (this) {
                if (this.mServiceProcessing) {
                    if (this.mLaunchingService) {
                        this.mLaunchWakeLock.acquire(DateUtil.MINUTE_IN_MILLIS);
                    }
                    this.mServiceProcessing = false;
                    this.mRunWakeLock.release();
                }
            }
        }

        @Override // android.support.p001v4.app.JobIntentService.WorkEnqueuer
        public void serviceProcessingStarted() {
            synchronized (this) {
                if (!this.mServiceProcessing) {
                    this.mServiceProcessing = true;
                    this.mRunWakeLock.acquire(600000L);
                    this.mLaunchWakeLock.release();
                }
            }
        }

        @Override // android.support.p001v4.app.JobIntentService.WorkEnqueuer
        public void serviceStartReceived() {
            synchronized (this) {
                this.mLaunchingService = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.JobIntentService$CompatWorkItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$CompatWorkItem.class */
    public final class CompatWorkItem implements GenericWorkItem {
        final Intent mIntent;
        final int mStartId;

        CompatWorkItem(Intent intent, int i) {
            this.mIntent = intent;
            this.mStartId = i;
        }

        @Override // android.support.p001v4.app.JobIntentService.GenericWorkItem
        public void complete() {
            JobIntentService.this.stopSelf(this.mStartId);
        }

        @Override // android.support.p001v4.app.JobIntentService.GenericWorkItem
        public Intent getIntent() {
            return this.mIntent;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.JobIntentService$GenericWorkItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$GenericWorkItem.class */
    public interface GenericWorkItem {
        void complete();

        Intent getIntent();
    }

    @RequiresApi(26)
    /* renamed from: android.support.v4.app.JobIntentService$JobServiceEngineImpl */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$JobServiceEngineImpl.class */
    static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {
        static final boolean DEBUG = false;
        static final String TAG = "JobServiceEngineImpl";
        final Object mLock = new Object();
        JobParameters mParams;
        final JobIntentService mService;

        /* renamed from: android.support.v4.app.JobIntentService$JobServiceEngineImpl$WrapperWorkItem */
        /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem.class */
        final class WrapperWorkItem implements GenericWorkItem {
            final JobWorkItem mJobWork;

            WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.mJobWork = jobWorkItem;
            }

            @Override // android.support.p001v4.app.JobIntentService.GenericWorkItem
            public void complete() {
                synchronized (JobServiceEngineImpl.this.mLock) {
                    if (JobServiceEngineImpl.this.mParams != null) {
                        JobServiceEngineImpl.this.mParams.completeWork(this.mJobWork);
                    }
                }
            }

            @Override // android.support.p001v4.app.JobIntentService.GenericWorkItem
            public Intent getIntent() {
                return this.mJobWork.getIntent();
            }
        }

        JobServiceEngineImpl(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.mService = jobIntentService;
        }

        @Override // android.support.p001v4.app.JobIntentService.CompatJobEngine
        public IBinder compatGetBinder() {
            return getBinder();
        }

        @Override // android.support.p001v4.app.JobIntentService.CompatJobEngine
        public GenericWorkItem dequeueWork() {
            synchronized (this.mLock) {
                if (this.mParams == null) {
                    return null;
                }
                JobWorkItem dequeueWork = this.mParams.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.mService.getClassLoader());
                return new WrapperWorkItem(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.mParams = jobParameters;
            this.mService.ensureProcessorRunningLocked(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean doStopCurrentWork = this.mService.doStopCurrentWork();
            synchronized (this.mLock) {
                this.mParams = null;
            }
            return doStopCurrentWork;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* renamed from: android.support.v4.app.JobIntentService$JobWorkEnqueuer */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$JobWorkEnqueuer.class */
    public static final class JobWorkEnqueuer extends WorkEnqueuer {
        private final JobInfo mJobInfo;
        private final JobScheduler mJobScheduler;

        JobWorkEnqueuer(Context context, ComponentName componentName, int i) {
            super(context, componentName);
            ensureJobId(i);
            this.mJobInfo = new JobInfo.Builder(i, this.mComponentName).setOverrideDeadline(0L).build();
            this.mJobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // android.support.p001v4.app.JobIntentService.WorkEnqueuer
        void enqueueWork(Intent intent) {
            this.mJobScheduler.enqueue(this.mJobInfo, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.JobIntentService$WorkEnqueuer */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/JobIntentService$WorkEnqueuer.class */
    public static abstract class WorkEnqueuer {
        final ComponentName mComponentName;
        boolean mHasJobId;
        int mJobId;

        WorkEnqueuer(Context context, ComponentName componentName) {
            this.mComponentName = componentName;
        }

        abstract void enqueueWork(Intent intent);

        void ensureJobId(int i) {
            if (!this.mHasJobId) {
                this.mHasJobId = true;
                this.mJobId = i;
            } else if (this.mJobId != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.mJobId);
            }
        }

        public void serviceProcessingFinished() {
        }

        public void serviceProcessingStarted() {
        }

        public void serviceStartReceived() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mCompatQueue = null;
        } else {
            this.mCompatQueue = new ArrayList<>();
        }
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i, @NonNull Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (sLock) {
            WorkEnqueuer workEnqueuer = getWorkEnqueuer(context, componentName, true, i);
            workEnqueuer.ensureJobId(i);
            workEnqueuer.enqueueWork(intent);
        }
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class cls, int i, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i, intent);
    }

    static WorkEnqueuer getWorkEnqueuer(Context context, ComponentName componentName, boolean z, int i) {
        WorkEnqueuer workEnqueuer;
        WorkEnqueuer workEnqueuer2 = sClassWorkEnqueuer.get(componentName);
        WorkEnqueuer workEnqueuer3 = workEnqueuer2;
        if (workEnqueuer2 == null) {
            if (Build.VERSION.SDK_INT < 26) {
                workEnqueuer = new CompatWorkEnqueuer(context, componentName);
            } else if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            } else {
                workEnqueuer = new JobWorkEnqueuer(context, componentName, i);
            }
            sClassWorkEnqueuer.put(componentName, workEnqueuer);
            workEnqueuer3 = workEnqueuer;
        }
        return workEnqueuer3;
    }

    GenericWorkItem dequeueWork() {
        if (this.mJobImpl != null) {
            return this.mJobImpl.dequeueWork();
        }
        synchronized (this.mCompatQueue) {
            if (this.mCompatQueue.size() <= 0) {
                return null;
            }
            return this.mCompatQueue.remove(0);
        }
    }

    boolean doStopCurrentWork() {
        if (this.mCurProcessor != null) {
            this.mCurProcessor.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    void ensureProcessorRunningLocked(boolean z) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new CommandProcessor();
            if (this.mCompatWorkEnqueuer != null && z) {
                this.mCompatWorkEnqueuer.serviceProcessingStarted();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public boolean isStopped() {
        return this.mStopped;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        if (this.mJobImpl != null) {
            return this.mJobImpl.compatGetBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.mJobImpl = new JobServiceEngineImpl(this);
            this.mCompatWorkEnqueuer = null;
            return;
        }
        this.mJobImpl = null;
        this.mCompatWorkEnqueuer = getWorkEnqueuer(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.mCompatQueue != null) {
            synchronized (this.mCompatQueue) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.serviceProcessingFinished();
            }
        }
    }

    protected abstract void onHandleWork(@NonNull Intent intent);

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        if (this.mCompatQueue == null) {
            return 2;
        }
        this.mCompatWorkEnqueuer.serviceStartReceived();
        synchronized (this.mCompatQueue) {
            ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new CompatWorkItem(intent, i2));
            ensureProcessorRunningLocked(true);
        }
        return 3;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    void processorFinished() {
        if (this.mCompatQueue != null) {
            synchronized (this.mCompatQueue) {
                this.mCurProcessor = null;
                if (this.mCompatQueue != null && this.mCompatQueue.size() > 0) {
                    ensureProcessorRunningLocked(false);
                } else if (!this.mDestroyed) {
                    this.mCompatWorkEnqueuer.serviceProcessingFinished();
                }
            }
        }
    }

    public void setInterruptIfStopped(boolean z) {
        this.mInterruptIfStopped = z;
    }
}
