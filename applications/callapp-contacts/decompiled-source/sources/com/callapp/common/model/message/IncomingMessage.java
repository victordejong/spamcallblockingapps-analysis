package com.callapp.common.model.message;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/message/IncomingMessage.class */
public class IncomingMessage implements Serializable {
    private static final long serialVersionUID = -4436114370427921037L;
    public String body;
    public String from;
    public String id;
    public Date sent;
    public String type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.id.equals(((IncomingMessage) obj).id);
    }

    public String getBody() {
        return this.body;
    }

    public String getFrom() {
        return this.from;
    }

    public String getId() {
        return this.id;
    }

    public Date getSent() {
        return this.sent;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public IncomingMessage setBody(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.body = str2;
        return this;
    }

    public IncomingMessage setFrom(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.from = str2;
        return this;
    }

    public IncomingMessage setId(String str) {
        this.id = str;
        return this;
    }

    public IncomingMessage setSent(Date date) {
        this.sent = date;
        return this;
    }

    public IncomingMessage setType(String str) {
        this.type = str;
        return this;
    }
}
