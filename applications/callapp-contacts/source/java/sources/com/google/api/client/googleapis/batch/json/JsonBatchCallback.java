package com.google.api.client.googleapis.batch.json;

import com.google.api.client.googleapis.batch.BatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.googleapis.json.GoogleJsonErrorContainer;
import com.google.api.client.http.C15335n;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/json/JsonBatchCallback.class */
public abstract class JsonBatchCallback<T> implements BatchCallback<T, GoogleJsonErrorContainer> {
    public abstract void onFailure(GoogleJsonError googleJsonError, C15335n c15335n) throws IOException;

    public final void onFailure(GoogleJsonErrorContainer googleJsonErrorContainer, C15335n c15335n) throws IOException {
        onFailure(googleJsonErrorContainer.getError(), c15335n);
    }
}
