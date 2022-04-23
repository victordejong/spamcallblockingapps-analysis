package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Label.class */
public final class Label extends GenericJson {
    @q
    private LabelColor color;
    @q
    private String id;
    @q
    private String labelListVisibility;
    @q
    private String messageListVisibility;
    @q
    private Integer messagesTotal;
    @q
    private Integer messagesUnread;
    @q
    private String name;
    @q
    private Integer threadsTotal;
    @q
    private Integer threadsUnread;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Label clone() {
        return (Label) super.clone();
    }

    public final LabelColor getColor() {
        return this.color;
    }

    public final String getId() {
        return this.id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Label set(String str, Object obj) {
        return (Label) super.set(str, obj);
    }

    public final Label setColor(LabelColor labelColor) {
        this.color = labelColor;
        return this;
    }

    public final Label setId(String str) {
        this.id = str;
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
