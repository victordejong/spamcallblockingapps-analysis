package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.b;
import com.google.api.client.googleapis.services.c;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer.class */
public class CommonGoogleJsonClientRequestInitializer extends c {
    public CommonGoogleJsonClientRequestInitializer() {
    }

    public CommonGoogleJsonClientRequestInitializer(String str) {
        super(str);
    }

    public CommonGoogleJsonClientRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    @Override // com.google.api.client.googleapis.services.c, com.google.api.client.googleapis.services.d
    public final void initialize(b<?> bVar) throws IOException {
        super.initialize(bVar);
        initializeJsonRequest((AbstractGoogleJsonClientRequest) bVar);
    }

    public void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) throws IOException {
    }
}
