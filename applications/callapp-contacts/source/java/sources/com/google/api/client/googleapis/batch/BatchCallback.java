package com.google.api.client.googleapis.batch;

import com.google.api.client.http.C15335n;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchCallback.class */
public interface BatchCallback<T, E> {
    void onFailure(E e, C15335n c15335n) throws IOException;

    void onSuccess(T t, C15335n c15335n) throws IOException;
}
