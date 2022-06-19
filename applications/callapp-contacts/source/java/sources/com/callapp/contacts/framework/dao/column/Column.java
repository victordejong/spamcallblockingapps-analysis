package com.callapp.contacts.framework.dao.column;

import android.database.Cursor;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/Column.class */
public abstract class Column<T> {

    /* renamed from: a */
    public final String f25180a;

    /* renamed from: b */
    public final boolean f25181b;

    public Column(String str) {
        this.f25180a = str;
        this.f25181b = false;
    }

    public Column(String str, boolean z) {
        this.f25180a = str;
        this.f25181b = z;
    }

    /* renamed from: a */
    public abstract T mo28987a(Cursor cursor, int i);

    /* renamed from: a */
    public String mo28988a(T t) {
        return t.toString();
    }
}
