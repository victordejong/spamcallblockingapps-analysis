package com.callapp.contacts.framework.dao.column;

import android.database.Cursor;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/IntColumn.class */
public class IntColumn extends Column<Integer> {
    public IntColumn(String str) {
        super(str);
    }

    public IntColumn(String str, boolean z) {
        super(str, z);
    }

    @Override // com.callapp.contacts.framework.dao.column.Column
    /* renamed from: a */
    public final /* synthetic */ Integer mo28987a(Cursor cursor, int i) {
        Integer valueOf = Integer.valueOf(cursor.getInt(i));
        Integer num = valueOf;
        if (valueOf == null) {
            num = valueOf;
            if (!this.f25181b) {
                num = 0;
            }
        }
        return num;
    }
}
