package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractC15298b;
import com.google.api.client.googleapis.services.C15300c;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer.class */
public class CommonGoogleJsonClientRequestInitializer extends C15300c {
    public CommonGoogleJsonClientRequestInitializer() {
    }

    public CommonGoogleJsonClientRequestInitializer(String str) {
        super(str);
    }

    public CommonGoogleJsonClientRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    @Override // com.google.api.client.googleapis.services.C15300c, com.google.api.client.googleapis.services.AbstractC15301d
    public final void initialize(AbstractC15298b<?> abstractC15298b) throws IOException {
        super.initialize(abstractC15298b);
        initializeJsonRequest((AbstractGoogleJsonClientRequest) abstractC15298b);
    }

    public void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) throws IOException {
    }
}
