package com.google.api.client.googleapis.batch;

import com.google.api.client.http.n;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchCallback.class */
public interface BatchCallback<T, E> {
    void onFailure(E e, n nVar) throws IOException;

    void onSuccess(T t, n nVar) throws IOException;
}
