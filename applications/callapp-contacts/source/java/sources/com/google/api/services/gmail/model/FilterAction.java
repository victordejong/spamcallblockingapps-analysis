package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/FilterAction.class */
public final class FilterAction extends GenericJson {
    @AbstractC15247q
    private List<String> addLabelIds;
    @AbstractC15247q
    private String forward;
    @AbstractC15247q
    private List<String> removeLabelIds;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final FilterAction clone() {
        return (FilterAction) super.clone();
    }

    public final List<String> getAddLabelIds() {
        return this.addLabelIds;
    }

    public final String getForward() {
        return this.forward;
    }

    public final List<String> getRemoveLabelIds() {
        return this.removeLabelIds;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final FilterAction set(String str, Object obj) {
        return (FilterAction) super.set(str, obj);
    }

    public final FilterAction setAddLabelIds(List<String> list) {
        this.addLabelIds = list;
        return this;
    }

    public final FilterAction setForward(String str) {
        this.forward = str;
        return this;
    }

    public final FilterAction setRemoveLabelIds(List<String> list) {
        this.removeLabelIds = list;
        return this;
    }
}
