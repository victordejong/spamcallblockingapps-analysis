package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ModifyThreadRequest.class */
public final class ModifyThreadRequest extends GenericJson {
    @AbstractC15247q
    private List<String> addLabelIds;
    @AbstractC15247q
    private List<String> removeLabelIds;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ModifyThreadRequest clone() {
        return (ModifyThreadRequest) super.clone();
    }

    public final List<String> getAddLabelIds() {
        return this.addLabelIds;
    }

    public final List<String> getRemoveLabelIds() {
        return this.removeLabelIds;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ModifyThreadRequest set(String str, Object obj) {
        return (ModifyThreadRequest) super.set(str, obj);
    }

    public final ModifyThreadRequest setAddLabelIds(List<String> list) {
        this.addLabelIds = list;
        return this;
    }

    public final ModifyThreadRequest setRemoveLabelIds(List<String> list) {
        this.removeLabelIds = list;
        return this;
    }
}
