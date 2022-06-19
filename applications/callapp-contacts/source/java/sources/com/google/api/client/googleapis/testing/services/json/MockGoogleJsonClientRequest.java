package com.google.api.client.googleapis.testing.services.json;

import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.http.C15335n;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/services/json/MockGoogleJsonClientRequest.class */
public class MockGoogleJsonClientRequest<T> extends AbstractGoogleJsonClientRequest<T> {
    public MockGoogleJsonClientRequest(AbstractGoogleJsonClient abstractGoogleJsonClient, String str, String str2, Object obj, Class<T> cls) {
        super(abstractGoogleJsonClient, str, str2, obj, cls);
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b
    public MockGoogleJsonClient getAbstractGoogleClient() {
        return (MockGoogleJsonClient) super.getAbstractGoogleClient();
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b
    public MockGoogleJsonClientRequest<T> setDisableGZipContent(boolean z) {
        return (MockGoogleJsonClientRequest) super.setDisableGZipContent(z);
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractC15298b
    public MockGoogleJsonClientRequest<T> setRequestHeaders(C15335n c15335n) {
        return (MockGoogleJsonClientRequest) super.setRequestHeaders(c15335n);
    }
}
