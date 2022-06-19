package com.huawei.hms.common.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HuaweiApiManager.class */
public class HuaweiApiManager implements Handler.Callback {
    private static final String HANDLER_NAME = "HuaweiApiHandler";
    private static final Object LOCK_OBJECT = new Object();
    private static final int MSG_RECEIVE_SEND_REQ = 4;
    private static final String TAG = "HuaweiApiManager";
    private static HuaweiApiManager mInstance;
    private final Handler mHandler;
    private final AtomicInteger mSerial = new AtomicInteger(0);
    private final Map<ConnectionManagerKey<?>, ConnectionManager<?>> mConnectionCache = new ConcurrentHashMap(5, 0.75f, 1);

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper.class */
    public static class TaskApiCallbackWrapper {
        private final TaskApiCallWrapper mApiCallWrapper;
        private final AnyClient.CallBack mCallBack;

        public TaskApiCallbackWrapper(TaskApiCallWrapper taskApiCallWrapper, AnyClient.CallBack callBack) {
            this.mApiCallWrapper = taskApiCallWrapper;
            this.mCallBack = callBack;
        }

        public TaskApiCallWrapper getApiCallWrapper() {
            return this.mApiCallWrapper;
        }

        public AnyClient.CallBack getCallBack() {
            return this.mCallBack;
        }
    }

    private HuaweiApiManager(Context context, Looper looper, HuaweiApiAvailability huaweiApiAvailability) {
        this.mHandler = new Handler(looper, this);
    }

    private void checkRemoveConnectCache() {
        if (this.mConnectionCache.size() == 0) {
            return;
        }
        Iterator<Map.Entry<ConnectionManagerKey<?>, ConnectionManager<?>>> it = this.mConnectionCache.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<ConnectionManagerKey<?>, ConnectionManager<?>> next = it.next();
            WeakReference<Context> weakReference = next.getKey().getmContextRef();
            if (weakReference != null) {
                ConnectionManager<?> value = next.getValue();
                Context context = weakReference.get();
                if (context == null) {
                    HMSLog.m37198d(TAG, "checkRemoveConnectCache: context == null");
                    it.remove();
                    if (value != null) {
                        value.disconnect();
                    }
                } else if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
                    HMSLog.m37198d(TAG, "checkRemoveConnectCache: activity.isDestroyed");
                    it.remove();
                    if (value != null) {
                        value.disconnect();
                    }
                }
            }
        }
    }

    private void connectAndSendRequest(HandlerMessageWrapper handlerMessageWrapper) {
        try {
            HuaweiApi<?> huaweiApi = handlerMessageWrapper.mApi;
            checkRemoveConnectCache();
            ConnectionManager<?> connectionManager = this.mConnectionCache.get(huaweiApi.getConnectionManagerKey());
            ConnectionManager<?> connectionManager2 = connectionManager;
            if (connectionManager == null) {
                connectionManager2 = new ConnectionManager<>(this, huaweiApi);
                this.mConnectionCache.put(huaweiApi.getConnectionManagerKey(), connectionManager2);
            }
            connectionManager2.sendRequest(handlerMessageWrapper.mContentWrapper);
        } catch (NullPointerException e) {
            StringBuilder m8728C = C22128a.m8728C("<connectAndSendRequest> ");
            m8728C.append(Log.getStackTraceString(e));
            HMSLog.m37195e(TAG, m8728C.toString());
            notifyCpException(handlerMessageWrapper, e);
        }
    }

    public static HuaweiApiManager getInstance(Context context) {
        synchronized (LOCK_OBJECT) {
            if (mInstance == null) {
                HandlerThread handlerThread = new HandlerThread(TAG);
                handlerThread.start();
                mInstance = new HuaweiApiManager(context.getApplicationContext(), handlerThread.getLooper(), HuaweiApiAvailability.getInstance());
            }
        }
        return mInstance;
    }

    public void innerDisconnect(HuaweiApi<?> huaweiApi, TaskCompletionSource<Boolean> taskCompletionSource) {
        ConnectionManager<?> connectionManager = this.mConnectionCache.get(huaweiApi.getConnectionManagerKey());
        if (connectionManager == null) {
            taskCompletionSource.setResult(Boolean.FALSE);
        } else {
            taskCompletionSource.setResult(Boolean.valueOf(connectionManager.disconnect()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void notifyCpException(com.huawei.hms.common.internal.HandlerMessageWrapper r7, java.lang.NullPointerException r8) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.internal.HuaweiApiManager.notifyCpException(com.huawei.hms.common.internal.HandlerMessageWrapper, java.lang.NullPointerException):void");
    }

    public void disconnectService(final HuaweiApi<?> huaweiApi, final TaskCompletionSource<Boolean> taskCompletionSource) {
        if (Looper.myLooper() == this.mHandler.getLooper()) {
            innerDisconnect(huaweiApi, taskCompletionSource);
        } else {
            this.mHandler.post(new Runnable() { // from class: com.huawei.hms.common.internal.HuaweiApiManager.1
                @Override // java.lang.Runnable
                public void run() {
                    HuaweiApiManager.this.innerDisconnect(huaweiApi, taskCompletionSource);
                }
            });
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 4) {
            connectAndSendRequest((HandlerMessageWrapper) message.obj);
            return true;
        }
        StringBuilder m8728C = C22128a.m8728C("Unknown message id: ");
        m8728C.append(message.what);
        HMSLog.m37192w(TAG, m8728C.toString());
        return false;
    }

    public final <TOption extends Api.ApiOptions, TResult> void sendRequest(HuaweiApi<TOption> huaweiApi, TaskApiCall<? extends AnyClient, TResult> taskApiCall, TaskCompletionSource<TResult> taskCompletionSource) {
        TaskApiCallWrapper taskApiCallWrapper = new TaskApiCallWrapper(taskApiCall, taskCompletionSource);
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(4, new HandlerMessageWrapper(taskApiCallWrapper, this.mSerial.getAndIncrement(), huaweiApi)));
    }
}
