package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ImapSettings.class */
public final class ImapSettings extends GenericJson {
    @AbstractC15247q
    private Boolean autoExpunge;
    @AbstractC15247q
    private Boolean enabled;
    @AbstractC15247q
    private String expungeBehavior;
    @AbstractC15247q
    private Integer maxFolderSize;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ImapSettings clone() {
        return (ImapSettings) super.clone();
    }

    public final Boolean getAutoExpunge() {
        return this.autoExpunge;
    }

    public final Boolean getEnabled() {
        return this.enabled;
    }

    public final String getExpungeBehavior() {
        return this.expungeBehavior;
    }

    public final Integer getMaxFolderSize() {
        return this.maxFolderSize;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ImapSettings set(String str, Object obj) {
        return (ImapSettings) super.set(str, obj);
    }

    public final ImapSettings setAutoExpunge(Boolean bool) {
        this.autoExpunge = bool;
        return this;
    }

    public final ImapSettings setEnabled(Boolean bool) {
        this.enabled = bool;
        return this;
    }

    public final ImapSettings setExpungeBehavior(String str) {
        this.expungeBehavior = str;
        return this;
    }

    public final ImapSettings setMaxFolderSize(Integer num) {
        this.maxFolderSize = num;
        return this;
    }
}
