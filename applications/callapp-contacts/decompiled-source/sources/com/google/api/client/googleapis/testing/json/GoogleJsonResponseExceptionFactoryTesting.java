package com.google.api.client.googleapis.testing.json;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.q;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.testing.a.a;
import com.google.api.client.testing.a.b;
import com.google.api.client.testing.a.d;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/json/GoogleJsonResponseExceptionFactoryTesting.class */
public final class GoogleJsonResponseExceptionFactoryTesting {
    public static GoogleJsonResponseException newMock(JsonFactory jsonFactory, int i, String str) throws IOException {
        q a2 = new b.a().a(new d().a(i).a(str)).a().createRequestFactory().a(a.f31835a);
        a2.a(false);
        return GoogleJsonResponseException.from(jsonFactory, a2.o());
    }
}
