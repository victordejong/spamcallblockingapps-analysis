package com.lidroid.xutils.p086db.table;

import com.lidroid.xutils.db.annotation.NoAutoIncrement;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
/* renamed from: com.lidroid.xutils.db.table.Id */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/Id.class */
public class C2728Id extends Column {
    private static final HashSet<String> AUTO_INCREMENT_TYPES;
    private static final HashSet<String> INTEGER_TYPES;
    private boolean isAutoIncrementChecked = false;
    private boolean isAutoIncrement = false;
    private String columnFieldClassName = this.columnField.getType().getName();

    static {
        HashSet<String> hashSet = new HashSet<>(2);
        INTEGER_TYPES = hashSet;
        HashSet<String> hashSet2 = new HashSet<>(4);
        AUTO_INCREMENT_TYPES = hashSet2;
        hashSet.add(Integer.TYPE.getName());
        hashSet.add(Integer.class.getName());
        hashSet2.addAll(hashSet);
        hashSet2.add(Long.TYPE.getName());
        hashSet2.add(Long.class.getName());
    }

    public C2728Id(Class<?> cls, Field field) {
        super(cls, field);
    }

    @Override // com.lidroid.xutils.p086db.table.Column
    public Object getColumnValue(Object obj) {
        Object columnValue = super.getColumnValue(obj);
        if (columnValue != null) {
            if (isAutoIncrement() && (columnValue.equals(0) || columnValue.equals(0L))) {
                return null;
            }
            return columnValue;
        }
        return null;
    }

    public boolean isAutoIncrement() {
        if (!this.isAutoIncrementChecked) {
            boolean z = true;
            this.isAutoIncrementChecked = true;
            if (this.columnField.getAnnotation(NoAutoIncrement.class) != null || !AUTO_INCREMENT_TYPES.contains(this.columnFieldClassName)) {
                z = false;
            }
            this.isAutoIncrement = z;
        }
        return this.isAutoIncrement;
    }

    public void setAutoIncrementId(Object obj, long j) {
        Object valueOf = Long.valueOf(j);
        if (INTEGER_TYPES.contains(this.columnFieldClassName)) {
            valueOf = Integer.valueOf((int) j);
        }
        Method method = this.setMethod;
        try {
            if (method != null) {
                method.invoke(obj, valueOf);
            } else {
                this.columnField.setAccessible(true);
                this.columnField.set(obj, valueOf);
            }
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
        }
    }
}
