package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.IMultiInstanceInvalidationService;
import androidx.room.InvalidationTracker;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationClient.class */
public class MultiInstanceInvalidationClient {
    public final Context mAppContext;
    public int mClientId;
    public final Executor mExecutor;
    public final InvalidationTracker mInvalidationTracker;
    public final String mName;
    public final InvalidationTracker.Observer mObserver;
    @Nullable
    public IMultiInstanceInvalidationService mService;
    public final IMultiInstanceInvalidationCallback mCallback = new IMultiInstanceInvalidationCallback.Stub() { // from class: androidx.room.MultiInstanceInvalidationClient.1
        @Override // androidx.room.IMultiInstanceInvalidationCallback
        public void onInvalidation(final String[] strArr) {
            MultiInstanceInvalidationClient.this.mExecutor.execute(new Runnable() { // from class: androidx.room.MultiInstanceInvalidationClient.1.1
                @Override // java.lang.Runnable
                public void run() {
                    MultiInstanceInvalidationClient.this.mInvalidationTracker.notifyObserversByTableNames(strArr);
                }
            });
        }
    };
    public final AtomicBoolean mStopped = new AtomicBoolean(false);
    public final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MultiInstanceInvalidationClient.this.mService = IMultiInstanceInvalidationService.Stub.asInterface(iBinder);
            MultiInstanceInvalidationClient multiInstanceInvalidationClient = MultiInstanceInvalidationClient.this;
            multiInstanceInvalidationClient.mExecutor.execute(multiInstanceInvalidationClient.mSetUpRunnable);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MultiInstanceInvalidationClient multiInstanceInvalidationClient = MultiInstanceInvalidationClient.this;
            multiInstanceInvalidationClient.mExecutor.execute(multiInstanceInvalidationClient.mRemoveObserverRunnable);
            MultiInstanceInvalidationClient.this.mService = null;
        }
    };
    public final Runnable mSetUpRunnable = new Runnable() { // from class: androidx.room.MultiInstanceInvalidationClient.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = MultiInstanceInvalidationClient.this.mService;
                if (iMultiInstanceInvalidationService != null) {
                    MultiInstanceInvalidationClient.this.mClientId = iMultiInstanceInvalidationService.registerCallback(MultiInstanceInvalidationClient.this.mCallback, MultiInstanceInvalidationClient.this.mName);
                    MultiInstanceInvalidationClient.this.mInvalidationTracker.addObserver(MultiInstanceInvalidationClient.this.mObserver);
                }
            } catch (RemoteException e) {
            }
        }
    };
    public final Runnable mRemoveObserverRunnable = new Runnable() { // from class: androidx.room.MultiInstanceInvalidationClient.4
        @Override // java.lang.Runnable
        public void run() {
            MultiInstanceInvalidationClient multiInstanceInvalidationClient = MultiInstanceInvalidationClient.this;
            multiInstanceInvalidationClient.mInvalidationTracker.removeObserver(multiInstanceInvalidationClient.mObserver);
        }
    };
    public final Runnable mTearDownRunnable = new Runnable() { // from class: androidx.room.MultiInstanceInvalidationClient.5
        @Override // java.lang.Runnable
        public void run() {
            MultiInstanceInvalidationClient multiInstanceInvalidationClient = MultiInstanceInvalidationClient.this;
            multiInstanceInvalidationClient.mInvalidationTracker.removeObserver(multiInstanceInvalidationClient.mObserver);
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = MultiInstanceInvalidationClient.this.mService;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.unregisterCallback(MultiInstanceInvalidationClient.this.mCallback, MultiInstanceInvalidationClient.this.mClientId);
                }
            } catch (RemoteException e) {
            }
            MultiInstanceInvalidationClient multiInstanceInvalidationClient2 = MultiInstanceInvalidationClient.this;
            multiInstanceInvalidationClient2.mAppContext.unbindService(multiInstanceInvalidationClient2.mServiceConnection);
        }
    };

    public MultiInstanceInvalidationClient(Context context, String str, InvalidationTracker invalidationTracker, Executor executor) {
        this.mAppContext = context.getApplicationContext();
        this.mName = str;
        this.mInvalidationTracker = invalidationTracker;
        this.mExecutor = executor;
        this.mObserver = new InvalidationTracker.Observer((String[]) invalidationTracker.mTableIdLookup.keySet().toArray(new String[0])) { // from class: androidx.room.MultiInstanceInvalidationClient.6
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean isRemote() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(@NonNull Set<String> set) {
                if (!MultiInstanceInvalidationClient.this.mStopped.get()) {
                    try {
                        IMultiInstanceInvalidationService iMultiInstanceInvalidationService = MultiInstanceInvalidationClient.this.mService;
                        if (iMultiInstanceInvalidationService != null) {
                            iMultiInstanceInvalidationService.broadcastInvalidation(MultiInstanceInvalidationClient.this.mClientId, (String[]) set.toArray(new String[0]));
                        }
                    } catch (RemoteException e) {
                    }
                }
            }
        };
        this.mAppContext.bindService(new Intent(this.mAppContext, MultiInstanceInvalidationService.class), this.mServiceConnection, 1);
    }

    public void stop() {
        if (this.mStopped.compareAndSet(false, true)) {
            this.mExecutor.execute(this.mTearDownRunnable);
        }
    }
}
