package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Label.class */
public final class Label extends GenericJson {
    @AbstractC15247q
    private LabelColor color;
    @AbstractC15247q

    /* renamed from: id */
    private String f55492id;
    @AbstractC15247q
    private String labelListVisibility;
    @AbstractC15247q
    private String messageListVisibility;
    @AbstractC15247q
    private Integer messagesTotal;
    @AbstractC15247q
    private Integer messagesUnread;
    @AbstractC15247q
    private String name;
    @AbstractC15247q
    private Integer threadsTotal;
    @AbstractC15247q
    private Integer threadsUnread;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Label clone() {
        return (Label) super.clone();
    }

    public final LabelColor getColor() {
        return this.color;
    }

    public final String getId() {
        return this.f55492id;
    }

    public final String getLabelListVisibility() {
        return this.labelListVisibility;
    }

    public final String getMessageListVisibility() {
        return this.messageListVisibility;
    }

    public final Integer getMessagesTotal() {
        return this.messagesTotal;
    }

    public final Integer getMessagesUnread() {
        return this.messagesUnread;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getThreadsTotal() {
        return this.threadsTotal;
    }

    public final Integer getThreadsUnread() {
        return this.threadsUnread;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Label set(String str, Object obj) {
        return (Label) super.set(str, obj);
    }

    public final Label setColor(LabelColor labelColor) {
        this.color = labelColor;
        return this;
    }

    public final Label setId(String str) {
        this.f55492id = str;
        return this;
    }

    public final Label setLabelListVisibility(String str) {
        this.labelListVisibility = str;
        return this;
    }

    public final Label setMessageListVisibility(String str) {
        this.messageListVisibility = str;
        return this;
    }

    public final Label setMessagesTotal(Integer num) {
        this.messagesTotal = num;
        return this;
    }

    public final Label setMessagesUnread(Integer num) {
        this.messagesUnread = num;
        return this;
    }

    public final Label setName(String str) {
        this.name = str;
        return this;
    }

    public final Label setThreadsTotal(Integer num) {
        this.threadsTotal = num;
        return this;
    }

    public final Label setThreadsUnread(Integer num) {
        this.threadsUnread = num;
        return this;
    }

    public final Label setType(String str) {
        this.type = str;
        return this;
    }
}
