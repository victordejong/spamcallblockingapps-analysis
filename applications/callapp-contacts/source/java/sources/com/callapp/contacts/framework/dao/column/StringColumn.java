package com.callapp.contacts.framework.dao.column;

import android.database.Cursor;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/StringColumn.class */
public class StringColumn extends Column<String> {
    public StringColumn(String str) {
        super(str);
    }

    public StringColumn(String str, boolean z) {
        super(str, z);
    }

    @Override // com.callapp.contacts.framework.dao.column.Column
    /* renamed from: a */
    public final /* synthetic */ String mo28987a(Cursor cursor, int i) {
        String string = cursor.getString(i);
        String str = string;
        if (string == null) {
            str = string;
            if (!this.f25181b) {
                str = "";
            }
        }
        return str;
    }
}
