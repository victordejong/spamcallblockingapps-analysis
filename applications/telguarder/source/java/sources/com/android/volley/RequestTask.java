package com.android.volley;
/* loaded from: classes-dex2jar.jar:com/android/volley/RequestTask.class */
public abstract class RequestTask<T> implements Runnable {
    final Request<T> mRequest;

    public RequestTask(Request<T> request) {
        this.mRequest = request;
    }

    public int compareTo(RequestTask<?> requestTask) {
        return this.mRequest.compareTo((Request) requestTask.mRequest);
    }
}
