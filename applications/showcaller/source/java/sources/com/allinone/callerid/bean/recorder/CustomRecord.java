package com.allinone.callerid.bean.recorder;

import com.allinone.callerid.bean.ShortCut;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "CustomRecord")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/recorder/CustomRecord.class */
public class CustomRecord {
    public static final int TYPEBLACK = 1;
    public static final int TYPEWHITE = 0;
    @Column(name = "contactId")
    private String contactId;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8136id;
    private boolean isSelect;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = "phone")
    private String phone;
    @Column(name = "type")
    private int type;

    public String getContactId() {
        return this.contactId;
    }

    public String getName() {
        return this.name;
    }

    public String getPhone() {
        return this.phone;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setContactId(String str) {
        this.contactId = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    public void setType(int i) {
        this.type = i;
    }
}
