package com.google.api.client.googleapis.json;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/json/GoogleJsonErrorContainer.class */
public class GoogleJsonErrorContainer extends C8666b {
    @AbstractC8720o
    private GoogleJsonError error;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleJsonErrorContainer clone() {
        return (GoogleJsonErrorContainer) super.clone();
    }

    public final GoogleJsonError getError() {
        return this.error;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public GoogleJsonErrorContainer set(String str, Object obj) {
        return (GoogleJsonErrorContainer) super.set(str, obj);
    }

    public final void setError(GoogleJsonError googleJsonError) {
        this.error = googleJsonError;
    }
}
