package com.callapp.contacts.framework.dao;

import android.database.Cursor;
import com.callapp.contacts.framework.dao.column.Column;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/RowContext.class */
public class RowContext {

    /* renamed from: a */
    public Cursor f25168a;

    /* renamed from: b */
    boolean f25169b;

    /* renamed from: c */
    private Map<String, Integer> f25170c;

    /* renamed from: f */
    private int m28997f(String str) {
        if (this.f25170c == null) {
            this.f25170c = new HashMap();
        }
        Integer num = this.f25170c.get(str);
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(this.f25168a.getColumnIndex(str));
            this.f25170c.put(str, num2);
        }
        return num2.intValue();
    }

    /* renamed from: a */
    public final <T> T m29003a(Column<T> column) {
        return column.mo28987a(this.f25168a, m28997f(column.f25180a));
    }

    /* renamed from: a */
    public final String m29002a(String str) {
        return this.f25168a.getString(m28997f(str));
    }

    /* renamed from: b */
    public final boolean m29001b(String str) {
        return this.f25168a.getInt(m28997f(str)) == 1;
    }

    /* renamed from: c */
    public final long m29000c(String str) {
        return this.f25168a.getLong(m28997f(str));
    }

    /* renamed from: d */
    public final int m28999d(String str) {
        return this.f25168a.getInt(m28997f(str));
    }

    /* renamed from: e */
    public final Date m28998e(String str) {
        return new Date(m29000c(str));
    }
}
