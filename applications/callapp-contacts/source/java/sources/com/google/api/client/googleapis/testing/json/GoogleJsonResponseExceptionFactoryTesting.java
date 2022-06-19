package com.google.api.client.googleapis.testing.json;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.C15340q;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.testing.p384a.C15352a;
import com.google.api.client.testing.p384a.C15353b;
import com.google.api.client.testing.p384a.C15356d;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/testing/json/GoogleJsonResponseExceptionFactoryTesting.class */
public final class GoogleJsonResponseExceptionFactoryTesting {
    public static GoogleJsonResponseException newMock(JsonFactory jsonFactory, int i, String str) throws IOException {
        C15340q m9028a = new C15353b.C15354a().m8995a(new C15356d().m8994a(i).m8993a(str)).m8996a().createRequestFactory().m9028a(C15352a.f55404a);
        m9028a.m9045a(false);
        return GoogleJsonResponseException.from(jsonFactory, m9028a.m9031o());
    }
}
