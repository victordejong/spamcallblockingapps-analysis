package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.googleapis.batch.json.JsonBatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonErrorContainer;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.googleapis.services.b;
import com.google.api.client.http.n;
import com.google.api.client.http.t;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest.class */
public abstract class AbstractGoogleJsonClientRequest<T> extends b<T> {
    private final Object jsonContent;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractGoogleJsonClientRequest(com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient r8, java.lang.String r9, java.lang.String r10, java.lang.Object r11, java.lang.Class<T> r12) {
        /*
            r7 = this;
            r0 = 0
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0012
            r0 = r14
            r13 = r0
        L_0x000f:
            goto L_0x0043
        L_0x0012:
            com.google.api.client.http.json.JsonHttpContent r0 = new com.google.api.client.http.json.JsonHttpContent
            r1 = r0
            r2 = r8
            com.google.api.client.json.JsonFactory r2 = r2.getJsonFactory()
            r3 = r11
            r1.<init>(r2, r3)
            r14 = r0
            r0 = r8
            com.google.api.client.json.JsonObjectParser r0 = r0.getObjectParser()
            java.util.Set r0 = r0.getWrapperKeys()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0033
            goto L_0x0037
        L_0x0033:
            java.lang.String r0 = "data"
            r13 = r0
        L_0x0037:
            r0 = r14
            r1 = r13
            com.google.api.client.http.json.JsonHttpContent r0 = r0.setWrapperKey(r1)
            r13 = r0
            goto L_0x000f
        L_0x0043:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r13
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            r1 = r11
            r0.jsonContent = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest.<init>(com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient, java.lang.String, java.lang.String, java.lang.Object, java.lang.Class):void");
    }

    @Override // com.google.api.client.googleapis.services.b
    public AbstractGoogleJsonClient getAbstractGoogleClient() {
        return (AbstractGoogleJsonClient) super.getAbstractGoogleClient();
    }

    public Object getJsonContent() {
        return this.jsonContent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.api.client.googleapis.services.b
    public GoogleJsonResponseException newExceptionOnError(t tVar) {
        return GoogleJsonResponseException.from(getAbstractGoogleClient().getJsonFactory(), tVar);
    }

    public final void queue(BatchRequest batchRequest, JsonBatchCallback<T> jsonBatchCallback) throws IOException {
        super.queue(batchRequest, GoogleJsonErrorContainer.class, jsonBatchCallback);
    }

    @Override // com.google.api.client.googleapis.services.b, com.google.api.client.a.n
    public AbstractGoogleJsonClientRequest<T> set(String str, Object obj) {
        return (AbstractGoogleJsonClientRequest) super.set(str, obj);
    }

    @Override // com.google.api.client.googleapis.services.b
    public AbstractGoogleJsonClientRequest<T> setDisableGZipContent(boolean z) {
        return (AbstractGoogleJsonClientRequest) super.setDisableGZipContent(z);
    }

    @Override // com.google.api.client.googleapis.services.b
    public AbstractGoogleJsonClientRequest<T> setRequestHeaders(n nVar) {
        return (AbstractGoogleJsonClientRequest) super.setRequestHeaders(nVar);
    }
}
