package com.google.api.client.googleapis.json;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonErrorContainer.class */
public class GoogleJsonErrorContainer extends GenericJson {
    @q
    private GoogleJsonError error;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public GoogleJsonErrorContainer clone() {
        return (GoogleJsonErrorContainer) super.clone();
    }

    public final GoogleJsonError getError() {
        return this.error;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public GoogleJsonErrorContainer set(String str, Object obj) {
        return (GoogleJsonErrorContainer) super.set(str, obj);
    }

    public final void setError(GoogleJsonError googleJsonError) {
        this.error = googleJsonError;
    }
}
