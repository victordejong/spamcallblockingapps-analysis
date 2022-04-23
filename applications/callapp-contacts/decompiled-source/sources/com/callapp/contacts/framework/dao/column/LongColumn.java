package com.callapp.contacts.framework.dao.column;

import android.database.Cursor;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/LongColumn.class */
public class LongColumn extends Column<Long> {
    public LongColumn(String str) {
        super(str);
    }

    public LongColumn(String str, boolean z) {
        super(str, z);
    }

    @Override // com.callapp.contacts.framework.dao.column.Column
    public final /* synthetic */ Long a(Cursor cursor, int i) {
        Long valueOf = Long.valueOf(cursor.getLong(i));
        Long l = valueOf;
        if (valueOf == null) {
            l = valueOf;
            if (!this.f14403b) {
                l = 0L;
            }
        }
        return l;
    }
}
