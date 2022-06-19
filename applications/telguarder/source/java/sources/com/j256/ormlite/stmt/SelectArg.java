package com.j256.ormlite.stmt;

import com.j256.ormlite.field.SqlType;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/SelectArg.class */
public class SelectArg extends BaseArgumentHolder {
    private boolean hasBeenSet = false;
    private Object value = null;

    public SelectArg() {
    }

    public SelectArg(SqlType sqlType) {
        super(sqlType);
    }

    public SelectArg(SqlType sqlType, Object obj) {
        super(sqlType);
        setValue(obj);
    }

    public SelectArg(Object obj) {
        setValue(obj);
    }

    public SelectArg(String str, Object obj) {
        super(str);
        setValue(obj);
    }

    @Override // com.j256.ormlite.stmt.BaseArgumentHolder
    protected Object getValue() {
        return this.value;
    }

    @Override // com.j256.ormlite.stmt.BaseArgumentHolder
    protected boolean isValueSet() {
        return this.hasBeenSet;
    }

    @Override // com.j256.ormlite.stmt.BaseArgumentHolder, com.j256.ormlite.stmt.ArgumentHolder
    public void setValue(Object obj) {
        this.hasBeenSet = true;
        this.value = obj;
    }
}
