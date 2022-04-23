package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/LabelColor.class */
public final class LabelColor extends GenericJson {
    @q
    private String backgroundColor;
    @q
    private String textColor;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LabelColor clone() {
        return (LabelColor) super.clone();
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
