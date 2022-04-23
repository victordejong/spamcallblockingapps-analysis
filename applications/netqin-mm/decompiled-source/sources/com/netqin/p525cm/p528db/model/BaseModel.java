package com.netqin.p525cm.p528db.model;

import java.io.Serializable;
/* renamed from: com.netqin.cm.db.model.BaseModel */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/BaseModel.class */
public class BaseModel implements Serializable {
    public static final long serialVersionUID = 1;
    public long _id;
    public String address;
    public String name;
    public int read;
    public int type;

    public String getAddress() {
        return this.address;
    }

    public long getId() {
        return this._id;
    }

    public String getName() {
        return this.name;
    }

    public int getRead() {
        return this.read;
    }

    public int getType() {
        return this.type;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setId(long j) {
        this._id = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRead(int i) {
        this.read = i;
    }

    public void setType(int i) {
        this.type = i;
    }
}
