package com.callapp.contacts.framework.dao.column;

import android.database.Cursor;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/column/Column.class */
public abstract class Column<T> {

    /* renamed from: a  reason: collision with root package name */
    public final String f14402a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f14403b;

    public Column(String str) {
        this.f14402a = str;
        this.f14403b = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Column(String str, boolean z) {
        this.f14402a = str;
        this.f14403b = z;
    }

    public abstract T a(Cursor cursor, int i);

    public String a(T t) {
        return t.toString();
    }
}
