package com.google.api.client.googleapis.notifications.json;

import com.google.api.client.googleapis.notifications.d;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/json/JsonNotificationCallback.class */
public abstract class JsonNotificationCallback<T> extends d<T> {
    private static final long serialVersionUID = 1;

    protected abstract JsonFactory getJsonFactory() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.api.client.googleapis.notifications.d
    public final JsonObjectParser getObjectParser() throws IOException {
        return new JsonObjectParser(getJsonFactory());
    }
}
