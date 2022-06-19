package com.callapp.contacts.model.objectbox;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m4298d2 = {"Lcom/callapp/contacts/model/objectbox/TYPE;", "", "value", "", "view", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getValue", "()I", "getView", "()Ljava/lang/String;", "toString", "MYVIEW", "VIEWME", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/TYPE.class */
public enum TYPE {
    MYVIEW(0, "myView"),
    VIEWME(1, "viewMe");
    
    private final int value;
    private final String view;

    TYPE(int i, String str) {
        this.value = i;
        this.view = str;
    }

    public final int getValue() {
        return this.value;
    }

    public final String getView() {
        return this.view;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Type{view='" + this.view + "', value=" + this.value + '}';
    }
}
