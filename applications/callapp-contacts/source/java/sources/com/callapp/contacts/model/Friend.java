package com.callapp.contacts.model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/Friend.class */
public class Friend {
    public final String bio;
    public final String fullName;

    /* renamed from: id */
    public final String f26734id;

    public Friend(String str, String str2, String str3) {
        this.f26734id = str;
        this.fullName = str2;
        this.bio = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Friend)) {
            return false;
        }
        Friend friend = (Friend) obj;
        String str = this.f26734id;
        return str == null ? friend.f26734id == null : str.equals(friend.f26734id);
    }

    public int hashCode() {
        String str = this.f26734id;
        return (str == null ? 0 : str.hashCode()) + 31;
    }
}
