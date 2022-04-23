package com.callapp.contacts.loader.device;

import com.callapp.common.model.json.JSONIMaddress;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIMAddress.class */
public class DeviceIMAddress extends JSONIMaddress {
    private long dataRowId = -1;
    private int presence = -1;

    public long getDataRowId() {
        return this.dataRowId;
    }

    public int getPresence() {
        return this.presence;
    }

    public void setDataRowId(long j) {
        this.dataRowId = j;
    }

    public void setPresence(int i) {
        this.presence = i;
    }
}
