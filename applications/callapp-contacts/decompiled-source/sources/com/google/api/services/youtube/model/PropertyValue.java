package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PropertyValue.class */
public final class PropertyValue extends GenericJson {
    @q
    private String property;
    @q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PropertyValue clone() {
        return (PropertyValue) super.clone();
    }

    public final String getProperty() {
        return this.property;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PropertyValue set(String str, Object obj) {
        return (PropertyValue) super.set(str, obj);
    }

    public final PropertyValue setProperty(String str) {
        this.property = str;
        return this;
    }

    public final PropertyValue setValue(String str) {
        this.value = str;
        return this;
    }
}
