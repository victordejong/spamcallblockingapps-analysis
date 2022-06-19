package com.google.api.client.googleapis.notifications.json;

import com.google.api.client.googleapis.notifications.AbstractC15293d;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/json/JsonNotificationCallback.class */
public abstract class JsonNotificationCallback<T> extends AbstractC15293d<T> {
    private static final long serialVersionUID = 1;

    protected abstract JsonFactory getJsonFactory() throws IOException;

    @Override // com.google.api.client.googleapis.notifications.AbstractC15293d
    public final JsonObjectParser getObjectParser() throws IOException {
        return new JsonObjectParser(getJsonFactory());
    }
}
