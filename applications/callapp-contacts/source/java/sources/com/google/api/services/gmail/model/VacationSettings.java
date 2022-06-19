package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/VacationSettings.class */
public final class VacationSettings extends GenericJson {
    @AbstractC15247q
    private Boolean enableAutoReply;
    @AbstractC15247q
    @JsonString
    private Long endTime;
    @AbstractC15247q
    private String responseBodyHtml;
    @AbstractC15247q
    private String responseBodyPlainText;
    @AbstractC15247q
    private String responseSubject;
    @AbstractC15247q
    private Boolean restrictToContacts;
    @AbstractC15247q
    private Boolean restrictToDomain;
    @AbstractC15247q
    @JsonString
    private Long startTime;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VacationSettings clone() {
        return (VacationSettings) super.clone();
    }

    public final Boolean getEnableAutoReply() {
        return this.enableAutoReply;
    }

    public final Long getEndTime() {
        return this.endTime;
    }

    public final String getResponseBodyHtml() {
        return this.responseBodyHtml;
    }

    public final String getResponseBodyPlainText() {
        return this.responseBodyPlainText;
    }

    public final String getResponseSubject() {
        return this.responseSubject;
    }

    public final Boolean getRestrictToContacts() {
        return this.restrictToContacts;
    }

    public final Boolean getRestrictToDomain() {
        return this.restrictToDomain;
    }

    public final Long getStartTime() {
        return this.startTime;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VacationSettings set(String str, Object obj) {
        return (VacationSettings) super.set(str, obj);
    }

    public final VacationSettings setEnableAutoReply(Boolean bool) {
        this.enableAutoReply = bool;
        return this;
    }

    public final VacationSettings setEndTime(Long l) {
        this.endTime = l;
        return this;
    }

    public final VacationSettings setResponseBodyHtml(String str) {
        this.responseBodyHtml = str;
        return this;
    }

    public final VacationSettings setResponseBodyPlainText(String str) {
        this.responseBodyPlainText = str;
        return this;
    }

    public final VacationSettings setResponseSubject(String str) {
        this.responseSubject = str;
        return this;
    }

    public final VacationSettings setRestrictToContacts(Boolean bool) {
        this.restrictToContacts = bool;
        return this;
    }

    public final VacationSettings setRestrictToDomain(Boolean bool) {
        this.restrictToDomain = bool;
        return this;
    }

    public final VacationSettings setStartTime(Long l) {
        this.startTime = l;
        return this;
    }
}
