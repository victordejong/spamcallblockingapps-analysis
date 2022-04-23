package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.loader.device.DeviceIMAddress;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ChatData.class */
public abstract class ChatData implements Serializable {
    public static final int NO_PRESENCE_DATA_AVAILABLE = -1;
    private static final int PRESENCE_DATA_NOT_FETCHED_YET = -2;
    private static final long serialVersionUID = -2144972220671203470L;
    private final JSONIMaddress account;
    private int presence;

    public ChatData(JSONIMaddress jSONIMaddress) {
        this.presence = -2;
        this.account = jSONIMaddress;
        if (jSONIMaddress instanceof DeviceIMAddress) {
            this.presence = ((DeviceIMAddress) jSONIMaddress).getPresence();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ChatData)) {
            return false;
        }
        ChatData chatData = (ChatData) obj;
        JSONIMaddress jSONIMaddress = this.account;
        return jSONIMaddress == null ? chatData.account == null : jSONIMaddress.equals(chatData.account);
    }

    protected abstract int fetchPresence();

    public String getIMAddress() {
        return this.account.getIMAddress();
    }

    public int getPresence() {
        return getPresence(true);
    }

    public int getPresence(boolean z) {
        int i = this.presence;
        if (i != -2) {
            return i;
        }
        if (!z) {
            return -1;
        }
        synchronized (this) {
            if (this.presence == -2) {
                this.presence = fetchPresence();
            }
        }
        return this.presence;
    }

    public int hashCode() {
        JSONIMaddress jSONIMaddress = this.account;
        return (jSONIMaddress == null ? 0 : jSONIMaddress.hashCode()) + 31;
    }
}
