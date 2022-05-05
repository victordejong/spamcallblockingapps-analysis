package com.apptentive.android.sdk.network;

import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchQueueType;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequestManager.class */
public class HttpRequestManager {
    private List<HttpRequest> activeRequests;
    private Listener listener;
    private final DispatchQueue networkQueue;
    private HttpRequest.Injector requestInjector;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequestManager$Holder.class */
    private static class Holder {
        private static final HttpRequestManager INSTANCE = new HttpRequestManager(DispatchQueue.createBackgroundQueue("Apptentive Network Queue", DispatchQueueType.Concurrent));

        private Holder() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequestManager$Listener.class */
    public interface Listener {
        void onRequestFinish(HttpRequestManager httpRequestManager, HttpRequest httpRequest);

        void onRequestStart(HttpRequestManager httpRequestManager, HttpRequest httpRequest);
    }

    public HttpRequestManager(DispatchQueue dispatchQueue) {
        if (dispatchQueue != null) {
            this.networkQueue = dispatchQueue;
            this.activeRequests = new ArrayList();
            return;
        }
        throw new IllegalArgumentException("Network queue is null");
    }

    private void notifyRequestFinished(HttpRequest httpRequest) {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onRequestFinish(this, httpRequest);
        }
    }

    private void notifyRequestStarted(HttpRequest httpRequest) {
        Listener listener = this.listener;
        if (listener != null) {
            listener.onRequestStart(this, httpRequest);
        }
    }

    public static HttpRequestManager sharedManager() {
        return Holder.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchRequest(final HttpRequest httpRequest) {
        this.networkQueue.dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.network.HttpRequestManager.1
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                httpRequest.dispatchSync(HttpRequestManager.this.networkQueue);
            }
        });
    }

    public HttpRequest findRequest(String str) {
        HttpRequest next;
        synchronized (this) {
            Iterator<HttpRequest> it = this.activeRequests.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!StringUtils.equal(next.getTag(), str));
            return next;
        }
    }

    void registerRequest(HttpRequest httpRequest) {
        synchronized (this) {
            Assert.assertTrue(this == httpRequest.requestManager);
            this.activeRequests.add(httpRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpRequest startRequest(HttpRequest httpRequest) {
        synchronized (this) {
            if (httpRequest != null) {
                if (this.requestInjector != null) {
                    httpRequest.setInjector(this.requestInjector);
                }
                registerRequest(httpRequest);
                dispatchRequest(httpRequest);
                notifyRequestStarted(httpRequest);
            } else {
                throw new IllegalArgumentException("Request is null");
            }
        }
        return httpRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unregisterRequest(HttpRequest httpRequest) {
        synchronized (this) {
            Assert.assertTrue(this == httpRequest.requestManager);
            boolean remove = this.activeRequests.remove(httpRequest);
            Assert.assertTrue(remove, "Attempted to unregister missing request: %s", httpRequest);
            if (remove) {
                notifyRequestFinished(httpRequest);
            }
        }
    }
}
