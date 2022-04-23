package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONEmail;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/GmailEmailData.class */
public class GmailEmailData extends CacheableData {
    private static final long serialVersionUID = 5939192506184607913L;
    private String body;
    private JSONEmail email;
    private String fullName;
    private long internalDate;
    private String snippet;
    private String subject;
    private String threadId;

    public GmailEmailData() {
    }

    public GmailEmailData(String str, JSONEmail jSONEmail, String str2, String str3, String str4, long j) {
        this.fullName = str;
        this.email = jSONEmail;
        this.subject = str2;
        this.threadId = str3;
        this.snippet = str4;
        this.internalDate = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GmailEmailData)) {
            return false;
        }
        GmailEmailData gmailEmailData = (GmailEmailData) obj;
        JSONEmail jSONEmail = this.email;
        if (jSONEmail == null) {
            if (gmailEmailData.email != null) {
                return false;
            }
        } else if (!jSONEmail.equals(gmailEmailData.email)) {
            return false;
        }
        String str = this.fullName;
        if (str == null) {
            if (gmailEmailData.fullName != null) {
                return false;
            }
        } else if (!str.equals(gmailEmailData.fullName)) {
            return false;
        }
        String str2 = this.snippet;
        if (str2 == null) {
            if (gmailEmailData.snippet != null) {
                return false;
            }
        } else if (!str2.equals(gmailEmailData.snippet)) {
            return false;
        }
        String str3 = this.subject;
        if (str3 == null) {
            if (gmailEmailData.subject != null) {
                return false;
            }
        } else if (!str3.equals(gmailEmailData.subject)) {
            return false;
        }
        String str4 = this.threadId;
        if (str4 == null) {
            if (gmailEmailData.threadId != null) {
                return false;
            }
        } else if (!str4.equals(gmailEmailData.threadId)) {
            return false;
        }
        String str5 = this.body;
        return str5 == null ? gmailEmailData.body == null : str5.equals(gmailEmailData.body);
    }

    public String getBody() {
        return this.body;
    }

    public JSONEmail getEmail() {
        return this.email;
    }

    public String getFullName() {
        return this.fullName;
    }

    public long getInternalDate() {
        return this.internalDate;
    }

    public String getSnippet() {
        return this.snippet;
    }

    public String getSubject() {
        return this.subject;
    }

    public String getThreadId() {
        return this.threadId;
    }

    public int hashCode() {
        JSONEmail jSONEmail = this.email;
        int i = 0;
        int hashCode = jSONEmail == null ? 0 : jSONEmail.hashCode();
        String str = this.fullName;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.snippet;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.subject;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.threadId;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.body;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return ((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setEmail(JSONEmail jSONEmail) {
        this.email = jSONEmail;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public void setInternalDate(long j) {
        this.internalDate = j;
    }

    public void setSnippet(String str) {
        this.snippet = str;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setThreadId(String str) {
        this.threadId = str;
    }

    public String toString() {
        return "GmailEmailData [fullName=" + this.fullName + ", email=" + this.email + ", subject=" + this.subject + ", threadId=" + this.threadId + ", snippet=" + this.snippet + ", body=" + this.body + "]";
    }
}
