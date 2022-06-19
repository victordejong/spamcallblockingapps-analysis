package org.xutils.p343db.table;

import android.text.TextUtils;
import java.util.Date;
import java.util.HashMap;
/* renamed from: org.xutils.db.table.DbModel */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/table/DbModel.class */
public final class DbModel {

    /* renamed from: a */
    private final HashMap<String, String> f40646a = new HashMap<>();

    public void add(String str, String str2) {
        this.f40646a.put(str, str2);
    }

    public boolean getBoolean(String str) {
        String str2 = this.f40646a.get(str);
        if (str2 != null) {
            return str2.length() == 1 ? "1".equals(str2) : Boolean.valueOf(str2).booleanValue();
        }
        return false;
    }

    public HashMap<String, String> getDataMap() {
        return this.f40646a;
    }

    public Date getDate(String str, long j) {
        return new Date(getLong(str, j));
    }

    public double getDouble(String str, double d) {
        String str2 = this.f40646a.get(str);
        if (TextUtils.isEmpty(str2)) {
            return d;
        }
        try {
            return Double.valueOf(str2).doubleValue();
        } catch (Throwable th) {
            return d;
        }
    }

    public float getFloat(String str, float f) {
        String str2 = this.f40646a.get(str);
        if (TextUtils.isEmpty(str2)) {
            return f;
        }
        try {
            return Float.valueOf(str2).floatValue();
        } catch (Throwable th) {
            return f;
        }
    }

    public int getInt(String str, int i) {
        String str2 = this.f40646a.get(str);
        if (TextUtils.isEmpty(str2)) {
            return i;
        }
        try {
            return Integer.valueOf(str2).intValue();
        } catch (Throwable th) {
            return i;
        }
    }

    public long getLong(String str, long j) {
        String str2 = this.f40646a.get(str);
        if (TextUtils.isEmpty(str2)) {
            return j;
        }
        try {
            return Long.valueOf(str2).longValue();
        } catch (Throwable th) {
            return j;
        }
    }

    public java.sql.Date getSqlDate(String str, long j) {
        return new java.sql.Date(getLong(str, j));
    }

    public String getString(String str) {
        return this.f40646a.get(str);
    }

    public boolean isEmpty(String str) {
        return TextUtils.isEmpty(this.f40646a.get(str));
    }
}
