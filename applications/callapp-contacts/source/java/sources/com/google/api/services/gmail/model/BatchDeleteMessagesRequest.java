package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/BatchDeleteMessagesRequest.class */
public final class BatchDeleteMessagesRequest extends GenericJson {
    @AbstractC15247q
    private List<String> ids;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final BatchDeleteMessagesRequest clone() {
        return (BatchDeleteMessagesRequest) super.clone();
    }

    public final List<String> getIds() {
        return this.ids;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final BatchDeleteMessagesRequest set(String str, Object obj) {
        return (BatchDeleteMessagesRequest) super.set(str, obj);
    }

    public final BatchDeleteMessagesRequest setIds(List<String> list) {
        this.ids = list;
        return this;
    }
}
