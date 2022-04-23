package com.google.api.client.googleapis.batch.json;

import com.google.api.client.googleapis.batch.BatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.googleapis.json.GoogleJsonErrorContainer;
import com.google.api.client.http.n;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/json/JsonBatchCallback.class */
public abstract class JsonBatchCallback<T> implements BatchCallback<T, GoogleJsonErrorContainer> {
    public abstract void onFailure(GoogleJsonError googleJsonError, n nVar) throws IOException;

    public final void onFailure(GoogleJsonErrorContainer googleJsonErrorContainer, n nVar) throws IOException {
        onFailure(googleJsonErrorContainer.getError(), nVar);
    }
}
