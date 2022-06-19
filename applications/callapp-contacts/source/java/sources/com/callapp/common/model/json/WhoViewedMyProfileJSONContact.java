package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/WhoViewedMyProfileJSONContact.class */
public class WhoViewedMyProfileJSONContact extends JSONContact {
    private static final long serialVersionUID = 3797837706828718011L;
    private int count;
    private int entryPoint;
    private long lastSeen;
    private String name;
    private String phone;
    private int type;

    public int getCount() {
        return this.count;
    }

    public int getEntryPoint() {
        return this.entryPoint;
    }

    public long getLastSeen() {
        return this.lastSeen;
    }

    @Override // com.callapp.common.model.json.JSONContact
    public String getName() {
        return this.name;
    }

    public String getPhone() {
        return this.phone;
    }

    @Override // com.callapp.common.model.json.JSONContact
    public int getType() {
        return this.type;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setEntryPoint(int i) {
        this.entryPoint = i;
    }

    public void setLastSeen(long j) {
        this.lastSeen = j;
    }

    @Override // com.callapp.common.model.json.JSONContact
    public void setName(String str) {
        this.name = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    @Override // com.callapp.common.model.json.JSONContact
    public void setType(int i) {
        this.type = i;
    }
}
