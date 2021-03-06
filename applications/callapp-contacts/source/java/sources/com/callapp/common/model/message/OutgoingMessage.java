package com.callapp.common.model.message;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/message/OutgoingMessage.class */
public class OutgoingMessage implements Serializable {
    private static final long serialVersionUID = -887329328119125796L;
    public String body;
    public String from;

    /* renamed from: id */
    public String f19135id;

    /* renamed from: to */
    public String f19136to;
    public String token;
    public String type;

    public String getBody() {
        String str = this.body;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public String getFrom() {
        return this.from;
    }

    public String getId() {
        return this.f19135id;
    }

    public String getTo() {
        return this.f19136to;
    }

    public String getToken() {
        return this.token;
    }

    public String getType() {
        return this.type;
    }

    public OutgoingMessage setBody(String str) {
        this.body = str;
        return this;
    }

    public OutgoingMessage setFrom(String str) {
        this.from = str;
        return this;
    }

    public OutgoingMessage setId(String str) {
        this.f19135id = str;
        return this;
    }

    public OutgoingMessage setTo(String str) {
        this.f19136to = str;
        return this;
    }

    public OutgoingMessage setToken(String str) {
        this.token = str;
        return this;
    }

    public OutgoingMessage setType(String str) {
        this.type = str;
        return this;
    }
}
