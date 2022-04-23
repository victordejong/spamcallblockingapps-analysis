package com.google.api.services.gmail.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListLabelsResponse.class */
public final class ListLabelsResponse extends GenericJson {
    @q
    private List<Label> labels;

    static {
        j.a(Label.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListLabelsResponse clone() {
        return (ListLabelsResponse) super.clone();
    }

    public final List<Label> getLabels() {
        return this.labels;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListLabelsResponse set(String str, Object obj) {
        return (ListLabelsResponse) super.set(str, obj);
    }

    public final ListLabelsResponse setLabels(List<Label> list) {
        this.labels = list;
        return this;
    }
}
