package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/PopSettings.class */
public final class PopSettings extends GenericJson {
    @q
    private String accessWindow;
    @q
    private String disposition;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PopSettings clone() {
        return (PopSettings) super.clone();
    }

    public final String getAccessWindow() {
        return this.accessWindow;
    }

    public final String getDisposition() {
        return this.disposition;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PopSettings set(String str, Object obj) {
        return (PopSettings) super.set(str, obj);
    }

    public final PopSettings setAccessWindow(String str) {
        this.accessWindow = str;
        return this;
    }

    public final PopSettings setDisposition(String str) {
        this.disposition = str;
        return this;
    }
}
