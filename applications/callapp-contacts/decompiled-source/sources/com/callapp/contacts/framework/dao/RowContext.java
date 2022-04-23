package com.callapp.contacts.framework.dao;

import android.database.Cursor;
import com.callapp.contacts.framework.dao.column.Column;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/RowContext.class */
public class RowContext {

    /* renamed from: a  reason: collision with root package name */
    public Cursor f14395a;

    /* renamed from: b  reason: collision with root package name */
    boolean f14396b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Integer> f14397c;

    private int f(String str) {
        if (this.f14397c == null) {
            this.f14397c = new HashMap();
        }
        Integer num = this.f14397c.get(str);
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(this.f14395a.getColumnIndex(str));
            this.f14397c.put(str, num2);
        }
        return num2.intValue();
    }

    public final <T> T a(Column<T> column) {
        return column.a(this.f14395a, f(column.f14402a));
    }

    public final String a(String str) {
        return this.f14395a.getString(f(str));
    }

    public final boolean b(String str) {
        return this.f14395a.getInt(f(str)) == 1;
    }

    public final long c(String str) {
        return this.f14395a.getLong(f(str));
    }

    public final int d(String str) {
        return this.f14395a.getInt(f(str));
    }

    public final Date e(String str) {
        return new Date(c(str));
    }
}
