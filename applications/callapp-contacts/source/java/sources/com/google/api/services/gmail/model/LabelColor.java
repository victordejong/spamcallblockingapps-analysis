package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/LabelColor.class */
public final class LabelColor extends GenericJson {
    @AbstractC15247q
    private String backgroundColor;
    @AbstractC15247q
    private String textColor;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LabelColor clone() {
        return (LabelColor) super.clone();
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LabelColor set(String str, Object obj) {
        return (LabelColor) super.set(str, obj);
    }

    public final LabelColor setBackgroundColor(String str) {
        this.backgroundColor = str;
        return this;
    }

    public final LabelColor setTextColor(String str) {
        this.textColor = str;
        return this;
    }
}
