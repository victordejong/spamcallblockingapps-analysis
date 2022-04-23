package com.callapp.contacts.model;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/SectionData.class */
public class SectionData extends BaseViewTypeData {
    private String text;
    private int textColor;

    public SectionData(String str) {
        this(str, 0);
    }

    public SectionData(String str, int i) {
        this.text = str;
        this.textColor = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.text.equals(((SectionData) obj).text);
    }

    public String getText() {
        return this.text;
    }

    public int getTextColor() {
        return this.textColor;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 8;
    }

    public int hashCode() {
        return this.text.hashCode();
    }
}
