package com.callapp.contacts.framework.dao.column;

import android.database.Cursor;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/DateColumn.class */
public class DateColumn extends Column<Date> {
    public DateColumn(String str) {
        super(str);
    }

    public DateColumn(String str, boolean z) {
        super(str, z);
    }

    @Override // com.callapp.contacts.framework.dao.column.Column
    /* renamed from: a */
    public final /* synthetic */ Date mo28987a(Cursor cursor, int i) {
        long j = cursor.getLong(i);
        if (j != 0 || !this.f25181b) {
            return new Date(j);
        }
        return null;
    }

    @Override // com.callapp.contacts.framework.dao.column.Column
    /* renamed from: a */
    public final /* synthetic */ String mo28988a(Date date) {
        return Long.toString(date.getTime());
    }
}
